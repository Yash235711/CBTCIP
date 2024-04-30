import 'package:flutter/material.dart';

class Mykilomet extends StatelessWidget {
  const Mykilomet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Kilometer to Meter',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.pink[200],
        ),
        body: Mykilometer(),
      ),
    );
  }
}
class Mykilometer extends StatefulWidget {
  const Mykilometer({super.key});

  @override
  State<Mykilometer> createState() => _MymilimeterState();
}

class _MymilimeterState extends State<Mykilometer> {
  TextEditingController kilometer = TextEditingController();
  String result ='';
  void hellow(){
    int km = int.parse(kilometer.text)?? 0;
    int M = km * 1000;
    setState(() {
      result = '$km Kilometer = $M Meter';
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
                  controller: kilometer,
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
                SizedBox(height: 50.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent
                  ),
                  onPressed: () {
                    hellow();
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

