import 'dart:async';
import 'package:converter/selectfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Myfirstpage extends StatelessWidget {
  const Myfirstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myfisrt(),
    );
  }
}
class Myfisrt extends StatefulWidget {
  const Myfisrt({super.key});

  @override
  State<Myfisrt> createState() => _MyfisrtState();
}

class _MyfisrtState extends State<Myfisrt> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Myselect()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          child: Lottie.asset('assests/animation/unit.json'),
        )
    );
  }
}