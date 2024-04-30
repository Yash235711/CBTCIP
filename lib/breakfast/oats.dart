import 'package:flutter/material.dart';

class Myoats extends StatelessWidget {
  const Myoats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Oats Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/oats.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Oats Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.Firstly, in a large kadai heat 2 tbsp ghee. add 1 bay leaf, 1 tsp cumin, 4 pods cardamom, ½ tsp cloves and 1 inch cinnamon. saute until the spices turn aromatic.'
                        '2.Add ½ onion, 2 chilli and saute until the onion softens.'
                        '3.Further add ½ carrot, 5 beans, 2 tbsp peas, ½ tomato saute for a minute or until tomatoes turn soft and mushy.'
                        '4.Now add ½ tsp turmeric, 1 tsp chilli powder, 1 tsp coriander powder, ½ tsp cumin powder, 1 tsp pav bhaji masala and ½ tsp salt. saute until the spices turns aromatic.'
                        '5.Also, add 1 cup palak and saute for 2 minutes.'
                        '6.Add 3 cup water and get to a rolling boil.'
                        '7.Once the water comes to a boil, add 1 cup rolled oats and mix well.'
                        '8.Cover and simmer for 15 to 20 minutes or until the oats are cooked well. add water adjusting the consistency as required.'
                        '9.Further add 2 tsp lemon juice and 2 tbsp coriander. mix well.'
                        '10.Finally, enjoy masala oats recipe with raita',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}