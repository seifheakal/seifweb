import React from 'react'
import { motion } from 'framer-motion'
import { Github, Linkedin, Mail, Wave } from 'lucide-react'

const Home: React.FC = () => {
  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: {
        staggerChildren: 0.2
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
    <div className="min-h-screen flex items-center justify-center px-4">
      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="text-center max-w-4xl mx-auto"
      >
        <motion.div variants={itemVariants} className="mb-8">
          <div className="relative w-48 h-48 mx-auto mb-8">
            <div className="w-full h-full rounded-full bg-gradient-to-br from-blue-400 to-purple-600 p-1">
              <div className="w-full h-full rounded-full bg-gray-200 dark:bg-gray-800 flex items-center justify-center">
                <div className="text-6xl">👨‍💻</div>
              </div>
            </div>
          </div>
        </motion.div>

        <motion.div variants={itemVariants} className="mb-6">
          <h1 className="text-5xl md:text-6xl font-bold mb-4 bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
            Seif Tamer Heakal
          </h1>
          <div className="flex items-center justify-center gap-2 text-xl md:text-2xl text-gray-600 dark:text-gray-300">
            <span>Computer Engineering Student</span>
            <Wave className="animate-bounce-slow" size={24} />
          </div>
        </motion.div>

        <motion.div variants={itemVariants} className="mb-8">
          <p className="text-lg md:text-xl text-gray-600 dark:text-gray-300 leading-relaxed max-w-3xl mx-auto">
            I'm passionate about digital hardware, frontend development, and cybersecurity. 
            I'm also very interested in quantum computing and its discoveries. I enjoy learning 
            about new technologies and finding ways to understand and use them.
          </p>
        </motion.div>

        <motion.div variants={itemVariants} className="mb-12">
          <h2 className="text-2xl font-bold mb-6">Education</h2>
          <div className="card max-w-2xl mx-auto">
            <h3 className="text-xl font-semibold mb-2">Cairo University</h3>
            <p className="text-gray-600 dark:text-gray-300 mb-4">
              Computer and Communication Engineering
            </p>
            
            <h4 className="text-lg font-semibold mb-3">External Courses</h4>
            <ul className="space-y-2 text-gray-600 dark:text-gray-300">
              <li>• IBM Cybersecurity Analyst Professional</li>
              <li>• ISTQB Foundation Level</li>
              <li>• Google Digital Marketing Certificate</li>
            </ul>
          </div>
        </motion.div>

        <motion.div variants={itemVariants}>
          <h2 className="text-2xl font-bold mb-6">Connect With Me</h2>
          <div className="flex justify-center space-x-6">
            <a
              href="https://www.linkedin.com/in/seif-heakal"
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-2 btn-primary"
            >
              <Linkedin size={20} />
              LinkedIn
            </a>
            <a
              href="https://github.com/seifheakal"
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-2 btn-secondary"
            >
              <Github size={20} />
              GitHub
            </a>
            <a
              href="mailto:seiftamer06@gmail.com"
              className="flex items-center gap-2 btn-secondary"
            >
              <Mail size={20} />
              Email
            </a>
          </div>
        </motion.div>
      </motion.div>
    </div>
  )
}

export default Home