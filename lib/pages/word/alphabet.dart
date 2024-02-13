import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AlphabetPage extends StatelessWidget {
  AlphabetPage({super.key});

  final List<String> _alphabets = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];

  final Map<String, List<String>> example = {
    "a": ["Apple 사과", "Ant 개미", "Airplane 비행기"],
    "b": ["Banana 바나나", "Bed 침대", "Bear 곰"],
    "c": ["Cat 고양이", "Can 깡통", "Candy 사탕"],
    "d": ["Dog 고양이", "Day 날", "Dig 파다"],
    "e": ["Egg 달걀", "Ear 귀", "End 끝나다"],
    "f": ["Fix 수리하다", "Fox 여우", "Fun 재미있는"],
    "g": ["Good 좋은", "Green 초록", "Game 게임"],
    "h": ["Happy 행복", "Help 도움", "Hat 모자"],
    "i": ["It 그것", "Ice 얼음", "In ~안에"],
    "j": ["Jump 점프", "Joy 기쁨", "Jacket 재킷"],
    "k": ["Key 열쇠", "Kind 종류", "Kick 차다"],
    "l": ["Love 사랑", "Like 좋아하다", "Laugh 웃다"],
    "m": ["Mom 엄마", "Milk 우유", "Mouse 쥐"],
    "n": ["Now 지금", "Name 이름", "Number 숫자"],
    "o": ["One 하나", "Orange 오렌지", "Open 열다"],
    "p": ["Please 부탁", "Play 즐기다", "Purple 보라"],
    "q": ["Quite 조용한", "Quick 빠른", "Queen 여왕"],
    "r": ["Red 빨강", "Role 역할", "Rabbit 토끼"],
    "s": ["Sun 태양", "Sad 슬픔", "Sand 모래"],
    "t": ["Time 시간", "Tree 나무", "Talk 대화"],
    "u": ["Up 위", "Under 아래", "Use 사용하다"],
    "v": ["Very 매우", "Violin 바이올린", "Visit 참여"],
    "w": ["Water 물", "Walk 걷다", "White 하양"],
    "x": ["X-ray 엑스레이", "Xylophone 실로폰", "Xing 횡단보도"],
    "y": ["Yellow 노랑", "Year 연/년", "Yes 네"],
    "z": ["Zoo 동물원", "Zero 영", "Zap 기력"],
  };

  void showDefaultDialog(String alphabet) {
    List<String> examples = example[alphabet]!;

    Get.defaultDialog(
      title: "${alphabet.toUpperCase()} $alphabet",
      content: Column(
          children: [Text(examples[0]), Text(examples[1]), Text(examples[2])]),
      textConfirm: 'confirm',
      confirmTextColor: Colors.white,
      onConfirm: Get.back,
    );
  }

  @override
  Widget build(BuildContext context) {
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
                  "Day 1",
                  style:
                      GoogleFonts.nerkoOne(fontSize: 40, color: Colors.white),
                ),
                Text(
                  "Alphabet",
                  style:
                      GoogleFonts.nerkoOne(fontSize: 40, color: Colors.white),
                )
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1),
              itemCount: _alphabets.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  showDefaultDialog(_alphabets[index]);
                },
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      _alphabets[index].toUpperCase(),
                      style: GoogleFonts.nerkoOne(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
