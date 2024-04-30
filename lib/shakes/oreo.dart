import 'package:flutter/material.dart';

class Myoreo extends StatelessWidget {
  const Myoreo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Oreo Shake Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/oreo.jpg'),
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
                    child: Text('1.Gather the ingredients.'
                        '2.Place the vanilla ice cream, milk, 8 Oreo cookies, and the chocolate sauce in a blender and puree until smooth.'
                        '3.Crush the remaining 2 Oreo cookies for the garnish by placing them in a zip-close plastic bag and pounding on them a few times with a rolling pin until they crumble.'
                        '4.Pour the milkshakes into 2 tall glasses and top each with the crushed Oreo cookie crumbs. Garnish with a straw.',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}