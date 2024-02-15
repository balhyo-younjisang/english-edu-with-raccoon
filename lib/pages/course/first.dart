import 'package:english_edu/pages/word/word_argument.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseFirstPage extends StatefulWidget {
  const CourseFirstPage({super.key});

  @override
  State<CourseFirstPage> createState() => CoursFirstPageState();
}

class CoursFirstPageState extends State<CourseFirstPage> {
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
                    top: MediaQuery.of(context).size.height - 730.0,
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
                                arguments: WordArgument("Sport", "5"));

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
                              "Sport",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 130,
                    top: MediaQuery.of(context).size.height - 630.0,
                    child: Column(
                      children: [
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
                                arguments: WordArgument("Animal", "4"));

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
                              "Animal",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 20,
                    top: MediaQuery.of(context).size.height - 500.0,
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
                                arguments: WordArgument("Weather", "3"));

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
                              "Weather",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 150,
                    top: MediaQuery.of(context).size.height - 400.0,
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
                                arguments: WordArgument("Family", "2"));

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
                              "Family",
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
                                context, "/alphabet",
                                arguments: WordArgument("Alphabet", "1"));

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
                              "Alphabet",
                              style: GoogleFonts.nerkoOne(fontSize: 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: MediaQuery.of(context).size.height - 80,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/course/2");
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
                          "NEXT >",
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
