class ProjectUtils {
  final String image;
  final String title;
  final String description;
  final String? giturl;
  ProjectUtils({
    required this.image,
    required this.title,
    required this.description,
    this.giturl,
  });
}
List<ProjectUtils> Harwareprojects = [
  ProjectUtils(
    image: 'assets/projects/arch.jpg',
    title: 'CPU Architecture',
    description: 'This project is about making a CPU architecture using VHDL which utlize full forwrding and hazard detection.and 32 instructions contains branching are implemented in this project with 5 stage pipeline. and predction of branch is also implemented in this project.',
    giturl: 'https://github.com/seifheakal/computer-Architecture'
  ),
];