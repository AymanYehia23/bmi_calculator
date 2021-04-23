import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget genderContainer({
  @required bool isMale ,
  @required String imagePath,
  @required String label,
  @required Function function
}) => GestureDetector(
  onTap: function,
  child:   Neumorphic(
    style: NeumorphicStyle(
        shape: isMale ? NeumorphicShape.convex : NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: isMale ? -10 : 20,
        intensity: 1,
        lightSource: LightSource.topLeft,
        color: isMale ? Colors.cyan : Colors.white
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Image(
          image: AssetImage(imagePath),
          height: 90,
          width: 90,
        ),
        SizedBox(height: 10,),
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
);


Widget infoContainer({
  @required String label,
  @required int num,
  @required Function functionPlus,
  @required Function functionMinus,
  @required String tagPlus,
  @required String tagMinus,
}) => Neumorphic(
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
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10,),
      Text(
        '$num',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          FloatingActionButton(
            backgroundColor: Colors.cyan,
            heroTag: tagMinus,
            child: Icon(
              Icons.remove,
            ),
            mini: true,
            onPressed: functionMinus
          ),
          FloatingActionButton(
            backgroundColor: Colors.cyan,
            heroTag: tagPlus,
            child: Icon(
              Icons.add,
            ),
            mini: true,
            onPressed: functionPlus
          ),
        ],
      ),
    ],
  ),
);
