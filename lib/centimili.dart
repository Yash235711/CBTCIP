import 'package:flutter/material.dart';

class Mycentimili extends StatelessWidget {
  const Mycentimili({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Milimeter to Centimeter',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.pink[200],
        ),
        body: const Mymilicent(),
      ),
    );
  }
}
class Mymilicent extends StatefulWidget {
  const Mymilicent({super.key});

  @override
  State<Mymilicent> createState() => _MymiState();
}

class _MymiState extends State<Mymilicent> {
  TextEditingController milicent = TextEditingController();
  String result= '';
  void draw(){
    double mm = double.tryParse(milicent.text)?? 0;
    double cm = mm/10;
    setState(() {
      result = '$mm Milimeter = $cm Centimeter';
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
                  controller: milicent,
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
                    draw();
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

