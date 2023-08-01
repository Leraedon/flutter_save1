import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final int startH, startM, endH, endM;
  final String content;
  final List<String> participants;
  final Color color;

  const TodoCard(
      {super.key,
      required this.startH,
      required this.startM,
      required this.endH,
      required this.endM,
      required this.content,
      required this.participants,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 15, right: 35, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(startH < 10 ? "0$startH" : "$startH",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                  Text(startM < 10 ? "0$startM" : "$startM",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                  Container(
                    height: 30,
                    width: 1,
                    color: Colors.black,
                  ),
                  Text(endH < 10 ? "0$endH" : "$endH",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                  Text(endM < 10 ? "0$endM" : "$endM",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, left: 18, right: 18, bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(content,
                        style: const TextStyle(
                          fontSize: 58,
                          height: 0.89,
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: Text(
                            participants[0],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: participants[0] == "ME"
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.22)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: Text(
                            participants[1],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: participants[1] == "ME"
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.22)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: Text(
                            participants[2],
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: participants[2] == "ME"
                                    ? Colors.black
                                    : Colors.black.withOpacity(0.22)),
                          ),
                        ),
                        if (participants.length == 4)
                          Padding(
                              padding: const EdgeInsets.only(right: 21),
                              child: Text(
                                participants[3],
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: participants[3] == "ME"
                                        ? Colors.black
                                        : Colors.black.withOpacity(0.22)),
                              ))
                        else if (participants.length > 4)
                          Padding(
                            padding: const EdgeInsets.only(right: 17),
                            child: Text(
                              "+${participants.length - 3}",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.22)),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
