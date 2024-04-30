import 'package:flutter/material.dart';

class Mybanana extends StatelessWidget {
  const Mybanana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Banana Shake Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/bana.jpg'),
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
                    child: Text('1. First peel and chop 3 medium sized bananas, roughly 2 cups. Add the chopped bananas in a mixer or blender jar.'
                        '2.Then add 2 cups of lite coconut milk or thin coconut milk, preferably cold or chilled. I have used Homemade Coconut Milk with a very thin consistency.'
                        '3. Add a ½ teaspoon of vanilla extract, or 1 to 2 pinches of vanilla powder. This is optional, but the vanilla really does help to balance the sweetness of the banana and adds great flavor.'
                        '4.Add 2 to 3 tablespoons, or more or less to taste, of raw sugar or jaggery.'
                        'You can also use palm sugar, coconut sugar, honey or maple syrup instead of raw sugar, if you prefer. Or opt to omit the sweetener.'
                         '5. Blend until smooth. If you find the banana shake to be very thick, add a few splashes of water and blend again until you get the desired consistency.'
                        '6. Pour into 2 large or 3 small glasses',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}