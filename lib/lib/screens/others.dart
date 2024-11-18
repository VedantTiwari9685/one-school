import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Others",
          style: GoogleFonts.getFont(
            "Lato",
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "New features coming soon!",
            style: GoogleFonts.getFont(
              "Lato",
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Stay tuned.",
            style: GoogleFonts.getFont(
              "Lato",
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}
