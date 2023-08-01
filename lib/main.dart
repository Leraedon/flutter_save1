import 'package:assignment7/card.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/DRAVEN.png', width: 55, height: 55),
                    const Icon(Icons.add, size: 36, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
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
              const TodoCard(
                startH: 11,
                startM: 30,
                endH: 12,
                endM: 20,
                content: "DESIGN\nMEETING",
                participants: [
                  "ALEX",
                  "HELENA",
                  "NANA",
                ],
                color: Color(0xFFFDF771),
              ),
              const TodoCard(
                  startH: 12,
                  startM: 35,
                  endH: 14,
                  endM: 10,
                  content: "DAILY\nPROJECT",
                  participants: ["ME", "RICHARD", "CIRY", "A", "B", "C", "D"],
                  color: Color(0xFF956DC8)),
              const TodoCard(
                  startH: 15,
                  startM: 0,
                  endH: 16,
                  endM: 30,
                  content: "WEEKLY\nPLANNING",
                  participants: ["DEN", "NANA", "MARK"],
                  color: Color(0xFFC6ED67)),
            ],
          ),
        ),
      ),
    );
  }
}
