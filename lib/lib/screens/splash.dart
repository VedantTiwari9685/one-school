import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneschool/lib/screens/auth.dart';
import 'package:oneschool/lib/screens/one_school_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (ctx) => StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashScreen();
              }
              if (snapshot.hasData) {
                return const OneSchoolScreen();
              }
              return const AuthScreen();
            },
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/oneschool_logo.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 20),
              Text(
                'Welcome to',
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'One School',
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 110),
              Text(
                'Developed by',
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Vedant Tiwari & Aakriti Bansal',
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.primaryContainer,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
