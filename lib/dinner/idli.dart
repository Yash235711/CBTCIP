import 'package:flutter/material.dart';

class Myidli extends StatelessWidget {
  const Myidli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Idli Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/idli.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Idli Smaber Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Pressure cook the arhar dal till it is soft and completely cooked.'
                        'Heat oil and add hing and curry leaves. Let both of them splatter.'
                        'Add onion, ladyfinger, brinjal, and tomatoes (In the same order as mentioned).'
                    'Let all of them fry.'
                    'Add turmeric and salt, cover and let them fry.'
                'Add the sambar masala powder. Keep frying till the raw smell of masala goes away.'
                'Add tamarind pulp and jaggery powder. Let it cook for another 3-5 minutes.'
                    'Finally, add the pressure cook dal.'
                'Cover and let it cook for a good 8-10 minutes.'
                'You can adjust the water as per the sambar consistency you desire.'
                    'Heat oil in a tempering pan.'
                    'Add mustard seeds, urad dal, hing, and curry leaves.'
                'Let all of them splatter for a few seconds.'
                'Transfer the temper into the Kerala sambar idli pan and let the aromas dissolve for a good'
                '5-7 minutes.'
                'Your tasty Kerala Idli Sambar is ready. This is one of the easiest and different idli sambar recipes'
                'where you can enjoy the authenticity of Kerala Idli Sambar.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
