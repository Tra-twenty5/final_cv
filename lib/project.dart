// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Projects"), backgroundColor: Colors.deepPurple),  
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
                  "Projects & Experience",
                  style: TextStyle(
                    color: Color(0xFFA288FF),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              
              _buildModernSection(
                title: "Experience",
                icon: Icons.work_outline,
                children: const [
                  ProjectCard(
                    title: "Smart Attendance System",
                    date: "November 2024",
                    description:
                        "Designed and implemented attendance tracking with hardware/software integration. Built CRUD interfaces and ensured reliable data storage.",
                  ),
                  ProjectCard(
                    title: "Bank Management System",
                    date: "July 2024",
                    description:
                        "Developed a CRUD-based system for accounts and transactions. Focused on data validation and clean UI workflows.",
                  ),
                ],
              ),

             
              _buildModernSection(
                title: "Volunteer Work",
                icon: Icons.handshake_outlined,
                children: [
                  _buildBulletItem("Feb 2025: GTR 2nd Charity & Field Trip"),
                  _buildBulletItem("Sep 2024: Cambodia Robotics Olympiad 2024"),
                ],
              ),

          
              _buildModernSection(
                title: "Training Courses",
                icon: Icons.school_outlined,
                children: [
                  _buildBulletItem(
                      "Present: International Networking Engineer and Cybersecurity — Sunrise Institute"),
                  _buildBulletItem(
                      "2024: Arduino Training — Institute of Technology of Cambodia"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildModernSection({required String title, required IconData icon, required List<Widget> children}) {
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
              Icon(icon, color: const Color(0xFFA288FF), size: 24),
              const SizedBox(width: 12),
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          ...children,
        ],
      ),
    );
  }

  Widget _buildBulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(color: Color(0xFFA288FF), fontSize: 18)),
          Expanded(child: Text(text, style: const TextStyle(color: Colors.white70, fontSize: 15))),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const ProjectCard({
    required this.title,
    required this.date,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(date, style: const TextStyle(color: Colors.deepPurpleAccent, fontSize: 13, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Text(description, 
               style: const TextStyle(color: Colors.white70, fontSize: 14, height: 1.4)),
        ],
      ),
    );
  }
}