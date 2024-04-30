import 'package:flutter/material.dart';

class Mykhidi extends StatelessWidget {
  const Mykhidi({super.key});

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
                      image: AssetImage('assest/fimages/kich.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Kichdi Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Wash and soak rice and dal together for half hour.'
                        'Meanwhile prep the other ingredients needed.'
                        'Once ½ hour is up, in a pressure cooker, take soaked dal and rice with turmeric, vegetables and ½ the salt.'
                        'Bring everything to boil and close the lid, put the pressure valve after steam comes.'
                        'Pressure cook for 3 whistles. Make sure you use a big pressure cooker. I used my pot shaped cooker. After first whistle, put the flame to medium.'
                        'Heat a kadai and temper with cumin, ginger, green chilli, curry leaves and give it a stir.'
                        'Add tomatoes, remaining salt, red chilli powder, coriander leaves and garam masala.'
                        'Fry until mushy and oil separates. By now the rice, dal, veggies will be done. Open the cooker and  mash well.'
                        'Add the tomato with other masalas we fried, to it and mix well.'
                        'If you want, you can let it cook together for couple of minutes, or just mix and have it.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
