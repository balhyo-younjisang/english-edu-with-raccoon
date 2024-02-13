import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Text("ENGLISH",
                        style: GoogleFonts.nerkoOne(
                            color: Colors.white,
                            fontSize: 70,
                            shadows: <Shadow>[
                              const Shadow(
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(255, 95, 132, 83))
                            ])),
                    Text(
                      "WITH RACCOON",
                      style: GoogleFonts.nerkoOne(
                        color: Colors.white,
                        fontSize: 50,
                        shadows: <Shadow>[
                          const Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 95, 132, 83))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Image.asset("assets/images/raccoon.png"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/course/1");
                  },
                  child: Text(
                    "Start!!",
                    style:
                        GoogleFonts.nerkoOne(fontSize: 30, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
