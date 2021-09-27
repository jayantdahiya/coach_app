import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../custom_icons_icons.dart';
import 'my_diet.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MyDiet()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                RichText(text: TextSpan(
                    style: TextStyle(color: Color(0xff79dd72)),
                    children: [
                      TextSpan(text: '30 %\n', style: TextStyle(fontSize: 80)),
                      TextSpan(text: 'Completado', style: TextStyle(fontSize: 32))
                    ]
                ),
                ),
                SizedBox(
                  height: 40,
                ),
                CircularPercentIndicator(
                  startAngle: 45,
                  radius: 200.0,
                  animation: true,
                  animationDuration: 3000,
                  lineWidth: 30.0,
                  backgroundWidth: 15,
                  percent: 0.3,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.grey,
                  progressColor: Color(0xff79dd72),
                  center: Icon(CustomIcons.create_meal, color: Color(0xff79dd72), size: 120,),
                ),
              ],
            ),
            Text(
              "Espere por favor, estamos \n creando tu dieta",
              style: TextStyle(color: Color(0xff79dd72), fontSize: 32, fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
