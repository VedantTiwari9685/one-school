import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneschool/lib/attendence/first_attendence.dart';
import 'package:oneschool/lib/screens/others.dart';
import 'package:oneschool/lib/table_table/time_table.dart';
import 'package:oneschool/lib/todo_list/todo_screen.dart';
import 'package:oneschool/lib/widgets/main_drawer.dart';

class OneSchoolScreen extends StatelessWidget {
  const OneSchoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        toolbarOpacity: 1,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              color: Colors.white,
              icon: const Icon(Icons.menu),
            );
          },
        ),
        title: Text('Home',
            style: GoogleFonts.getFont(
              "Lato",
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        actions: const [],
      ),
      drawer: const MainDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              Text(
                "One School",
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 40,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Your all school related",
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "work in one app.",
                style: GoogleFonts.getFont(
                  "Lato",
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5);
                          }
                          return null; // Use the component's default.
                        },
                      ),
                      side: WidgetStateProperty.resolveWith<BorderSide?>(
                        (Set<WidgetState> states) {
                          return BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2.5, // Border width
                          );
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Attendence',
                        style: GoogleFonts.getFont("Lato",
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const FirstAttendence(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5);
                          }
                          return null; // Use the component's default.
                        },
                      ),
                      side: WidgetStateProperty.resolveWith<BorderSide?>(
                        (Set<WidgetState> states) {
                          return BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2.5, // Border width
                          );
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 7, right: 7, top: 10, bottom: 10),
                      child: Text(
                        'Time-Table',
                        style: GoogleFonts.getFont("Lato",
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const TimeTable(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5);
                          }
                          return null; // Use the component's default.
                        },
                      ),
                      side: WidgetStateProperty.resolveWith<BorderSide?>(
                        (Set<WidgetState> states) {
                          return BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2.5, // Border width
                          );
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 7, right: 7, top: 10, bottom: 10),
                      child: Text(
                        'To-do List',
                        style: GoogleFonts.getFont("Lato",
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const TodoScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5);
                          }
                          return null; // Use the component's default.
                        },
                      ),
                      side: WidgetStateProperty.resolveWith<BorderSide?>(
                        (Set<WidgetState> states) {
                          return BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2.5, // Border width
                          );
                        },
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, top: 10, bottom: 10),
                      child: Text(
                        'Others',
                        style: GoogleFonts.getFont("Lato",
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const Others(),
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
