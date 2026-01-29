import 'package:flutter/material.dart';
import 'package:final_cv/aboutme.dart';
import 'package:final_cv/contact.dart';
import 'package:final_cv/home.dart';
import 'package:final_cv/project.dart';

void main() {
  runApp(const PortfolioApp());
}


class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sopheaktra Portfolio',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 25, 4, 59),
        primaryColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NETH SOPHEAKTRA'),
        backgroundColor: Colors.deepPurple,
        actions: [
          TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const HomePage())),
            child: const Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const AboutPage())),
            child: const Text('About Me', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ProjectsPage())),
            child: const Text('Projects', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ContactPage())),
            child: const Text('Contact', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Hello, I'm 👋 ",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(height: 10),
                  Text("NETH SOPHEAKTRA",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text(
                    "Networking and Telecommunication Engineering student with strong skills in Python, C/C++, Java, Linux, and microcontroller systems. Passionate about building reliable solutions and collaborating in technical environments.",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 40),
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/Tra.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
