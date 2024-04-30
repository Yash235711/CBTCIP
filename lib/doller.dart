import 'package:flutter/material.dart';

class Mydollorrup extends StatelessWidget {
  const Mydollorrup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('USD to Indian Rupee',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.pink[200],
        ),
        body: Myrupee(),
      ),
    );
  }
}
class Myrupee extends StatefulWidget {
  const Myrupee({super.key});

  @override
  State<Myrupee> createState() => _MyrupeeState();
}

class _MyrupeeState extends State<Myrupee> {
  TextEditingController dollortorupee = TextEditingController();
  String result = '';
  void main(){
    double d = double.tryParse(dollortorupee.text)??0;
    double rup = d * 83.32;
    setState(() {
      result = '$d Dollor is = $rup Rupee';
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
                  controller: dollortorupee,
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
                    main();
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

