
**_Abstract_**


For information systems students aiming for software engineering and management roles, git familiarity is crucial as the premier collaborative version control system. 
However, effectively teaching git presents ongoing challenges. 
Existing materials often inundate students with detailed commands and options, including local setup and SSH authentication. 
Ideally, teaching should prioritize fundamental principles, empowering students to ask pertinent questions and find relevant commands. Hence, we propose a new approach to organizing git teaching materials, based on established pedagogical theory. 
This approach advocates starting with branches before delving into committing details and collaboration levels.

# Introduction

git and github have become indispensable tools in the tech industry, with git being the leading version control system and github serving as the largest hoster of git repositories. 
Following Microsoft's acquisition of github, it has solidified its position as the dominant developer platform. 
Major tech companies like Microsoft, Google, Meta, IBM, Netflix, and Airbnb rely on git and github for internal development and Open-Source projects.
Consequently, students preparing for jobs in tech must familiarize themselves with git and github, as these skills are increasingly recognized as essential by industry recruiters and are integral to various job roles in information systems. 
Developers use git for collaboration, code management, and rapid prototyping. 
DevOps managers employ git to streamline the software delivery process, while product owners.
IT managers utilize it for requirement specifications, tracking progress, and resolving issues. 
Overall, git and its associated tools have become crucial for effective code management, collaboration, and project coordination in both academic and professional settings.

Teaching materials for git typically cater to computer science students, but may not suit information systems (IS) students who require coding, organizing, coordination, and leadership skills. 
Existing resources often focus on technical aspects and assume familiarity with command-line operations, which can be challenging for IS students.
Consequently, there's a need for tailored materials and courses for teaching git to IS students. 
Current approaches often prioritize technical setup tasks like git init and SSH configuration, which may hinder students' understanding of git's foundational concepts like branching. 

Simplifying technical complexities and emphasizing core git principles could improve the learning experience for IS students.
The objective of our teaching tip is to teach git in a way that clearly conveys the fundamental model of git, and effectively prepares IS students to apply git in their future professions.
We problematize the predominant approach to teaching git, and propose an approach that is driven by pedagogical considerations instead of following presumed technical restrictions. 
To accomplish this, we reconsider previous efforts and envision a new approach, based on a different order of contents on the macro-level, along with pedagogical principles, practical strategies, and example teaching contents.
As the initial feedback from IS students indicates, the approach is perceived to offer a more pleasant learning experience, and lead to better learning outcomes.

In the following, we provide an overview of open course materials on git, and identify the specific challenges for teaching git to IS students.
We use this as a foundation to draft our pedagogical approach and propose practical strategies.

# Related Work

## Key Competence Areas in git

We distinguish three areas of git competences, including committing, branching, and collaborating remotely, which are essential for efficient software development and project management.
These competence areas can be found in most git teaching materials and are summarized in the following.

**Committing** is one of the key competences in git.
When working with git, developers can make changes to their code and then commit selected changes to the repository.
Commits are snapshots of the project's history, allowing developers to track and revert changes if needed.
In this area, it is particularly important to understand how to create atomic commits with descriptive commit messages, to facilitate a concise version history and effective collaboration [@HogbinWestby2015].

**Branching** is another competence area in git.
Branches allow developers to work on different features or bug fixes, without affecting the main codebase.
This is particularly useful when working on large projects with multiple developers.
Branching allows for parallel development and makes it easier to merge changes back into the main codebase once they are ready [@HogbinWestby2015].

**Collaborating** remotely is another git area, which is becoming particularly salient in globally distributed development teams.
With git, developers can work on projects from anywhere, as long as they have access to the repository.
Asynchronous remote work allows for greater flexibility and collaboration, as team members can contribute to a project regardless of their physical location.
git provides features like push and pull, which allow developers to synchronize their local changes with remote repositories.

## Teaching Resources

