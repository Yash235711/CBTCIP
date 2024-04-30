import 'package:converter/centimili.dart';
import 'package:converter/doller.dart';
import 'package:converter/kiilometer.dart';
import 'package:converter/kilogram.dart';
import 'package:converter/mainpage.dart';
import 'package:converter/milimeter.dart';
import 'package:flutter/material.dart';

class Myselect extends StatelessWidget {
  const Myselect ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Converter Options',
            style: TextStyle(fontSize: 17,color: Colors.black),),
          backgroundColor: Colors.pink[200],
        ),
        body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child :Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:50,top: 20,left: 25),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      boxShadow: [BoxShadow(
                        blurRadius: 10.0
                      )],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.lightBlue
                      ),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mymili()));
                    }, child: const Text('Mm to meter',
                      style: TextStyle(fontSize: 14,color: Colors.black),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:50,top: 20,left: 10),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        boxShadow: [BoxShadow(
                            blurRadius: 10.0
                        )],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue
                      ),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mymain()));
                    }, child: const Text('Cm to meter',
                      style: TextStyle(fontSize: 14,color: Colors.black),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:50,top: 20,left: 10),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        boxShadow: [BoxShadow(
                            blurRadius: 10.0
                        )],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue
                      ),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mycentimili()));
                    }, child: const Text('Mm to Cm',
                      style: TextStyle(fontSize: 14,color: Colors.black),),
                    ),
                  ),
                ),
              ],
            ),
            Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 100),
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          boxShadow: [BoxShadow(
                              blurRadius: 10.0
                          )],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue
                          ),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mykilo()));
                      },
                          child: const Text('Kg to gram',
                            style: TextStyle(fontSize: 14,color: Colors.black),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 100),
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          boxShadow: [BoxShadow(
                              blurRadius: 10.0
                          )],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue
                          ),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mykilomet()));
                      },
                          child: const Text('Km to Meter',
                            style: TextStyle(fontSize: 14,color: Colors.black),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 100),
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          boxShadow: [BoxShadow(
                              blurRadius: 10.0
                          )],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue
                          ),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mydollorrup()));
                      },
                          child: const Text('ML to Liter',
                            style: TextStyle(fontSize: 14,color: Colors.black),)),
                    ),
                  ),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
