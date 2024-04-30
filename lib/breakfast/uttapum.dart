import 'package:flutter/material.dart';

class Myutt extends StatelessWidget {
  const Myutt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Uttapum Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/uttapam.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Uttapam Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('1.Prepare the batter at home by following this recipe or buy the readymade batter from the grocery store. Add salt (if not added before fermenting the batter) and water (if needed) in batter; mix well. Batter should be slightly thicker than dosa batter and slightly thinner than idli batter.'
                        '2.Heat cast iron tava (dosa tawa) or non-stick tawa over medium flame. (for nice golden color, we recommend to use cast iron tawa.) Add few drops of oil on hot tawa and spread it using a halved potato or a halved small onion. This process helps spreading of batter and also prevents it from sticking. Repeat this process'
                        '3.When tawa is ready, pour one laddle batter and spread it in round shape by gently rotating the ladle in clockwise or anti-clockwise direction. make sure that batter spread is slightly thicker than a batter spread for Dosa.'
                        '4.Sprinkle 1-2 tablespoons finely chopped onion and 1-2 tablespoons finely chopped capsicum over it.'
                        '5.Drizzle 1-teaspoon oil around the edge.'
                        '6.Cook for approx.2-3 minutes until bottom surface turns light golden brown. If you are making very thick uttapam, cover it with a lid to speed up the cooking process.'
                        '7.Flip it gently and cook another side for a minute or until the bottom surface looks cooked.'
                        '8.Transfer it to a plate. Repeat the process from step-2 to step-8 for remaining batter.'
                        '9.Serve it hot with coconut chutney or tomato onion chutney.',style: TextStyle(fontSize: 15),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}