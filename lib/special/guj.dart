import 'package:flutter/material.dart';

class Myguj extends StatelessWidget {
  const Myguj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Gujarat Special Food',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/guj.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Khamand Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                  child: Text('Grease a steamer pan with 2 to 3 teaspoons of oil.'
                      'Take besan or gram flour in a mixing bowl or pan.'
                      'Add turmeric powder, asafoetida, lemon juice, ginger paste, green chilies paste, sugar, oil and salt.'
                      'Add 1 cup water or as required to make thick yet flowing water. The amount of water required depends on the quality of flour, so add as required.'
                      'Stir and then add the rava or sooji (semolina).'
                  'Stir to a smooth thick batter without any lumps.'
                'The batter should be thick yet flowing. A quick tip is that if the batter become thin, then add 1 to 2 tablespoons besan.'
                'Bring to a boil 2 to 2.5 cups of water in a steamer pan or electric cooker or a stove-top pressure cooker.'
                'The amount of water to be added depends on the size of the steamer or pressure cooker.'''
                'Now add the eno or fruit salt to the batter.'
                    'Stir briskly and quickly. The fruit salt should be mixed evenly with the batter. Or else you get uneven texture in the khaman.'
                'The batter would froth and become bubbly, so you have to be quick.'
                'Pour the batter in the greased pan.'
                'Place the pan in a steamer or electric rice cooker or pressure cooker. The water should already be boiling or hot when you place the pan with the batter. When using pressure cooker, remove the vent weight/whistle from the lid and cover the cooker tightly with its lid.'
                'Steam for 15 to 20 minutes in an electric cooker. If using a pan or pressure cooker, steam for 12 to 15 minutes on a medium to high heat.'
                    'To check the doneness, insert a toothpick and if it comes out clean, the khaman is done. If the toothpick has the batter on it, then you need to steam for some more time.'
                'When the khaman become lukewarm or cool, then with a butter knife gently slid along the edges. Keep a plate or tray on top of the pan.'
                'Invert the pan. If greased well, the khaman will easily get inverted on the plate. Slice and keep aside.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
