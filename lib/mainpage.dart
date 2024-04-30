import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Mymain extends StatelessWidget {
  const Mymain({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text('Centimeter to Meter',style: TextStyle(color: Colors.black),),
    backgroundColor: Colors.pink[200],
    ),
        body: const Myconverter(),
      ),
    );
  }
}
class Myconverter extends StatefulWidget {
  const Myconverter({super.key});

  @override
  State<Myconverter> createState() => _MyconverterState();
}

class _MyconverterState extends State<Myconverter> {
  TextEditingController centimeterController = TextEditingController();
  String result ='';
  void convert(){
    double cm = double.tryParse(centimeterController.text)?? 0;
    double meter = cm /100;
    setState(() {
      result = '$cm centimeter = $meter meter';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30 ,top: 130),
      child: Container(
        width: 300,
        height: 380,
        decoration: const BoxDecoration(
            color: Colors.blueAccent,
            boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 20.0
            )
            ],
            borderRadius: BorderRadius.all(Radius.circular(10),
            )
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                TextField(
                  controller: centimeterController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Your Value',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center, backgroundColor: Colors.lightGreenAccent
                  ),
                  onPressed: () {
                    convert();
                  },
                  child: Text('Convert',style: TextStyle(color: Colors.black),),
                ),

                SizedBox(height: 50.0),
                Text(
                  result,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
    }



