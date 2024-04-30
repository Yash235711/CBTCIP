import 'package:flutter/material.dart';

class Mydali extends StatelessWidget {
  const Mydali({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Daliya Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/dali.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Dalia Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Firstly, in a pan heat 1 tsp ghee .'
                        'Add in ½ cup dalia / broken wheat and roast on low flame.'
                        'Roast for 2-3 minutes or till dalia turns aromatic. keep aside.'
                        'Further in a cooker heat 1 tsp oil, 1 tsp jeera and pinch of hing.'
                        'Saute till the jeera splutters.'
                        'Additionally, add in ½ tsp ginger paste and 2 green chilli. saute for a minute.'
                        'Furthermore add in 1 tomato and saute till it turns soft and mushy.'
                        'Also add 2 tbsp peas, ½ carrot, ½ tsp turmeric and salt to taste.'
                        'Saute for a minute or two.'
                        'Add in ½ cup moong dal, soaked for 20 minutes.'
                        'Saute for a minute.'
                       'Now add'
                        'Cups water and give a good stir.'
                        'Cover and pressure cook for 3 whistles or till dalia gets cooked completely.'
                        'Finally, serve mixed vegetable dalia with curd or some pickle.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
