import 'package:coach_app/Screens/main_screens/profile/setting.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class ModificationSubscription extends StatefulWidget {
  const ModificationSubscription({Key? key}) : super(key: key);

  @override
  _ModificationSubscriptionState createState() => _ModificationSubscriptionState();
}

class _ModificationSubscriptionState extends State<ModificationSubscription> {

  Color _color = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Image.asset("assets/appbar.png",
            height: 25,
            fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("MODIFICACI??N",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900
                              ),),
                            Text("DE SUSCRIPCI??N",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900
                              ),)
                          ],
                        ),
                      ),
                      Container()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Icon(CustomIcons.badge, color: Color(0xff79dd72), size: 44,)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Setting(),
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.60,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "VUELVETE PREMIUM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "-30%",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // use setState
                      _color = Colors.green;
                    });
                    print('clicked');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: _color,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 2, left: 2, right: 2, bottom: 10),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "12 MESES",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "\$799",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$66.58",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "al mes",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Convi??rtete en experto/a de tu propio bienestar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // use setState
                      _color2 = Colors.green;
                    });
                    print('clicked');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: _color2,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 2, left: 2, right: 2, bottom: 10),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "3 MESES",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "\$499",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$166.33",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "al mes",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Con??ce los beneficios de una vida saludable",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // use setState
                      _color3 = Colors.green;
                    });
                    print('clicked');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: _color3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 2, left: 2, right: 2, bottom: 10),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "1 MESES",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w900,
                                            fontStyle: FontStyle.normal),
                                      ),
                                      Text(
                                        "\$229",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25, left: 45),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "\$299.00",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w900,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        Text(
                                          "al mes",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Mejora tus h??bitos",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
