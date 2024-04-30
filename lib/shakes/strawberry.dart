import 'package:flutter/material.dart';

class Mystra extends StatelessWidget {
  const Mystra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Strawberry Shake Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/stra.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Strawberry Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.First, rinse and drain 250 grams (about 22 to 25 small to medium) of fresh strawberries.'
                        '2. Slice off the green leafy part from all the strawberries. This is also called as hulling the strawberries. Then roughly chop them.'
                        '3.Add the chopped strawberries to a blender jar.'
                        '4.Add 2 to 2.5 cups of chilled milk, depending on whether you want a thinner or thicker strawberry milkshake. You can also add one or two scoops of vanilla or strawberry ice cream to make a thicker and creamier shake.'
                        '5.Add sugar as required. If the strawberries are very sweet or you’re using ice cream, then you don’t need to add any sugar. I added 3 tablespoons of raw sugar, but you can use granulated white sugar also.'
                        '6. Blend the milkshake until smooth'
                        '7. Pour into two tall glasses and serve the strawberry shake immediately. You can also add a scoop of vanilla or strawberry ice cream at the end for an extra sweet treat.'
                        ,style: TextStyle(fontSize: 18),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}