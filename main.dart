import 'package:flutter/material.dart';
import 'package:roll_dice_1/screens/RollDice.dart';

void main() {
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDiceScreen(),
    );
  }
}
