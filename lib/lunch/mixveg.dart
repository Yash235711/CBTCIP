import 'package:flutter/material.dart';

class Mymixveg extends StatelessWidget {
  const Mymixveg({super.key});

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
                      image: AssetImage('assest/fimages/mixe.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Mix Veg Food Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text(' 1.Dry roast 2 teaspoons of coriander seeds for around 2 minutes in a pan on medium heat.'
                        '2- Remove the seeds from the pan and then crush them using a mortar and pestle. Set it aside.'
                        '3- Meanwhile, take another pan and put it on medium heat. Once the pan is hot, add 1 tablespoon of oil.'
                        'Now add 1 cup of cauliflower florets (medium to small florets), 1/2 cup cut french beans (15-17 beans cut into 1/2 inch pieces), and 1/2 cup diced carrots (from 2 medium carrots).'''
                        '4- Cook the veggies for around 5 minutes on medium heat, until they have a light color on them (very light brown). Remove the veggies on a plate.'
                        '5- To the same pan, now 1 more tablespoon of oil. Add 2 cloves and then 1 medium chopped red onion (finely chopped using a food processor).'
                        '6- Cook the onions for around 6 to 7 minutes until the raw smell goes away, the moisture from the onion dries out and it is light golden brown in color.'
                        '7- Add freshly pounded ginger garlic chili (1-inch ginger, 3-4 large garlic cloves and 1-2 green chili) which I crushed using a mortar and pestle. Cook for around 2 more minutes.'
                '8- Then add 1 chopped large tomato (140 grams) and also add 1 & 1/2 tablespoons tomato paste and stir. Cook for 2 to 3 minutes.'
                  '9- Add the crushed coriander seeds, 1/4 teaspoon turmeric, 1/2 teaspoon Kashmiri red chili powder, 1/2 teaspoon salt (or to taste), and 1/2 teaspoon sugar. Also add 2 tablespoons of water so that the spices don’t burn. Stir and cook the spices for 1 minute.'
      '10- Add 1 teaspoon kasuri methi and stir.'
      '11- Now, add 1/2 cup water and stir. Then add 1/2 cup frozen peas (which I soaked before in warm water for 10 mins, drained the water and then used in the recipe) and stir.'
    '12- Add all the veggies that we had prepared earlier. Mix until all the veggies are coated with the spices. Also add 1 tablespoon chopped cilantro.'
    '13-Let the veggies cook until done. Cook uncovered for 3 minutes, then cover and cook until done, will take around 6 to 7 minutes depending on how big or small you cut your veggies, mine were medium to small in size and got done in this time (remember we had pan fried them for 5 minutes before'
    '14- Once done, add 1/2 tablespoon butter and stir until the butter melts, around 1 minute.'
    '15- Add 1/4 teaspoon garam masala and stir. And your mixed veg is ready!'
    '16- To serve, top with some grated paneer or small paneer cubes. Enjoy with hot rotis.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
