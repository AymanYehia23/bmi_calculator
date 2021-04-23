import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bmi_calculator/shared/constanents.dart';

import '../screens/bmi_result_screen.dart';

class CalculateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          depth: 20,
          intensity: 1,
          lightSource: LightSource.topLeft,
          color: Colors.white,
        ),
        child: TextButton(
          child: Text(
            'CALCULATE',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed: (){
            double result = Info.weight / pow(Info.height / 100, 2);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BMIResultScreen(
                  result: result.round(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
