import React, { useState } from 'react'
import { motion } from 'framer-motion'
import { Github, ExternalLink } from 'lucide-react'

interface Project {
  id: number
  title: string
  description: string
  image: string
  githubUrl?: string
  category: 'hardware' | 'software'
}

const Projects: React.FC = () => {
  const [activeTab, setActiveTab] = useState<'hardware' | 'software'>('hardware')

  const projects: Project[] = [
    {
      id: 1,
      title: 'CPU Architecture',
      description: 'This project is about making a CPU architecture using VHDL which utilize full forwarding and hazard detection. 32 instructions contains branching are implemented in this project with 5 stage pipeline. Branch prediction is also implemented in this project.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/MRKDaGods/arch-proj',
      category: 'hardware'
    },
    {
      id: 2,
      title: 'RaspberryPi-3B-BareMetal',
      description: 'It features low-level control of the hardware to implement functionalities such as Framebuffer swapping, character rendering, an AI-powered game of Pong with multiplayer support and 3 different modes and a boot loader. All using Arm Assembly.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/RaspberryPi-3B-BareMetal',
      category: 'hardware'
    },
    {
      id: 3,
      title: 'Image Processing',
      description: 'This project is about making a model using python to detect crops from the weed so we can eliminate weed only. This project is implemented using segmentation and classification of the image and we compared our results with other DNN and we got very good results.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/computer-Architecture',
      category: 'software'
    },
    {
      id: 4,
      title: 'Operating Systems',
      description: 'CPU scheduling algorithms like round robin & highest priority first and STRN which is a preemptive shortest job first are implemented in this project using C language.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/OS-Project',
      category: 'software'
    },
    {
      id: 5,
      title: 'Computer Networks',
      description: 'We implemented a Go-back N protocol using ned language and we simulated the network on omnet++ and we did all the testing on the network and every test case passed.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/Computer-Networks',
      category: 'software'
    },
    {
      id: 6,
      title: 'Task Manager',
      description: 'Simple and intuitive interface, Users can easily add tasks, edit task names, and mark tasks as completed. Tasks can be deleted. The app supports users to reorder tasks by long-pressing and dragging them. It is implemented using flutter and the database is using shared preferences.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/task-manager',
      category: 'software'
    },
    {
      id: 7,
      title: 'Data Structures',
      description: 'Implementation of data structures like linked list, stack, queue, binary tree using C++ language and we did also process scheduling using the data structures like round robin & highest priority first and others.',
      image: '/api/placeholder/400/250',
      githubUrl: 'https://github.com/seifheakal/Data-Structures-',
      category: 'software'
    }
  ]

  const filteredProjects = projects.filter(project => project.category === activeTab)

  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.1
      }
    }
  }

  const itemVariants = {
    hidden: { y: 20, opacity: 0 },
    visible: {
      y: 0,
      opacity: 1,
      transition: {
        duration: 0.5
      }
    }
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <motion.div
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="text-center mb-12"
      >
        <h1 className="text-4xl font-bold mb-4">My Projects</h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          A collection of my hardware and software projects
        </p>
      </motion.div>

      <div className="flex justify-center mb-8">
        <div className="bg-gray-200 dark:bg-gray-700 rounded-lg p-1">
          <button
            onClick={() => setActiveTab('hardware')}
            className={`px-6 py-2 rounded-md transition-all duration-200 ${
              activeTab === 'hardware'
                ? 'bg-blue-600 text-white shadow-md'
                : 'text-gray-600 dark:text-gray-300 hover:text-blue-600 dark:hover:text-blue-400'
            }`}
          >
            Hardware Projects
          </button>
          <button
            onClick={() => setActiveTab('software')}
            className={`px-6 py-2 rounded-md transition-all duration-200 ${
              activeTab === 'software'
                ? 'bg-blue-600 text-white shadow-md'
                : 'text-gray-600 dark:text-gray-300 hover:text-blue-600 dark:hover:text-blue-400'
            }`}
          >
            Software Projects
          </button>
        </div>
      </div>

      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"
      >
        {filteredProjects.map((project) => (
          <motion.div
            key={project.id}
            variants={itemVariants}
            className="card group hover:scale-105 transition-transform duration-300"
          >
            <div className="aspect-video bg-gradient-to-br from-blue-400 to-purple-600 rounded-lg mb-4 flex items-center justify-center">
              <div className="text-white text-4xl">🚀</div>
            </div>
            
            <h3 className="text-xl font-semibold mb-3">{project.title}</h3>
            <p className="text-gray-600 dark:text-gray-300 mb-4 line-clamp-4">
              {project.description}
            </p>
            
            <div className="flex justify-between items-center">
              <span className="text-sm text-blue-600 dark:text-blue-400 font-medium">
                Available on
              </span>
              {project.githubUrl && (
                <a
                  href={project.githubUrl}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-2 text-gray-600 dark:text-gray-300 hover:text-blue-600 dark:hover:text-blue-400 transition-colors duration-200"
                >
                  <Github size={20} />
                  <ExternalLink size={16} />
                </a>
              )}
            </div>
          </motion.div>
        ))}
      </motion.div>
    </div>
  )
}

export default Projects