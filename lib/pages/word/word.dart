import 'package:english_edu/pages/word/word_argument.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WordPage extends StatelessWidget {
  WordPage({super.key});

  final Map<String, List<String>> data = {
    "2": [
      "Mother 엄마",
      "Father 아빠",
      "Brother 형제",
      "Sister 자매",
      "Grandmother 할머니",
      "Grandfather 할아버지",
      "Aunt 이모",
      "Uncle 삼촌",
      "Cousin 사촌"
    ],
    "3": [
      "Sunny 화창한",
      "Rainy 비가 오는",
      "Cloudy 흐린",
      "Windy 바람이 부는",
      "Stormy 태풍이 부는",
      "Snowy 눈이 오는",
      "Foggy 안개가 낀",
      "Humid 습한",
      "Chilly 쌀쌀한"
    ],
    "4": [
      "Tiger 호랑이",
      "Wolf 늑대",
      "Pig 돼지",
      "Cat 고양이",
      "Panda 판다",
      "Dolphin 돌고래",
      "Zebra 얼룩말",
      "Dog 개",
      "Fish 물고기"
    ],
    "5": [
      "Soccer 축구",
      "Swim 수영",
      "Tennis 테니스",
      "Basketball 농구",
      "Baseball 야구",
      "Fencing 펜싱",
      "Bowling 볼링",
      "Skate 스케이트",
      "League of Legend 리그오브레전드"
    ],
    "6": [
      "Back 은행",
      "Shop 가게",
      "School 학교",
      "Restaurant 식당",
      "Post Office 우체국",
      "Hospital 병원",
      "Airport 공항",
      "Bus 버스",
      "Taxi 택시"
    ],
    "7": [
      "녹색 green",
      "파란색 blue",
      "빨간색 red",
      "보라색 purple",
      "갈색 brown",
      "주황색 orange",
      "흰색 white",
      "검정색 black",
      "노란색 yellow",
    ],
    "8": [
      "7:00 It's seven or It's seven o'clock",
      "7:05 It's seven - oh- five",
      "7:10 It's seven ten",
      "7:15 It's seven fifteen",
      "7:20 It's seven twenty",
      "7:30 It's seven thirty",
      "7:40 It's seven forty",
      "7:45 It's seven forty five",
      "7:50 It's seven fifty",
    ],
    "9": [
      "bread 빵",
      "rice 쌀, 밥",
      "noodle 국수",
      "meat 고기",
      "pumpkin 호박",
      "mushroom 버섯",
      "grape 포도",
      "strawberry 딸기",
      "candy 사탕"
    ],
    "10": [
      "1월 January",
      "2월 February",
      "3월 March",
      "4월 April",
      "5월 May",
      "6월 June",
      "7월 July",
      "8월 August",
      "9월 September"
    ],
  };

  void showDefaultDialog(String data) {
    Get.defaultDialog(
      title: data.split(" ")[0].toUpperCase(),
      content: Text(data.split(" ")[1]),
      textConfirm: 'confirm',
      confirmTextColor: Colors.white,
      onConfirm: Get.back,
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WordArgument;
    late List<String> words;

    if (data[args.day] != null) {
      words = data[args.day]!;
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "<",
                    style:
                        GoogleFonts.nerkoOne(fontSize: 40, color: Colors.white),
                  ),
                ),
                Text(
                  "Day ${args.day}",
                  style:
                      GoogleFonts.nerkoOne(fontSize: 40, color: Colors.white),
                ),
                Text(
                  args.title,
                  style:
                      GoogleFonts.nerkoOne(fontSize: 40, color: Colors.white),
                )
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1),
              itemCount: words.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  showDefaultDialog(words[index]);
                },
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      words[index].split(" ")[0].toUpperCase(),
                      style: GoogleFonts.nerkoOne(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
