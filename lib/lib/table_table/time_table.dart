import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Time Table",
          style: GoogleFonts.getFont(
            "Lato",
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "No data to show.",
          style: GoogleFonts.getFont(
            "Lato",
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
