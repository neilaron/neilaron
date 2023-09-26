import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int active = 6;
  List<String> diceImage = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Dice-1.svg/2048px-Dice-1.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Dice-2.svg/557px-Dice-2.svg.png',
    'https://www.clipartmax.com/png/small/254-2542653_this-image-rendered-as-png-in-other-widths-dice-2-png.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Dice-4.svg/557px-Dice-4.svg.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Dice-5.svg/1024px-Dice-5.svg.png',
    'data:image/png;base64,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',
    'https://clipart-library.com/images/qcBX8Xp8i.gif'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.yellow,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Mr. Patrick\'s dice',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Image.network(
                diceImage[active],
                //color: const Color.fromARGB(255, 3, 140, 252),
                width: 500,
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(6);
                  setState(() {
                    active = ranNum;
                  });
                },
                child: const Text(
                  'ROLL IT TOMAS!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
