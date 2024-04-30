import 'package:flutter/material.dart';

class Mykilo extends StatelessWidget {
  const Mykilo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[200],
          title: const Text('Kilogram to Gram',
          style: TextStyle(fontSize: 20,color: Colors.black),),
        ),
        body: Mygram() ,
      ),
    );
  }
}
class Mygram extends StatefulWidget {
  const Mygram({super.key});

  @override
  State<Mygram> createState() => _MygramState();
}

class _MygramState extends State<Mygram> {
  TextEditingController kilpgram = TextEditingController();
  String result ='';
  void solve(){
    int kg = int.parse(kilpgram.text)?? 0;
    int gram = kg * 1000;
    setState(() {
      result = '$kg Kilogram is = $gram gram';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30 ,top: 130),
      child: Container(
        width: 300,
        height: 380,
        decoration:BoxDecoration(
            color: Colors.lightBlue,
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
                  controller: kilpgram,
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
                    backgroundColor: Colors.lightGreenAccent
                  ),
                  onPressed: () {
                    solve();
                  },
                  child: const Text('Convert',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 50.0),
                Text(
                  result,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


