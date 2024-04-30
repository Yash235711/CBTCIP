import 'package:flutter/material.dart';

class Mybaingan extends StatelessWidget {
  const Mybaingan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Baingan Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/bang.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Baingan Masala Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('firstly, take the cut brinjal and stuff the prepared stuffing.'
                        'and fry on medium flame with 3 tbsp of oil.'
                        'cover and simmer for 2-4 minutes or till they are half cooked.'
                        'further, take off and keep aside.'
                        'now in the same kadai add mustard seeds, methi and curry leaves.'
                        'allow to splutter.'
                        'further add onions and saute well.'
                        'also add prepared onion-tomato paste and continue to saute.'
                        'furthermore, place the stuffed and fried brinjals.'
                        'and pour tamarind wate add a piece of jaggery.'
                        'mix gently, cover and simmer for 5 minutes.'
                        'stir occasionally and cook till the brinjal gets cooked completely.'
                        'finally, serve baingan masala with chapathi or roti.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
