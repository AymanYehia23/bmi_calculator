import 'package:flutter/material.dart';
import 'package:bmi_calculator/shared/components.dart';
import 'package:bmi_calculator/shared/constanents.dart';

class InfoContainer extends StatefulWidget {
  @override
  _InfoContainerState createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Expanded(
            child:infoContainer(
              label: 'age',
              num: Info.age,
              functionMinus: (){
                setState(() {
                  Info.age--;
                });
              },
              functionPlus: (){
                setState(() {
                  Info.age++;
                });
              },
              tagMinus: 'age-',
              tagPlus: 'age+',
            )
        ),
        SizedBox(width: 20,),
        Expanded(
          child: infoContainer(
            label: 'weight',
            num: Info.weight,
            functionMinus: (){
              setState(() {
                Info.weight--;
              });
            },
            functionPlus: (){
              setState(() {
                Info.weight++;
              });
            },
            tagMinus: 'weight-',
            tagPlus: 'weight+',
          )
        ),
      ],
    );
  }
}
