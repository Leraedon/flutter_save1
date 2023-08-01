import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF1F1F1F),
        body: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.face, size: 54, color: Colors.white),
                  Icon(Icons.add, size: 36, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("MONDAY 16",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        )),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        const Text("TODAY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w400,
                            )),
                        const Text("·",
                            style: TextStyle(
                              color: Color(0xFFA4337D),
                              fontSize: 58,
                              fontWeight: FontWeight.w800,
                            )),
                        Text("17",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 41,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("18",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 41,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("19",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 41,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          width: 22,
                        ),
                        Text("20",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 41,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
