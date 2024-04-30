import 'package:flutter/material.dart';

class Mybhindi extends StatelessWidget {
  const Mybhindi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Bhindi Masala Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/masala.jpg'),
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
                    child: Text('firstly, take 10 bhindi and chop them into pieces. make sure to slit in the centre so that masala can be absorbed.'
                        'add ¼ tsp turmeric, ½ tsp chilli powder, ½ tsp garam masala.'
                        'mix well coating all the spices to bhindi.'
                        'in a large kadai heat 2 tbsp oil, add 1 tsp kasuri methi, 1 tsp cumin and saute until the spices turn aromatic.'
                        'now add 1 onion, 8 clove garlic and 1 tsp ginger paste.'
                        'saute well making sure the onions turn golden brown.'
                        'further add ½ tsp turmeric, 1 tsp chilli powder, 1 tsp coriander powder and ½ tsp cumin powder.'
                        'saute on low flame until the spices turn aromatic.'
                        'add 1½ cup tomato puree and saute well.'
                        'saute until the oil separates from the puree.'
                        'now add ¼ cup curd and cook until the oil separates.'
                        'add 1 cup water and 1 tsp salt. mix well adjusting the consistency of the curry.'
                        'in another pan heat 2 tsp oil and fry the bhindi.'
                        'fry until the bhindi changes colour and is almost cooked.'
                        'transfer the fried bhindi to the curry, add ½ onion and 1 tomato.'
                        'mix well, cover and simmer for 10 minutes or until the flavours are absorbed well.'
                        'add ¼ tsp garam masala and 2 tbsp coriander. mix well.'
                        'finally, enjoy bhindi masala recipe with roti.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
