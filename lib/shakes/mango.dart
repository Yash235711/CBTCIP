import 'package:flutter/material.dart';

class Mymango extends StatelessWidget {
  const Mymango({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Mango Shake Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/mang.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Mango Shake Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.Rinse and pat dry 2 medium-sized mangoes that are ripe and sweet. Peel and chop them. Discard the stones. Add chopped mangoes in a blender jar.'
                        '2.Add 1.5 cups of whole milk. Milk can be chilled or at room temperature. You can add about 1 to 3 tablespoons of sugar at this point. The alphonso variety of mangoes I used were very sweet, so I did not add any sugar.'
                        '3.Add 2 to 3 ice cubes. Adding ice cubes is optional.'
                        '4. Blend till smooth. There should be no chunks of mangoes in the shake. This is a thick milkshake. For a slightly thinner milkshake, you can add more milk.'
                        'Check the taste. If the mango milkshake is not sweet, then add 1 to 3 tablespoons sugar and blend again so that the sugar dissolves.'
                        'Instead of sugar, choose to add 1 to 2 tablespoons honey or palm sugar, coconut sugar, brown sugar or jaggery.'
                        '5.Pour mango milkshake in glasses and serve immediately. If you prefer top the mango shake with some chopped nuts or whipped cream or a scoop of ice cream – like vanilla ice cream or mango ice cream.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}