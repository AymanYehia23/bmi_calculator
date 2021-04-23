import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class BMIResultScreen extends StatelessWidget {
  final int result;
  String strResult='';
  Color color;

  BMIResultScreen({this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey[700],
          ),
        ),
        backgroundColor: Colors.grey[300],
        title: Text(
            'BMI Result',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Container(
              width: double.infinity,
              height: 220,
              child: Neumorphic(
                padding: EdgeInsets.all(8.0),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Your result is: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            result.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        getResult(),
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: color,
                        ),
                      ),
                    ],
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String getResult(){
    if(result < 18.5){
      strResult = 'Underweight';
      color = Colors.lightBlue;
    }
    else if(result > 18.5 && result < 24.9){
      strResult = 'Healthy Weight';
      color = Colors.green;
    }
    else if(result > 25.0  && result < 29.9){
      strResult = 'Overweight';
      color = Colors.yellow[700];
    }
    else{
      strResult = 'Obese';
      color = Colors.red;
    }
    return strResult;
  }
}
