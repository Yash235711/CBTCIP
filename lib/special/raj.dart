import 'package:flutter/material.dart';

class Myraj extends StatelessWidget {
  const Myraj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Rasjasthan Special Food',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/raj.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Dal Bati Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('DAL:'
                        'Rinse the dals well and pressure cook for 5 whistles along with a pinch of turmeric powder, salt and 3 cups of water.'
                        'Once pressure releases, mash it well with a ladle and set aside.'
                        'In a pan heat ghee – add the items listed under ‘to temper’ and let it splutter.'
                        'Add chopped onion, garlic and saute till onions turn transparent.'
                        'Then add tomatoes along with red chilli, turmeric, coriander and garam masala powders along with salt (adjust as we have already added in dal).'
                    'Sauté for few mins until raw smell of tomatoes leave.'
                'Now add mashed dal and mix well.'
                'Let the dal boil for 5 mins, add little water if its too thick.'
                'Finally garnish with coriander leaves and switch off.'
                'BATI:'
                'In a mixing bowl – take all the ingredients listed under ‘for bati’, mix well and knead it together to form a stiff dough.'
                    'Divide the dough into small balls and flatten them using your palms.'
                'Make a small indentation in the centre of the baatis using your thumb.'
                'Arrange them in a baking tray.'
                'Preheat oven at 180 deg C for 10mins.'''
                'Bake in preheated oven for at least 25-30mins or until the top turns golden.'
                    'When it is still hot, brush with ghee.'
                'CHURMA:'
                'In a mixing bowl -take wheat flour, rava and ghee, add water to form a stiff dough.'
                'Make patties with your palms with a indentation at the center.'
                'Heat oil (you can use ghee too) and deep fry the patties in hot oil till golden brown.'
                  'Turn over and cook for even cooking, cook in low medium flame.'
              'Drain in tissue paper and set aside to cool down.'
                  'Once it is completely cool, break them into small pieces and grind it using a mixer.'
              'Grind it a little coarse. I did it in batches as I used my small mixie jar.'
                  'Collect the mixture in a bowl, add powdered sugar and cardamom powder and mix well.'
              'Chop almonds lengthwise add it along with ghee and give a quick mix',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
        ),
    );
  }
}