There is a wealth of teaching resources available for git, typically covering committing before branching and collaborating.
Massive open online courses (MOOCs) offered by organizations like Google, Meta, and Atlassian provide professionally designed materials with interactive elements and require 8-16 hours to complete.
Academia has also contributed pedagogical considerations for teaching git, emphasizing its importance in software education and project collaboration.
Papers by various authors discuss pitfalls, challenges, and errors observed in git usage, highlighting issues even experienced developers face, challenges encountered by students, systemic problems of git, and common errors and pitfalls.

In conclusion, neither of the MOOC nor the academic resources challenge the committing - branching - collaborating pattern.
In addition, academic research has highlighted the importance of teaching git in different settings, while recognizing persistent challenges.
Our work builds on these efforts and prior pedagogical theory to envision a more effective strategy of teaching git to IS students.

\newpage

# Pedagogical Approach and Practical Strategies for Teaching git

Our recommendations for teaching git in the IS curriculum stem from extensive efforts to address challenges encountered during initial teaching sessions. 
We identified two main issues: technical errors causing frustration and the overwhelming complexity of git. 
To address these challenges, we introduced changes aimed at isolating each competence area to create self-contained learning sessions. This involved disentangling learning settings both cognitively and technically, allowing students to practice each area separately. Additionally, we questioned the traditional order of contents and opted to start with branching, reflecting developers' workflow and covering fundamental concepts beneficial for understanding other areas.

As a result of these changes, students exhibited increased capacity to tackle challenging questions, leading us to include transfer questions at the end of the course to stimulate thinking across areas. 
This deliberate effort to isolate and connect concepts equipped students with a solid understanding of git, reducing feelings of overwhelm.
Our approach is akin to swimming lessons, where mastering basic skills enables learners to tackle additional challenges effectively.

This holistic approach is illustrated in our overview and is grounded in cognitive and pedagogical theory. 
We present pedagogical principles and practical strategies, starting with fundamental changes and progressing to follow-up adjustments and advice for implementation in the classroom.

\newpage

**Pedagogical recommendation 1: Select an Appropriate Order of Contents.** Start with the competence area of branching because it enables a quick and high-level understanding of git. Proceed with the areas of committing and collaborating afterwards because understanding these concepts benefits from prior knowledge of branching.

The first recommendation suggests reordering the introduction of git concepts, starting with branching, followed by committing and collaborating. 
This sequence aligns with the typical workflow of git and allows students to grasp real-world scenarios from the outset. 
Understanding branching provides a foundation for comprehending committing and collaborating operations, which rely on knowledge of the overall git model. 
This order is supported by Schemata Theory, which emphasizes organizing new information into existing mental frameworks. 
Starting with branching enables students to form associations and build a solid foundation for understanding git concepts before delving into more complex topics.

**Pedagogical recommendation 2: Proceed from Conceptual to Inter-active Learning.** Sessions on branching, committing, and collaborating should start with focused explanations of the key concepts because understanding them requires concentrated efforts. Afterwards, the concepts should be practiced in inter-active, and group-based learning sessions to ensure that students can apply them in practice.


In the initial phase of teaching git, instructors should carefully select and explain key concepts, focusing on fundamental ideas and minimizing cognitive dependencies on other areas. 
This approach aligns with Cognitive Load Theory, which emphasizes reducing extraneous cognitive load by presenting information in a focused manner. 
Interactive learning tools aid in connecting new concepts to existing knowledge, enhancing learning efficiency. 
Split Attention Effects and research on human memory constraints inform instructional practices aimed at optimizing learning outcomes.

Once learners grasp the fundamentals, they should be provided with opportunities for practical application in group-oriented learning sessions. 
Starting with simpler tasks and gradually incorporating more challenging elements aligns with the complexity of the git conceptual model. This approach is supported by Interactive Learning Theory, which emphasizes active engagement and varied learning styles, Group-Based Learning, which harnesses social interdependence for successful outcomes, and Learning by Doing Approach, which emphasizes practical application and reflection.

Furthermore, Socio-Cultural Learning Theory underscores the value of social sharing and collaboration, with groups aiding each other's progress in practice sessions. 
Ultimately, a balanced approach between focused concept introduction and practical application prepares learners to tackle transfer questions involving different areas, promoting a deeper understanding of git concepts.

