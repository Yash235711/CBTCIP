
import 'package:converter/centimili.dart';
import 'package:converter/doller.dart';
import 'package:converter/kiilometer.dart';
import 'package:converter/mainpage.dart';
import 'package:converter/milimeter.dart';
import 'package:converter/selectfile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'selectfile',
    routes: {
  'mainpage':(context) =>Mymain(),
  'selectfile':(context) => Myselect(),
  'milimetre':(context) =>  Mymili(),
   'centimili':(context) => Mycentimili(),
      'kiilometer' :(context) => Mykilomet(),
      'dollor': (context) => Mydollorrup(),
  },
  ));


