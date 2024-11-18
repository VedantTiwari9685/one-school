import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneschool/lib/attendence/second_attendence.dart';

class FirstAttendence extends StatelessWidget {
  const FirstAttendence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Classes",
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
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 1st",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 2nd",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 3rd",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 4th",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 5th",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const SecondAttendence(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.list_alt,
                            size: 28,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Class 6th",
                              style: GoogleFonts.getFont(
                                "Lato",
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
