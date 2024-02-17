import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:english_edu/pages/word/checked_argument.dart';
import 'package:english_edu/pages/word/word_argument.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WordPage extends StatelessWidget {
  WordPage({super.key});

  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
  final Map<String, List<bool>> isChecked = {
    "2": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "3": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "4": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "5": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "6": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "7": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "8": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ],
    "9": [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ]
  };

  final Map<String, List<String>> data = {
    "2": [
      "Mother 어머니",
      "Father 아버지",
      "Brother 남동생",
      "Sister_in-law 새언니,형수",
      "Grandmother 진/외조할머니",
      "Grandfather 진/외조할아버지",
      "Aunt 고모,이모,삼촌어머니",
      "Uncle 고모,이모,이모아버지",
      "Cousin 사촌,친척"
    ],
    "3": [
      "Sunny 화창한",
      "Rainy 비가_오는",
      "Cloudy 흐린",
      "Windy 바람이_부는",
      "Stormy 태풍이_부는",
      "Snowy 눈이_오는",
      "Foggy 안개가_낀",
      "Humid 습한",
      "Chilly 쌀쌀한"
    ],
    "4": [
      "Tiger 호랑이",
      "Wolf 승냥이",
      "Pig 돼지",
      "Cat 고양이",
      "Panda 고양이곰",
      "Dolphin 곱등어",
      "Zebra 줄말",
      "Dog 개",
      "Fish 물고기"
    ],
    "5": [
      "Soccer 축구",
      "Swim 수영",
      "Tennis 테니스",
      "Basketball 롱구",
      "Baseball 야구",
      "Fencing 펜싱",
      "Bowling 보링",
      "Skate 스케트",
      "League_of_Legend 리그_오브_레전드"
    ],
    "6": [
      "Bank 저금소",
      "Shop 가게",
      "School 학교",
      "Restaurant 식당",
      "Post_Office 체신소",
      "Hospital 병원",
      "Airport 비행장",
      "Bus 버스",
      "Taxi 택시"
    ],
    "7": [
      "green 록색",
      "blue 청색",
      "red 홍색",
      "purple 보라색",
      "brown 밤색",
      "orange 감색",
      "white 흰색",
      "black 검정색",
      "yellow 노란색",
    ],
    "8": [
      "7:00 It's_seven_or_It's_seven_o'clock",
      "7:05 It's_seven_-_oh-_five",
      "7:10 It's_seven_ten",
      "7:15 It's_seven_fifteen",
      "7:20 It's_seven_twenty",
      "7:30 It's_seven_thirty",
      "7:40 It's_seven_forty",
      "7:45 It's_seven_forty_five",
      "7:50 It's_seven_fifty",
    ],
    "9": [
      "bread 빵",
      "rice 쌀,밥",
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
    String title = data.split(" ")[0].replaceAll("_", " ").toUpperCase();
    String content = data.split(" ")[1].replaceAll("_", " ");

    Get.defaultDialog(
        title: title,
        content: Text(content),
        textConfirm: '듣기',
        textCancel: "확인",
        confirmTextColor: Colors.white,
        onConfirm: () {
          if (content.contains("seven") || title.contains("월")) {
            _assetsAudioPlayer.open(
              Audio.network("assets/audios/${content.toLowerCase()}.mp3"),
              loopMode: LoopMode.none,
            );
          } else {
            _assetsAudioPlayer.open(
              Audio.network("assets/audios/${title.toLowerCase()}.mp3"),
              loopMode: LoopMode.none,
            );
          }

          _assetsAudioPlayer.play();
        });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WordArgument;
    late List<String> words;
    late List<bool> isCheckedInDay;

    if (data[args.day] != null) {
      words = data[args.day]!;
      isCheckedInDay = isChecked[args.day]!;
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
                    Navigator.pop(context, CheckedArgument(isCheckedInDay));
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
                  isCheckedInDay[index] = true;
                },
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      words[index]
                          .split(" ")[0]
                          .replaceAll("_", " ")
                          .toUpperCase(),
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
