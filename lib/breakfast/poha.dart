import 'package:flutter/material.dart';

class Mypoha extends StatelessWidget {
  const Mypoha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Poha Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/poha.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Poha Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.Take poha in a large strainer.'
                        '2.Wash it 1-2 times by gently swifting them with your fingers under running water. Drain the excess water through a strainer. Sprinkle salt and sugar over it, mix/toss well and keep aside.'
                        '3.Heat 2-tablespoons oil in a pan. Add mustard seeds; when they start to splutter, add cumin seeds, green chilies, curry leaves, peanuts and a pinch of asafoetida. Allow them to sizzle until chilies turn crisp for approx. 30-40 seconds.'
                        '4.Add chopped onions and sauté until onions turn translucent.'
                    '5.Add chopped potatoes and salt (add salt only for potatoes).'
                    '6.Mix well and cook covered until potatoes turn tender. This will take around 3-4 minutes. Stir in between occasionally to prevent sticking.'
                        '7.Cook for 2-3 minutes. Add lemon juice, dry grated coconut and finely chopped coriander leaves.'
                        '8.Mix well and turn off the flame. Batata poha is ready for serving.',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
