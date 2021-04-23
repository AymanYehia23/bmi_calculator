import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bmi_calculator/moduels/bmi/widgets/gender_widget.dart';
import 'package:bmi_calculator/moduels/bmi/widgets/height_widget.dart';


import '../widgets/calculate_widget.dart';
import '../widgets/info_widget.dart';


class BMIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GenderContainer(),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:HeightContainer(),
              ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: InfoContainer()
            ),
          ),
          SizedBox(height: 20,),
          CalculateButton(),
        ],
      ),
    );
  }
}
