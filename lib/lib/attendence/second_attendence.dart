import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondAttendence extends StatefulWidget {
  const SecondAttendence({super.key});

  @override
  State<SecondAttendence> createState() => _SecondAttendenceState();
}

class _SecondAttendenceState extends State<SecondAttendence> {
  bool _isPresent1 = false;
  bool _isPresent2 = false;
  bool _isPresent3 = false;
  bool _isPresent4 = false;
  bool _isPresent5 = false;
  bool _isPresent6 = false;
  bool _isPresent7 = false;
  bool _isPresent8 = false;
  bool _isPresent9 = false;
  bool _isPresent10 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Attendence",
          style: GoogleFonts.getFont(
            "Lato",
            color: Theme.of(context).colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                const TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Student Name',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Present/Absent',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Aarav'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent1 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent1 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent1 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent1 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent1 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent1
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Dhruv'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent3 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent3 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent3 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent3
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent3 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent3 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent3
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Jiya'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent4 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent4 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent4 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent4
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent4 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent4 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent4
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Anjali'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent5 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent5 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent5 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent5
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent5 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent5 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent5
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Ansh'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent6 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent6 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent6 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent6
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent6 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent6 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent6
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Surya'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent7 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent7 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent7 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent7
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent7 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent7 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent7
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Jasleen'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent8 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent8 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent8 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent8
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent8 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent8 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent8
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Deepak'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent9 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent9 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent9 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent9
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent9 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent9 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent9
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Mihir'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent10 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent10 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent10 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent10
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent10 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent10 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent10
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Shalee'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: _isPresent2 ? Colors.green : Colors.red,
                          ),
                          child: Row(
                            children: [
                              Opacity(
                                opacity: _isPresent2 == true ? 1 : 0.3,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent2 = true;
                                      });
                                    },
                                    child: Text(
                                      'Present',
                                      style: TextStyle(
                                        color: _isPresent2
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: _isPresent2 == true ? 0.3 : 1,
                                child: Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPresent2 = false;
                                      });
                                    },
                                    child: Text(
                                      'Absent',
                                      style: TextStyle(
                                        color: _isPresent2
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Attendence Updated."),
                      ),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text("Save"),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
