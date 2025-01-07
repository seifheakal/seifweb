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
  ProjectUtils(
    image: 'assets/projects/micro.png',
    title: 'RaspberryPi-3B-BareMetal',
    description: 'It features low-level control of the hardware to implement functionalities such as Framebuffer swapping, character rendering, an AI-powered game of Pong with multiplayer support and 3 different modes and a boot loader. all using Arm Assembly',
    giturl: 'https://github.com/seifheakal/RaspberryPi-3B-BareMetal'
  ),
  
];