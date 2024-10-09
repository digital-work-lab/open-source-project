from pathlib import Path
import re

# From top-level dir, run
# python .github/workflows/link_fix.py

# Regular expression to match markdown links that start with http and may or may not have a {...} block
markdown_link_pattern = re.compile(r'(\[([^\]]+)\]\((http[^\)]+)\))(\{[^}]*\})?')

def append_target_blank_to_links(file_path):
    # Read the content of the file
    content = file_path.read_text(encoding='utf-8')
    if "marp: true" in content[0:100]:
        return

    # Function to modify the markdown link and add target="_blank"
    def add_target_blank(match):
        link = match.group(1)  # Full markdown link [text](url)
        url = match.group(3)  # Extracted URL from the link
        existing_attrs = match.group(4)  # Existing {...} attributes block

        # Skip the modification if the link contains "img.shields.io" (indicating a badge)
        if 'img.shields.io' in url or url.endswith('.png') or url.endswith('.svg'):
            return match.group(0)  # Return the original match without modification

        # If there's already a {...} block, append target="_blank" if not present
        if existing_attrs:
            if 'target="_blank"' not in existing_attrs:
                # Add target="_blank" within the existing {...} block
                updated_attrs = existing_attrs.rstrip(' }') + ' target="_blank" }'
                return link + updated_attrs
            else:
                return link + existing_attrs
        else:
            # If no {...} block exists, add one with target="_blank"
            return link + '{: target="_blank"}'

    # Apply the function to all matches found in the file content
    updated_content = markdown_link_pattern.sub(add_target_blank, content)
    
    # Write back the updated content if changes were made
    if updated_content != content:
        file_path.write_text(updated_content, encoding='utf-8')
        print(f'Updated links in {file_path}')
    else:
        print(f'No changes needed in {file_path}')

def link_check():
    directory = Path.cwd()
    for file_path in directory.glob('**/*.md'):

        # Ignore first-level markdown files by checking the depth of the path
        if len(file_path.relative_to(directory).parts) == 1:
            continue

        append_target_blank_to_links(file_path)


# Regular expression to match internal .html links in markdown files
# This looks for markdown links [text](relative/path/file.html)
html_link_pattern = re.compile(r'\[([^\]]+)\]\(([^http][^\)]+\.html)\)')
baseurl_link_pattern = re.compile(r'\[([^\]]+)\]\(\{\{ ?site\.baseurl ?\}\}([^\)]+\.html)\)')


def check_html_links(file_path):
    base_dir = Path.cwd()
    # Read the content of the file
    content = file_path.read_text(encoding='utf-8')

    # Find all matches of regular .html links
    matches = html_link_pattern.findall(content)

    # List to store missing .md files
    missing_md_files = []

    # Check normal .html links (relative to current file)
    for match in matches:
        html_link = match[1]  # Extracted .html link from the markdown

        # Skip links that are part of the output directory
        if "output/" in html_link:
            continue

        # Replace .html with .md
        md_link = html_link.replace('.html', '.md')
        
        if "{{ site.baseurl }}/" in md_link:
            md_file_path = base_dir / Path(md_link.replace("{{ site.baseurl }}/", ""))
        else:
            # Create the corresponding .md file path relative to the current file
            md_file_path = file_path.parent / md_link

        # Check if the corresponding .md file exists
        if not md_file_path.exists():
            missing_md_files.append(md_file_path)

    return missing_md_files

def relative_link_check():
    directory = Path.cwd()  # Current directory
    all_missing_files = []
    broken_links_file = Path('broken_links.md')  # File to store broken links

    with broken_links_file.open('w', encoding='utf-8') as f:
        # Iterate over all markdown files recursively
        for file_path in directory.glob('**/*.md'):
            # Check for .html links and corresponding .md files
            missing_files = check_html_links(file_path)
            if missing_files:
                all_missing_files.extend(missing_files)
                f.write(f"## Missing .md files for links in `{file_path}`:\n")
                print(f"Missing .md files for links in {file_path}:")
                for missing in missing_files:
                    f.write(f"- `{missing}`\n")
                    print(f"  - {missing}")
                f.write("\n")  # Add a blank line for separation

    # Remove broken_links_file if it is empty
    if broken_links_file.exists() and broken_links_file.stat().st_size == 0:
        broken_links_file.unlink()

    if not all_missing_files:
        print("All .html links have corresponding .md files.")

if __name__ == "__main__":
    link_check()
    relative_link_check()