import React from 'react'
import { motion } from 'framer-motion'

interface Skill {
  name: string
  level: number
  category: 'programming' | 'tools' | 'hardware'
}

const Skills: React.FC = () => {
  const skills: Skill[] = [
    { name: 'C++', level: 90, category: 'programming' },
    { name: 'VHDL', level: 85, category: 'hardware' },
    { name: 'Flutter', level: 80, category: 'programming' },
    { name: 'Python', level: 75, category: 'programming' },
    { name: 'Assembly x86', level: 70, category: 'programming' },
    { name: 'ARM Assembly', level: 70, category: 'programming' },
    { name: 'C#', level: 65, category: 'programming' },
    { name: 'MySQL', level: 60, category: 'tools' },
    { name: 'Matlab', level: 55, category: 'tools' },
    { name: 'Visual Studio', level: 80, category: 'tools' },
    { name: 'VS Code', level: 85, category: 'tools' },
    { name: 'Logisim', level: 70, category: 'hardware' },
    { name: 'Multisim', level: 65, category: 'hardware' },
    { name: 'Quartus', level: 75, category: 'hardware' },
    { name: 'GitHub', level: 80, category: 'tools' },
    { name: 'WinForms', level: 60, category: 'programming' }
  ]

  const categories = {
    programming: 'Programming Languages',
    tools: 'Tools & Technologies',
    hardware: 'Hardware Design'
  }

  const getSkillsByCategory = (category: string) => {
    return skills.filter(skill => skill.category === category)
  }

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

  const skillVariants = {
    hidden: { width: 0 },
    visible: (level: number) => ({
      width: `${level}%`,
      transition: {
        duration: 1,
        delay: 0.2,
        ease: "easeOut"
      }
    })
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <motion.div
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="text-center mb-12"
      >
        <h1 className="text-4xl font-bold mb-4">My Skills</h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          Technologies and tools I work with
        </p>
      </motion.div>

      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="max-w-4xl mx-auto space-y-12"
      >
        {Object.entries(categories).map(([category, title]) => (
          <motion.div key={category} variants={itemVariants} className="card">
            <h2 className="text-2xl font-bold mb-6 text-center">{title}</h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              {getSkillsByCategory(category).map((skill) => (
                <div key={skill.name} className="space-y-2">
                  <div className="flex justify-between items-center">
                    <span className="font-medium">{skill.name}</span>
                    <span className="text-sm text-gray-500 dark:text-gray-400">
                      {skill.level}%
                    </span>
                  </div>
                  <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
                    <motion.div
                      className="bg-gradient-to-r from-blue-500 to-purple-600 h-2 rounded-full"
                      variants={skillVariants}
                      initial="hidden"
                      animate="visible"
                      custom={skill.level}
                    />
                  </div>
                </div>
              ))}
            </div>
          </motion.div>
        ))}
      </motion.div>

      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5, delay: 0.5 }}
        className="mt-12 text-center"
      >
        <div className="card max-w-2xl mx-auto">
          <h3 className="text-xl font-bold mb-4">Skill Cloud</h3>
          <p className="text-gray-600 dark:text-gray-300 mb-4">
            Every time you refresh, the arrangement changes!
          </p>
          <div className="flex flex-wrap justify-center gap-3">
            {skills.map((skill) => (
              <motion.span
                key={skill.name}
                initial={{ scale: 0 }}
                animate={{ scale: 1 }}
                transition={{ duration: 0.3, delay: Math.random() * 0.5 }}
                className="px-3 py-1 bg-gradient-to-r from-blue-500 to-purple-600 text-white rounded-full text-sm font-medium"
                style={{
                  fontSize: `${0.8 + (skill.level / 100) * 0.6}rem`
                }}
              >
                {skill.name}
              </motion.span>
            ))}
          </div>
        </div>
      </motion.div>
    </div>
  )
}

export default Skills