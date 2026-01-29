// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me"), backgroundColor: Colors.deepPurple),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F0425), Color(0xFF2D0B5A)],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Center(
                child: Text(
                  "I'm Neth Sopheaktra",
                  style: TextStyle(
                    color: Color(0xFFA288FF),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Networking & Telecommunication Engineering Student\nPhnom Penh, Cambodia",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              const SizedBox(height: 40),

              
              _buildModernCard(
                title: "Summary",
                emoji: "🧠",
                child: const Text(
                  "Adaptable, punctual, and collaborative. I set clear goals, plan ahead, and manage time effectively. "
                  "I thrive in both team and solo environments and am motivated to deliver reliable results.",
                  style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.5),
                ),
              ),

              
              _buildModernCard(
                title: "Experience",
                emoji: "💼",
                child: Column(
                  children: const [
                    ExperienceItem(
                      title: "Smart Attendance System",
                      date: "Nov 2024",
                      details: [
                        "Designed and implemented attendance tracking with hardware/software integration.",
                        "Built CRUD interfaces and reliable data storage.",
                      ],
                    ),
                    ExperienceItem(
                      title: "Bank Management System",
                      date: "July 2024",
                      details: [
                        "Developed CRUD-based system for accounts and transactions.",
                        "Focused on data validation and clean UI workflows.",
                      ],
                    ),
                  ],
                ),
              ),

              _buildModernCard(
                title: "Education",
                emoji: "🎓",
                child: Column(
                  children: const [
                    EducationItem("2023–Present", "Engineer’s Degree", "ITC"),
                    EducationItem("2020–2024", "English Knowledge", "Paññāsāstra University"),
                    EducationItem("2019–2022", "General Studies", "Bak Touk High School"),
                  ],
                ),
              ),

              
              _buildModernCard(
                title: "Skills",
                emoji: "🛠️",
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    SkillChip(label: "Python"),
                    SkillChip(label: "C/C++"),
                    SkillChip(label: "Java"),
                    SkillChip(label: "Linux"),
                    SkillChip(label: "VMware"),
                    SkillChip(label: "Teamwork"),
                  ],
                ),
              ),

             
              _buildModernCard(
                title: "Languages",
                emoji: "🌐",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("• Khmer — Native", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    Text("• English — B1", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    Text("• France — A2", style: TextStyle(color: Colors.white70, fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildModernCard({required String title, required String emoji, required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(color: Color(0xFFA288FF), fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 15),
          child,
        ],
      ),
    );
  }
}



class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: const TextStyle(color: Colors.white, fontSize: 13)),
      backgroundColor: Colors.deepPurple.withOpacity(0.3),
      side: const BorderSide(color: Colors.white10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String date;
  final List<String> details;

  const ExperienceItem({super.key, required this.title, required this.date, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              Text(date, style: const TextStyle(color: Colors.white38, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 5),
          ...details.map((d) => Text("• $d", style: const TextStyle(color: Colors.white70, fontSize: 14))),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String year;
  final String program;
  final String institution;

  const EducationItem(this.year, this.program, this.institution, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(color: Colors.deepPurpleAccent)),
          Expanded(
            child: Text("$year: $program — $institution", 
              style: const TextStyle(color: Colors.white70, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}