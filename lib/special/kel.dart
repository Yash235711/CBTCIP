import 'package:flutter/material.dart';

class Mykel extends StatelessWidget {
  const Mykel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Kelera Special Food',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/kel.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Puttu Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                   child: Text('Based on the quality and texture of the rice flour, add water as needed.'
                       'The rice flour to water ratio is important for making soft ones. Check by gently pressing a small portion of the flour between your palms. If it forms a lump, then you press it more. Finally, it should crumble and break.'
                       'While mixing the flour with the water, keep breaking all the tiny lumps with your fingertips. You can break the lumps by grinding the mixture too. but make sure to grind in batches, using the pulse option.'
                       'The time taken to steam the dish will vary with the size of the puttu kudam/maker. Since I used a large one, it took me about 9 minutes. If you are using a medium or regular size maker, it will take you about 5 to 6 minutes.'
                       'In the absence of a puttu maker, you can utilize an idli pan instead. Simply layer each idli mould with alternating layers of puttu flour and coconut, repeating the sequence until the moulds are filled. Then, steam the prepared mixture until cooked.'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}