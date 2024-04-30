import 'package:flutter/material.dart';

class Mymrs extends StatelessWidget {
  const Mymrs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Maharashtra Special Food',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/mrs.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Missal Pao Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                  child: Text('Red Chilli Paste'
                      'Grind together soaked red chillies and garlic using a food processor or mixer. You can use 1-2 teaspoons of the soaking water. Blend to a coarse wet paste. Keep aside'
                      'Misal'
                      'Heat oil in a pressure cooker over high heat. Once hot add mustard seeds and allow to splutter. Reduce heat to medium and add cumin seeds, hing and curry leaves. Fry for 30 seconds.'
                      'Add chopped onions and saute for 1 minute or until fragrant. Add the red chilli paste and fry until the raw aroma goes, approximately 2-3 minutes. Add chopped tomatoes and misal masala and stir to combine. Cook for 3-4 minutes or until the tomatoes have softened and the oil separates.'
                      'Add mixed sprouts and mix to combine. Add water and salt and stir until well mixed. Cover the lid of the pressure cooker and seal with the whistle. Cook on high heat till the 1st whistle and then reduce the flame to low and cook for another 10 minutes. Once done, turn off the flame and allow the pressure to release naturally.'
                      'Remove the whistle and lid of the pressure cooker. Turn on the flame to a medium, add jaggery and mix to combine. Bring it to a boil and turn off the flame.'
                      'Add chopped coriander leaves and some freshly squeezed lemon juice. Stir to combine. Serve hot along with some pav or poha, chopped onion and top it off with some farsaan!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}