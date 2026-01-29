// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact"), backgroundColor: Colors.deepPurple),
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
            children: [
              const Text(
                "Get In Touch",
                style: TextStyle(
                  color: Color(0xFFA288FF),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    const Text(
                      "📞 Phone:",
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text("+855 96-842-5835 (Telegram)", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 20),
                    const Text(
                      "📧 Email:",
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text("sopheaktraneth007@gmail.com", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 20),
                    const Text(
                      "🏠 Address:",
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text("#11F0, Tmnor Kol 3, Chom Chao 2, Pho Sen Chey, Phnom Penh",
                        style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 40),
                    const Text(
                      "📌 Reference:",
                      style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text("Dr. Sreang Sokchenda",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text("Dean of Department, GTR — Institute of Technology of Cambodia",
                        style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const SizedBox(height: 10),
                    const Text("📞 +855-12 407 910", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    const Text("📧 sokchenda@itc.edu.kh", style: TextStyle(color: Colors.white70, fontSize: 16)),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}