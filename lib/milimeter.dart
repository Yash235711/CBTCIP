import 'package:flutter/material.dart';

class Mymili extends StatelessWidget {
  const Mymili({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Milimeter to Meter ',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.pink[200],
        ),
        body: Mymilimeter(),
      ),
    );
  }
}
class Mymilimeter extends StatefulWidget {
  const Mymilimeter({super.key});

  @override
  State<Mymilimeter> createState() => _MymilimeterState();
}

class _MymilimeterState extends State<Mymilimeter> {
  TextEditingController milimeter = TextEditingController();
  String result ='';
  void change(){
    double mm = double.tryParse(milimeter.text)?? 0;
    double meter = mm/1000;
    setState(() {
      result = '$mm Milimeter = $meter Meter';
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
                  controller: milimeter,
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
                    change();
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

