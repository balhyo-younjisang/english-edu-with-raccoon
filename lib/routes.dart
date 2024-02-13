import 'package:flutter/material.dart';
import 'package:english_edu/pages/index.dart';
import 'package:english_edu/pages/course/first.dart';
import 'package:english_edu/pages/course/second.dart';
import 'package:english_edu/pages/word/word.dart';
import 'package:english_edu/pages/word/alphabet.dart';

final routes = {
  "/": (BuildContext context) => const MainPage(),
  "/course/1": (BuildContext context) => const CourseFirstPage(),
  "/course/2": (BuildContext context) => const CourseSecondPage(),
  "/word": (BuildContext context) => WordPage(),
  "/alphabet": (BuildContext context) => AlphabetPage(),
};
