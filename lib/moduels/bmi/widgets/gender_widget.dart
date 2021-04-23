import 'package:flutter/material.dart';
import 'package:bmi_calculator/shared/components.dart';
import 'package:bmi_calculator/shared/constanents.dart';

class GenderContainer extends StatefulWidget {
  @override
  _GenderContainerState createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Expanded(
          child: genderContainer(
              imagePath: 'assets/images/male-gender.png',
              label: 'male',
              isMale: Info.isMale,
              function: (){
                setState(() {
                  Info.isMale = true;
                });
              }
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: genderContainer(
              imagePath: 'assets/images/woman.png',
              label: 'female',
              isMale: !Info.isMale,
              function: (){
                setState(() {
                  Info.isMale = false;
                });
              }
          ),
        ),
      ],
    );
  }
}
