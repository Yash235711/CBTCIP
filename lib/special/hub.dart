import 'package:flutter/material.dart';

class Myhyb extends StatelessWidget {
  const Myhyb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Hyderabad Special Food',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/hyb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Veg Biryani Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Wash and soak rice in lots of water for 30 mins. Take the grinding ingredients in a blender and make it into a smooth paste.'
                        'Heat oil and 1 tblspn of ghee in a pressure cooker. Add in pandan leaf and fry for 30 seconds. Now add in sliced onions and saute till it is brown. Add in green chillies and ground masala and saute for 2 mins till raw smell leaves from it. Add in tomatoes and cook for 2 mins or so. Sprinkle in biryani spice mix and salt. Mix well. Add in chopped veggies and toss well in the masala. Add in soaked drained rice and mix well.'
                        'Pour in water and some sugar. Taste and adjust for seasoning. Bring this to boil, simmer the stove and pressure cook for 1 whistle. Simmer for 5 minutes and turn off the flame. Switch off the heat and let the steam go all by itself. Open the cooker. Now heat 1 tblspn of ghee and fry cashews till it golden, pour this ghee and cashews over the rice and mix well. Serve.'),
                ),
              )
              ],
          ),
        ),
      ),
    );
  }
}