import 'package:flutter/material.dart';

class Myloki extends StatelessWidget {
  const Myloki({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Loki Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/loki.jpeg'),
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
                    child: Text('Firstly, in a large kadai heat 2 tbsp oil and saute 1 bay leaf, 1 inch cinnamon, 1 tsp kasuri methi, 1 tsp cumin until it turns aromatic.'
                        'Add 1 onion, 1 tsp ginger garlic paste and saute until it turns golden brown.'
                        'Further, add ½ tsp turmeric, ¾ tsp chilli powder, ½ tsp coriander powder and ¾ tsp salt.'
                        'Saute on low flame until it turns aromatic.'
                        'Additionally, add 1½ tomato and saute until it turns soft and mushy.'
                        'Now add 450 grams lauki and saute for 2 minutes.'
                        'Also, add 1 cup water and mix well.'
                        'Cover and boil for 20 minutes on medium flame or until lauki are cooked well.'
                        'Adjust the consistency as required adding more water if required.'
                        'Now add ¼ tsp garam masala and 2 tbsp coriander. mix well.'
                        'Finally, enjoy lauki ki sabji with chapathi or rice.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
