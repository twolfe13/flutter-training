// STATEFUL ! - Changes dice number image after pressing button.

import 'package:flutter/material.dart';
import 'dart:math';

// can be globally available here outside of functions because it only has to be created once, no need to keep it inside of the class
final randomizer = Random();

// stateful widget doesn't need build: the class below that extends has it
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

// need leading underscore, means class will be private.. only usable in this file, can't call it to another
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

// Rolls the dice. Changes the activeDiceImage variable.
//void because onPressed which is using it, wants to return nothing.. so needs to be void
  void rollDice() {
    // allows app to run again / update after variable is changed

    // state generates random integer.
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // generates random integer from 1 <> 6  -- the "+ 1" made min change from 0 to 1
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisSize: sets the vertical alignment.
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // used in constructor functions, to change the dice
          'assets/images/dice-$currentDiceRoll.png', // injects dice roll value dynamicaly by using $
          width: 200,
        ),

        // padding method #1 - use a widget in between the image and the button - SizedBox
        const SizedBox(height: 80),

        TextButton(
          // needed to execute button, used void function in constructor section
          onPressed: rollDice,

          style: TextButton.styleFrom(
            // Padding method #2 - Use EdgeInsets inside .styleFrom()
            // EdgeInsets.all() adds padding to all, unlike EdgeInsets.only() that sets only top for example

            // padding: const EdgeInsets.only(
            //   top: 70,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 48),
          ),
          // Text() is after style because it's best flutter practice to have widget arguments last*
          child: const Text('Roll Dice bitch'),
        )
      ],
    );
  }
}
