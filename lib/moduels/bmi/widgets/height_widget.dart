import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:bmi_calculator/shared/constanents.dart';

class HeightContainer extends StatefulWidget {
  @override
  _HeightContainerState createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Expanded(
          child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 20,
                intensity: 1,
                lightSource: LightSource.topLeft,
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  'HEIGHT',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '${Info.height}',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'cm',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                NeumorphicSlider(
                    value: Info.height,
                    max: 220,
                    min: 80,
                    onChanged: (value){
                      setState(() {
                        Info.height = value.roundToDouble();
                      });
                    }
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
