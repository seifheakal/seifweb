import React, { useState } from 'react'
import { motion } from 'framer-motion'
import { Briefcase, Award } from 'lucide-react'

interface ExperienceItem {
  id: number
  title: string
  company: string
  description: string
  type: 'formal' | 'extra'
}

const Experience: React.FC = () => {
  const [activeTab, setActiveTab] = useState<'formal' | 'extra'>('formal')

  const experiences: ExperienceItem[] = [
    {
      id: 1,
      title: 'Analog Layout Design Intern',
      company: 'SI-Vision',
      description: 'Gained hands-on experience in analog layout design, focusing on key concepts such as short channel effects, the semiconductor manufacturing process, and matching techniques for high-performance analog circuits. Proficient in using Synopsys tools for layout design, successfully completing a project that met both Design Rule Check (DRC) and Layout Versus Schematic (LVS) standards.',
      type: 'formal'
    },
    {
      id: 2,
      title: 'Virtualization and Infrastructure Management Intern',
      company: 'Huawei',
      description: 'Installed and managed VMs, VRMs, and data stores. Used MobaXterm for monitoring, health checks, and live migrations. Monitored KPIs and gained experience in disaster recovery processes.',
      type: 'formal'
    },
    {
      id: 3,
      title: 'Fundraising Team Member',
      company: 'TEDx',
      description: 'Helped in raising funds for the event, and helped in organizing the event and getting the sponsors for the event to be a great and successful event.',
      type: 'formal'
    },
    {
      id: 4,
      title: 'Engineering Intern',
      company: 'Echem',
      description: 'Learned feasibility studies, tendering and contract types, process of establishing companies from the idea phase till the end of construction and start of operation.',
      type: 'formal'
    },
    {
      id: 5,
      title: 'Teaching Assistant',
      company: 'Math / CS',
      description: 'Helped students in understanding the course material, and helped in solving their problems and questions and explaining the material in a simple way.',
      type: 'formal'
    },
    {
      id: 6,
      title: 'NASA Space Apps Cairo 2024 Participant',
      company: 'NASA',
      description: 'Contributed to a community mapping system designed to showcase general statistics about local communities. Developed heatmaps to visually represent data, enhancing accessibility and understanding for users. This project aimed to facilitate community engagement and provide valuable insights through intuitive mapping techniques.',
      type: 'extra'
    },
    {
      id: 7,
      title: 'Softwaregeya 2024 - Second Place Winner',
      company: 'National Competition',
      description: 'Participated in a national programming competition focused on low-level programming using assembly language. Collaborated on the development of a boot loader, showcasing a deep understanding of computer architecture and system-level programming. Achieved second place, demonstrating strong problem-solving skills and proficiency in assembly language.',
      type: 'extra'
    },
    {
      id: 8,
      title: 'RYLA Secrets of Success',
      company: 'Rotary',
      description: 'RYLA in Ain el shokhna, learned the secrets of success, and how to be a successful person in life and in work, and how to be a leader in the community and in the work place.',
      type: 'extra'
    },
    {
      id: 9,
      title: 'British Council Your World Competition',
      company: 'British Council',
      description: 'Participated in the competition and learned how to be a good speaker and how to present my ideas in a simple and clear way.',
      type: 'extra'
    },
    {
      id: 10,
      title: 'MUN at AUC',
      company: 'American University in Cairo',
      description: 'Learned how to be a good debater and how to present my ideas in a professional way, and how to be a good listener and how to understand the other person\'s point of view and how to respect it and how to respond to it in a professional way.',
      type: 'extra'
    }
  ]

  const filteredExperiences = experiences.filter(exp => exp.type === activeTab)

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
    hidden: { x: -20, opacity: 0 },
    visible: {
      x: 0,
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
        <h1 className="text-4xl font-bold mb-4">Experience</h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          My professional journey and achievements
        </p>
      </motion.div>

      <div className="flex justify-center mb-8">
        <div className="bg-gray-200 dark:bg-gray-700 rounded-lg p-1">
          <button
            onClick={() => setActiveTab('formal')}
            className={`px-6 py-2 rounded-md transition-all duration-200 ${
              activeTab === 'formal'
                ? 'bg-blue-600 text-white shadow-md'
                : 'text-gray-600 dark:text-gray-300 hover:text-blue-600 dark:hover:text-blue-400'
            }`}
          >
            Formal Experience
          </button>
          <button
            onClick={() => setActiveTab('extra')}
            className={`px-6 py-2 rounded-md transition-all duration-200 ${
              activeTab === 'extra'
                ? 'bg-blue-600 text-white shadow-md'
                : 'text-gray-600 dark:text-gray-300 hover:text-blue-600 dark:hover:text-blue-400'
            }`}
          >
            Extra Experience
          </button>
        </div>
      </div>

      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="max-w-4xl mx-auto"
      >
        {filteredExperiences.map((experience, index) => (
          <motion.div
            key={experience.id}
            variants={itemVariants}
            className="relative pl-8 pb-8 last:pb-0"
          >
            {/* Timeline line */}
            {index !== filteredExperiences.length - 1 && (
              <div className="absolute left-4 top-8 w-0.5 h-full bg-gray-300 dark:bg-gray-600"></div>
            )}
            
            {/* Timeline dot */}
            <div className="absolute left-2 top-2 w-4 h-4 bg-blue-600 rounded-full border-4 border-white dark:border-gray-900"></div>
            
            <div className="card ml-4">
              <div className="flex items-start gap-4">
                <div className="p-2 bg-blue-100 dark:bg-blue-900 rounded-lg">
                  {activeTab === 'formal' ? (
                    <Briefcase className="text-blue-600 dark:text-blue-400" size={24} />
                  ) : (
                    <Award className="text-blue-600 dark:text-blue-400" size={24} />
                  )}
                </div>
                
                <div className="flex-1">
                  <h3 className="text-xl font-semibold mb-1">{experience.title}</h3>
                  <h4 className="text-lg font-medium text-blue-600 dark:text-blue-400 mb-3">
                    {experience.company}
                  </h4>
                  <p className="text-gray-600 dark:text-gray-300 leading-relaxed">
                    {experience.description}
                  </p>
                </div>
              </div>
            </div>
          </motion.div>
        ))}
      </motion.div>
    </div>
  )
}

export default Experience