import 'package:flutter/material.dart';

class DevelopersScreen extends StatelessWidget {
  const DevelopersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Developer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/first_developer.jpg'),
                ),
                const SizedBox(width: 16),
                Text(
                  'Vedant Tiwari',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Aakriti Bansal',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(width: 16),
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage('assets/second_developer.jpg'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 24),
            const Text(
              'About the Developers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Welcome to One School App, a revolutionary educational tool designed to streamline school management. As developers and B.Tech graduates in Computer Science and Engineering (2026 batch), we created this innovative solution to tackle the unique challenges faced by educators. One School App integrates essential features like student attendance tracking, customizable todo lists, and teacher timetables, empowering teachers to focus on exceptional education. Our goal is to enhance productivity and efficiency in the educational ecosystem.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 8),
            Text(
              "Stay tuned for upcoming updates that will bring new features, design enhancements, and performance improvements to One-School App. Your feedback is crucial in shaping the app's future, and We're committed to delivering a seamless and intuitive experience.",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
