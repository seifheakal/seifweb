import React, { useState, useEffect } from 'react'
import { motion } from 'framer-motion'
import { ChevronLeft, ChevronRight, TrendingUp } from 'lucide-react'

const Creative: React.FC = () => {
  const [currentSlide, setCurrentSlide] = useState(0)
  const [progress, setProgress] = useState(73)

  const images = [
    'https://i0.wp.com/astrafizik.com/wp-content/uploads/2022/12/Quantum_Computing_Image.webp',
    'https://www.collegetransitions.com/wp-content/uploads/2024/01/ap-physics-cem-calculator.jpg',
    'https://th.bing.com/th/id/R.2c64341236bf36b27e5ecc00b3eb6a11?rik=aEvCqH0qbIHK3A&pid=ImgRaw&r=0',
    'https://miro.medium.com/v2/resize:fit:720/format:webp/0*EwgCmUQXtqcuUBfx.jpg',
    'https://pbs.twimg.com/media/DhlXy5TW4AEqdH6?format=jpg&name=small'
  ]

  const focusData = [
    { month: 'Jan', hours: 110 },
    { month: 'Feb', hours: 118 },
    { month: 'Mar', hours: 144 },
    { month: 'Apr', hours: 132 },
    { month: 'May', hours: 150 },
    { month: 'Jun', hours: 230 },
    { month: 'Jul', hours: 90 },
    { month: 'Aug', hours: 280 },
    { month: 'Sep', hours: 240 },
    { month: 'Oct', hours: 200 },
    { month: 'Nov', hours: 120 }
  ]

  const interests = [
    'Cyber Security',
    'Quantum Computing',
    'Digital Hardware Design',
    'Layout',
    'Testing',
    'Verification'
  ]

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentSlide((prev) => (prev + 1) % images.length)
    }, 3000)
    return () => clearInterval(timer)
  }, [images.length])

  const nextSlide = () => {
    setCurrentSlide((prev) => (prev + 1) % images.length)
  }

  const prevSlide = () => {
    setCurrentSlide((prev) => (prev - 1 + images.length) % images.length)
  }

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
    <div className="container mx-auto px-4 py-8">
      <motion.div
        initial={{ opacity: 0, y: -20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.5 }}
        className="text-center mb-12"
      >
        <h1 className="text-4xl font-bold mb-4">Creative</h1>
        <p className="text-xl text-gray-600 dark:text-gray-300">
          My experimenting page - Have Fun!
        </p>
      </motion.div>

      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="space-y-12"
      >
        {/* Carousel Messages */}
        <motion.div variants={itemVariants} className="text-center">
          <div className="flex justify-center items-center space-x-4 text-lg">
            <motion.span
              key={currentSlide}
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
              transition={{ duration: 0.5 }}
            >
              {currentSlide === 0 && "Hi"}
              {currentSlide === 1 && "This is my experimenting page"}
              {currentSlide === 2 && "Have Fun!"}
            </motion.span>
          </div>
        </motion.div>

        {/* Image Carousel */}
        <motion.div variants={itemVariants} className="card">
          <div className="relative h-96 rounded-lg overflow-hidden">
            <div className="flex transition-transform duration-500 ease-in-out h-full"
                 style={{ transform: `translateX(-${currentSlide * 100}%)` }}>
              {images.map((image, index) => (
                <div key={index} className="w-full h-full flex-shrink-0">
                  <img
                    src={image}
                    alt={`Slide ${index + 1}`}
                    className="w-full h-full object-cover"
                  />
                </div>
              ))}
            </div>
            
            <button
              onClick={prevSlide}
              className="absolute left-4 top-1/2 transform -translate-y-1/2 bg-black/50 text-white p-2 rounded-full hover:bg-black/70 transition-colors"
            >
              <ChevronLeft size={24} />
            </button>
            
            <button
              onClick={nextSlide}
              className="absolute right-4 top-1/2 transform -translate-y-1/2 bg-black/50 text-white p-2 rounded-full hover:bg-black/70 transition-colors"
            >
              <ChevronRight size={24} />
            </button>
            
            <div className="absolute bottom-4 left-1/2 transform -translate-x-1/2 flex space-x-2">
              {images.map((_, index) => (
                <button
                  key={index}
                  onClick={() => setCurrentSlide(index)}
                  className={`w-3 h-3 rounded-full transition-colors ${
                    index === currentSlide ? 'bg-white' : 'bg-white/50'
                  }`}
                />
              ))}
            </div>
          </div>
        </motion.div>

        {/* Progress Bar */}
        <motion.div variants={itemVariants} className="card text-center">
          <h3 className="text-2xl font-bold mb-4">
            Progress in Junior Cyber Security Analyst Course by CISCO
          </h3>
          <div className="flex justify-center">
            <div className="relative w-32 h-32">
              <svg className="w-32 h-32 transform -rotate-90" viewBox="0 0 100 100">
                <circle
                  cx="50"
                  cy="50"
                  r="40"
                  stroke="currentColor"
                  strokeWidth="8"
                  fill="transparent"
                  className="text-gray-300 dark:text-gray-600"
                />
                <motion.circle
                  cx="50"
                  cy="50"
                  r="40"
                  stroke="currentColor"
                  strokeWidth="8"
                  fill="transparent"
                  strokeLinecap="round"
                  className="text-purple-600"
                  initial={{ strokeDasharray: "0 251.2" }}
                  animate={{ strokeDasharray: `${progress * 2.512} 251.2` }}
                  transition={{ duration: 2, ease: "easeOut" }}
                />
              </svg>
              <div className="absolute inset-0 flex items-center justify-center">
                <span className="text-2xl font-bold">{progress}%</span>
              </div>
            </div>
          </div>
        </motion.div>

        {/* Focus Hours Chart */}
        <motion.div variants={itemVariants} className="card">
          <h3 className="text-2xl font-bold mb-6 text-center">Focus Hours per Month</h3>
          <div className="h-64 flex items-end justify-center space-x-2">
            {focusData.map((data, index) => (
              <div key={data.month} className="flex flex-col items-center">
                <motion.div
                  className="bg-gradient-to-t from-blue-500 to-purple-600 rounded-t-md w-8"
                  initial={{ height: 0 }}
                  animate={{ height: `${(data.hours / 300) * 200}px` }}
                  transition={{ duration: 1, delay: index * 0.1 }}
                />
                <span className="text-sm mt-2">{data.month}</span>
                <span className="text-xs text-gray-500">{data.hours}h</span>
              </div>
            ))}
          </div>
        </motion.div>

        {/* About Me */}
        <motion.div variants={itemVariants} className="card">
          <h3 className="text-2xl font-bold mb-4 text-center">About Me</h3>
          <div className="max-w-4xl mx-auto">
            <p className="text-gray-600 dark:text-gray-300 leading-relaxed">
              My name is Seif Tamer Heakal, and I'm a devoted One Piece fan, artist, and computer engineering student. 
              Ever since I was young, the adventures of Luffy and his crew captivated my imagination, teaching me about 
              perseverance and the importance of chasing dreams. This love for One Piece has deeply influenced my life, 
              inspiring my artistic pursuits. I love creating art that brings fantastical worlds and characters to life, 
              drawing from the vibrant energy and dynamic storytelling of the anime. At the same time, my fascination 
              with technology led me to study computer engineering, where I dive into the complexities of hardware and 
              the challenges of cybersecurity. I'm passionate about developing innovative solutions to protect our digital 
              world and am particularly intrigued by the potential of quantum computers to revolutionize how we solve problems. 
              Balancing my studies with my love for art, I find joy in combining creativity with technical know-how, 
              approaching challenges from unique perspectives. Inspired by the adventurous spirit of the Straw Hat crew, 
              I navigate my journey with determination, creativity, and a relentless pursuit of knowledge, always striving 
              to merge my passions for art and technology into a meaningful and exciting path forward.
            </p>
          </div>
        </motion.div>

        {/* Interests Scatter */}
        <motion.div variants={itemVariants} className="card">
          <h3 className="text-2xl font-bold mb-6 text-center">My Interests</h3>
          <div className="flex flex-wrap justify-center gap-4">
            {interests.map((interest, index) => (
              <motion.div
                key={interest}
                initial={{ scale: 0, rotate: 0 }}
                animate={{ 
                  scale: 1, 
                  rotate: index % 2 === 0 ? 5 : -5 
                }}
                transition={{ 
                  duration: 0.5, 
                  delay: index * 0.1,
                  type: "spring",
                  stiffness: 100
                }}
                className="bg-gradient-to-r from-blue-500 to-purple-600 text-white px-6 py-3 rounded-lg font-bold text-lg shadow-lg hover:shadow-xl transition-shadow cursor-pointer"
                whileHover={{ scale: 1.05, rotate: 0 }}
              >
                {interest}
              </motion.div>
            ))}
          </div>
        </motion.div>
      </motion.div>
    </div>
  )
}

export default Creative