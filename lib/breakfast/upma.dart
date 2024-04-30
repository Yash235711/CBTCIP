import 'package:flutter/material.dart';

class Myupma extends StatelessWidget {
  const Myupma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Upma Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 200,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: 5)],
                    image: const DecorationImage(
                      image: AssetImage('assest/fimages/upma.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Upma Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(blurRadius: 5)],
                  color: Colors.blueAccent,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('1.Dry roast the rava in a pan until it turns a light brown (about 7-10 mins). Transfer to a bowl when done and set aside to cool.'
                        '2.Heat oil in the same pan and add the mustard seeds, urad dal and curry leaves. When the dal turns golden brown and the mustard seeds splutter, add the onions, green chillies and ginger. Fry for 4-5 mins until the onions turns golden brown.'
                        '3.Now add the peas and vegetables. Mix well. Add about 3 cups water and cook closed until the vegetables turn soft.'
                        '4.Open, add salt and mix well. Then lower fire to sim and add the roasted rava little at a time, stirring constantly to avoid lumps. Continue to cook and stir for another 5 mins.'
                        '5.Remove and serve hot with vegetable sambar and coconut chutney',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}