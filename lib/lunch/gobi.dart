import 'package:flutter/material.dart';

class Mygobi extends StatelessWidget {
  const Mygobi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Gobi Masala Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/gobi.jpg'),
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
                    child: Text('In the same pan, add 2 tbsp oil. Add the bay leaf and caraway seeds.'
                        'Fry for a few seconds or till the oil become aromatic.'
                        'Add the chopped onions and saute till the onions get golden and caramelized.'
                        'Then add the ginger-garlic paste and saute for a few seconds till the raw aroma of ginger-garlic goes away.'
                        'Add the tomato-cashew paste and stir.'
                        'Add the spice powders – coriander, cumin, red chili, garam masala and turmeric.'
                        'Saute stirring often till the oil starts to leave the sides of the masala.'
                        'The whole masala paste will clump together and you will see oil clearly leaving the sides.'
                        'This is an important step as if not done properly, the flavors don’t come through in the dish.'
                        'Switch off the stove and then add the whisked yogurt.'
                        'Stir very well and then add 1 to 1.5 cups water. do add water as required. here'
                        'I get cauliflower which takes more time to cook. Thus I add more water. If the cauliflower takes less time to cook, then add less water.'
                        'If you have fried the cauliflower more than what is mentioned in the recipe, then also you will have to add less water as the cauliflower will be already cooked.'
                        'So just add enough water to get a medium consistency gravy. Let it come to a boil. Then add the cauliflower and simmer for a minute.'
                        'Stir again and keep the kadai or pan on the fire again.'
                        'Now add the sauteed cauliflower florets plus salt.'
                        'Stir and cover the kadai or pan with a tight lid.'
                        'Cook the cauliflower masala on low to medium flame for approx 10 to 15 minutes or till they are cooked completely.'
                        'Keep on checking at intervals.'
                        'Lastly add the crushed kasuri methi, cream and a pinch of nutmeg. Stir the curry and switch off the fire.'
                        'Serve gobi masala hot with rotis, naan or rice.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
