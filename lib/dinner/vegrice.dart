import 'package:flutter/material.dart';

class Myvegrice extends StatelessWidget {
  const Myvegrice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Veg Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/veg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Veg Pulao Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Cover tightly and let the rice cook on a low heat, till the water is absorbed and the rice is well cooked.'
                        'Check in between a few times to check if the water is enough. Depending on the quality of rice, you may need to add less or more water.'
                        'With a fork too, you can gently stir the rice without breaking the rice grains.'
                        'Once the rice grains are cooked, fluff and let the rice stand for 5 minutes.'
                        'Serve pulao hot with some side salad, sliced onion and lemon wedges or raita. You can also garnish it with chopped coriander or mint leaves or fried cashews or fried onions.'
                        'In a deep thick bottomed pot or pan, heat ghee or oil and fry all the whole spices mentioned above, till the oil becomes fragrant and the spices splutter.'
                        'Add the onions and saute them till golden. Saute the onions on a low to medium-low heat and stir often for even browning.'
                        'Add the ginger-garlic-green chili paste and saute for some seconds till their raw aroma goes away.'
                        'Add the tomatoes and sauté for 2 to 3 minutes on a low to medium-low heat.'
                        'Add all the chopped veggies, green peas and sauté again for 1 to 2 minutes on a low to medium-low heat.'
                        'Add rice and sauté gently for 1 to 2 minutes on a low or medium-low heat, so that the rice gets well coated with the oil.'
                        'Add water and lemon juice. Mix and stir.'
                        'Season with salt and stir again.'
                        'Rinse rice till the water runs clear of starch and become transparent while rinsing.'
                        'Soak the rice in enough water for 20 to 30 minutes. Drain all the water and keep the soaked rice aside.'
                        'Rinse, peel and chop the vegetables.'
                        'Crush chopped ginger, garlic and green chillies to a paste in a mortar-pestle or grind them in a small mixer or grinder with a bit of water.)'
                ),
              )
              )],
          ),
        ),
      ),
    );
  }
}
