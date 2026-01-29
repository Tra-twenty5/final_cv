import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), backgroundColor: Colors.deepPurple),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("👋 Welcome to My Portfolio!",
                  style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text(
                "I'm Neth Sopheaktra — a passionate engineering student focused on Networking and Telecommunication. "
                "Explore my skills, projects, and journey as I grow into a future tech leader.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(height: 40),
              Text("🚀 Let's build something amazing together.",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic)),
            ],
          ),
        ),
      ),
    );
  }
}