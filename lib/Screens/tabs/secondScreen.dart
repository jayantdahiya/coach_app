import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coach_app/widget/tab_status.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
        backgroundColor: Color(0xff222220),
        body: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabStatus(
                color1: Color(0xff79dd72),
                color2: Color(0xff79dd72),
                color3: Colors.white,
                color4: Colors.white,
                color5: Colors.white,
                color6: Colors.white,
              ),
              Center(
                child: Text(
                  'Elige tu objetivo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Icon(CustomIcons.tab2, color: Color(0xff79dd72), size: 180,),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      users.doc(user!.uid).update({'goal': 'LOSE FAT'});
                      DefaultTabController.of(context)!.animateTo(2);
                    },
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'PERDER GRASA',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      users.doc(user!.uid).update({'goal': 'MAINTENANCE'});
                      DefaultTabController.of(context)!.animateTo(2);
                    },
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'MANTENIMIENTO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      users.doc(user!.uid).update({'goal': 'INCREASE MUSCLE'});
                      DefaultTabController.of(context)!.animateTo(2);
                    },
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'AUMENTAR MÚSCULO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  DefaultTabController.of(context)!.animateTo(2);
                },
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'CONTINUAR',
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff627674), fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                  primary: Color(0xff79dd72),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(),
            ],
          ),
        ));
  }
}
