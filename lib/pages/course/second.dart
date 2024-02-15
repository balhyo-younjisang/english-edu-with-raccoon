import 'package:english_edu/pages/word/word_argument.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseSecondPage extends StatefulWidget {
  const CourseSecondPage({super.key});

  @override
  State<CourseSecondPage> createState() => CourseSecondPageState();
}

class CourseSecondPageState extends State<CourseSecondPage> {
  final List<bool> isShow = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.png"),
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 50,
                    top: MediaQuery.of(context).size.height - 700.0,
                    child: Column(
                      children: [
                        SizedBox(
                            child: isShow[4]
                                ? Image.asset(
                                    "assets/images/raccoon.png",
                                    width: 100.0,
                                    height: 100.0,
                                  )
                                : const SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                  )),
                        InkWell(
                          onTap: () async {
                            final isChecked = await Navigator.pushNamed(
                                context, "/word",
                                arguments: WordArgument("Date", "10"));

                            if (isChecked != null) {
                              setState(() {
                                isShow[4] = false;
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff3AA546)),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Text(
                              "Date",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 130,
                      top: MediaQuery.of(context).size.height - 630.0,
                      child: Column(children: [
                        SizedBox(
                            child: isShow[3]
                                ? Image.asset(
                                    "assets/images/raccoon.png",
                                    width: 100.0,
                                    height: 100.0,
                                  )
                                : const SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                  )),
                        InkWell(
                          onTap: () async {
                            final isChecked = await Navigator.pushNamed(
                                context, "/word",
                                arguments: WordArgument("Food", "9"));

                            if (isChecked != null) {
                              setState(() {
                                isShow[3] = false;
                                isShow[4] = true;
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff3AA546)),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Text(
                              "Food",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        ),
                      ])),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 20,
                    top: MediaQuery.of(context).size.height - 470.0,
                    child: Column(
                      children: [
                        SizedBox(
                            child: isShow[2]
                                ? Image.asset(
                                    "assets/images/raccoon.png",
                                    width: 100.0,
                                    height: 100.0,
                                  )
                                : const SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                  )),
                        InkWell(
                          onTap: () async {
                            final isChecked = await Navigator.pushNamed(
                                context, "/word",
                                arguments: WordArgument("Time", "8"));

                            if (isChecked != null) {
                              setState(() {
                                isShow[2] = false;
                                isShow[3] = true;
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff3AA546)),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Text(
                              "Time",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 150,
                    top: MediaQuery.of(context).size.height - 370.0,
                    child: Column(
                      children: [
                        SizedBox(
                            child: isShow[1]
                                ? Image.asset(
                                    "assets/images/raccoon.png",
                                    width: 100.0,
                                    height: 100.0,
                                  )
                                : const SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                  )),
                        InkWell(
                          onTap: () async {
                            final isChecked = await Navigator.pushNamed(
                                context, "/word",
                                arguments: WordArgument("Color", "7"));

                            if (isChecked != null) {
                              setState(() {
                                isShow[1] = false;
                                isShow[2] = true;
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff3AA546)),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Text(
                              "Color",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 50,
                    top: MediaQuery.of(context).size.height - 300.0,
                    child: Column(
                      children: [
                        SizedBox(
                            child: isShow[0]
                                ? Image.asset(
                                    "assets/images/raccoon.png",
                                    width: 100.0,
                                    height: 100.0,
                                  )
                                : const SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                  )),
                        InkWell(
                          onTap: () async {
                            final isChecked = await Navigator.pushNamed(
                                context, "/word",
                                arguments: WordArgument("City", "6"));

                            if (isChecked != null) {
                              setState(() {
                                isShow[0] = false;
                                isShow[1] = true;
                              });
                            }
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xff3AA546)),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Text(
                              "City",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: MediaQuery.of(context).size.height - 80,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/course/1");
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: const Color(0xff3AA546)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          color: const Color(0xff3AA546),
                        ),
                        child: Text(
                          "< PREV",
                          style: GoogleFonts.nerkoOne(
                              fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
