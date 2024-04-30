import 'package:flutter/material.dart';

class Mysand extends StatelessWidget {
  const Mysand({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Sandwich Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/sand.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text(' Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.I suggest a good, hearty bread for veggie sandwiches, like wheat bread, sourdough, focaccia, or ciabatta. You need something that can hold up to the hefty texture of the vegetables without ripping and something that will provide a little weight in your stomach next to all those lightweight veggies.'
                        '2.I whipped up a quick scallion cream cheese that was basically a scaled-back version of my Scallion Herb Cream Cheese Spread. I just mixed together 2oz. cream cheese with one sliced green onion, ½ tsp lemon juice, ⅛ tsp garlic powder, ⅛ tsp dried dill, and a pinch of salt.'
                        '3.Since my spread was technically a cheese, I didn’t add any extra cheese. A little cheese can go a long way toward making a veggie sandwich very filling. Here are some good cheese options for veggie sandwiches:'
                        '4.And here’s where you can start to get really creative! I pulled a lonely carrot out of my produce drawer, grabbed a handful of leftover fresh spinach, sliced up a cucumber and tomato, and used the leftover half of a red bell pepper that I had from the day before. Oh, and I added some alfalfa sprouts because I love the texture they bring to the sandwich! Here are some other vegetables you can add:'
                        'With so many veggies piled onto one sandwich, a little extra ✨spice✨ is never a bad idea. I always like to add some salt and freshly cracked pepper to my tomato layer, but you can also add things like Italian herbs, sunflower seeds, everything bagel seasoning, crushed red pepper, furikake, or nutritional yeast. A sliced hard boiled egg would even be fun!',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}