import 'package:english_edu/pages/word/word_argument.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseFirstPage extends StatelessWidget {
  const CourseFirstPage({super.key});

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
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/word",
                            arguments: WordArgument("Sport", "5"));
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
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 130,
                    top: MediaQuery.of(context).size.height - 630.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/word",
                            arguments: WordArgument("Animal", "4"));
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
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 20,
                    top: MediaQuery.of(context).size.height - 470.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/word",
                            arguments: WordArgument("Weather", "3"));
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
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 150,
                    top: MediaQuery.of(context).size.height - 370.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/word",
                            arguments: WordArgument("Family", "2"));
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
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 + 50,
                    top: MediaQuery.of(context).size.height - 300.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/alphabet");
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
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: MediaQuery.of(context).size.height - 100,
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
