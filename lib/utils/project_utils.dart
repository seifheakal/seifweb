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
List<ProjectUtils> hardwareprojects = [
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


List<ProjectUtils> softwareprojects = [
  ProjectUtils(
    image: 'assets/projects/image.png',
    title: 'Image Processing',
    description: 'This project is about making a model using python to detect crops from the weed so we can eleminate weed only. this project is implemented using segmentation and classification of the image and we compared our resluts with other DNN and we got very good results.',
    giturl: 'https://github.com/seifheakal/computer-Architecture'
  ),
  ProjectUtils(
    image: 'assets/projects/os.jpg',
    title: 'Oparting Systems',
    description: 'cpu scheduling algorithms like round robin & highest priorty first and Strn which is a preemptive shortest job first  are implemented in this project using C language ',
    giturl: 'https://github.com/seifheakal/OS-Project'
  ),
  ProjectUtils(
    image: 'assets/projects/net.jpg',
    title: 'Computer Networks',
    description: 'We implemented a  Go-back N protocol using ned language and we sumulated the network on omnet++ and we did all the testing on the network and every test case passed.',
    giturl: 'https://github.com/seifheakal/Computer-Networks'
  ),
  ProjectUtils(
    image: 'assets/projects/task.png',
    title: 'Task manager',
    description: 'Simple and intuitive interface, Users can easily add tasks, edit task names, and mark tasks as completed.Tasks can be deleted. The app supports users to reorder tasks by long-pressing and dragging them. It is implemented using flutter and the data base is using shared preferences.',
    giturl: 'https://github.com/seifheakal/task-manager'
  ),
  ProjectUtils(
    image: 'assets/projects/datastruct.jpg',
    title: 'Data Structures',
    description: 'Implimentation of data structures like linked list, stack, queue, binary tree using C++ language and we did aslo prossec scheduling using the data structures like round robin & highest priorty first and others.',
    giturl: 'https://github.com/seifheakal/Data-Structures-'
  ),
  
  
];