**Pedagogical recommendation 3: Stimulate Transfer and Connections between Areas.** After the three areas were studied independently, the focus should turn to the connections between these areas because transfer knowledge is an essential part to acquire an overall understanding of git.

In this phase, learners apply their knowledge of git to solve complex tasks that require understanding across different areas. 
Questions prioritize understanding the mechanics and reasoning behind git operations, enabling learners to manage intricate version control situations effectively. 
By mastering interconnected settings, learners deepen their comprehension of core concepts and practice transferring knowledge across different areas. 
Including transfer questions at the end prepares learners for real-world challenges and serves as an assessment tool. 
Acknowledging cognitive limitations, learners are encouraged to break down subjects into manageable parts before tackling complex challenges. 
This approach fosters critical thinking and practical application of knowledge. 
Finally, concluding each session with reflective questions reinforces learning and promotes deeper understanding of key concepts and their connections.

\newpage

# Practical Strategies with Example Contents

To effectively implement the pedagogical recommendations, we suggest three practical strategies, as outlined in the following.

**Practical strategy 1**: Create self-contained learning settings by minimizing technical dependencies between areas.

Existing teaching resources often lack self-contained practice sessions for branching and collaborating in git due to the need for preceding commits and setup. 
To address this, learners can utilize interactive tools like Learn git Branching for branching practice and the Open-Source Collaboration Game on github for collaboration practice. 
These tools offer immediate visual feedback and simplify workflows, allowing learners to focus on core concepts without extensive setup or technical distractions.

**Practical strategy 2**: Start by illustrating concepts *dynamically*, and have students practice it *in small groups* afterwards.

The second practical strategy for teaching git involves a two-pronged approach: focused concept illustration followed by practice sessions in small groups. 
Emphasizing comprehension of fundamental models like the directed acyclic graph (DAG), the approach challenges the limitations of static slides in conveying dynamic git concepts effectively. 
Split-attention, a cognitive burden in integrating information from different sources, can impede learning. 
By employing interactive, hands-on methods, educators can create immersive experiences promoting deeper understanding. 
Dynamic live demonstrations and practical sessions gamify learning, engaging students and sensitizing them to best practices. 
This approach ensures steady progress in learning git concepts without unnecessary complications, preparing students for real-world scenarios in their field.

**Practical strategy 3**: Challenge students to think across areas based on hypothetical scenarios and an array of transfer questions.

To foster transfer knowledge in git, students are encouraged to explore diverse questions across different areas. 
This involves using hypothetical scenarios and a range of transfer questions to prompt deeper understanding. 
A structured approach begins with questions related to branching and committing, progressing to branching and collaborating, and then committing and collaborating. 
Students are provided with scenarios and transfer questions, and solutions may involve intuition, consulting official resources, or testing outcomes in example repositories. 
Detailed solutions aid comprehension. 
This "connective thinking mode" enables students to understand complex git issues, fostering a deeper understanding and proficiency beyond software development.

# Student Feedback and Evidence

Students loved the git session.

# Concluding Remarks

With this teaching case, we rethink how git can be taught effectively by proposing a new macro-level order in which contents are commonly introduced.
As such, our approach may even appear surprising to instructors who traditionally approach the teaching of git with technical dependencies in mind.
Specifically, we start with branching instead of committing, because it allows students to understand the most fundamental principles of the git model before proceeding with commands that will be used less frequently.
We elaborate our new approach, which builds on current pedagogical theory to convey both conceptual knowledge and practical skills.
Our work offers pedagogical recommendations, and practical teaching strategies, which are targeted specifically for IS students.
Evidence from our ongoing teaching activities and student feedback indicates that the approach is effective.

We now call for teachers, who can draw on our work to teach git in IS curricula.
These teaching efforts are essential because the ability to use git competently is becoming a common requirement in the day-to-day work of graduates in their future professions.
Unfortunately, current teaching approaches risk that students are overwhelmed or frustrated by ineffective structures and delivery.
Instead, adopting more effective approaches of teaching of git should facilitate a deep understanding of the underlying concepts, and enable students to apply the basic commands, or quickly identify appropriate options.

