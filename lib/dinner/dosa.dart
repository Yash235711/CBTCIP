import 'package:flutter/material.dart';

class Mydosa extends StatelessWidget {
  const Mydosa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[100],
          title: const Text('Dosa Food Recipe',style: TextStyle(fontSize: 20,color: Colors.black),),
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
                      image: AssetImage('assest/fimages/dosa.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text('Dosa Recipe',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
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
                    child: Text('Heat a cast iron pan. When the pan becomes hot, spread ¼ to ½ teaspoon oil all over the pan. Do keep the heat on low to low-medium heat, so that you are easily able to spread the batter. If the pan base is very thick, then keep the flame to medium.'
                        'Do not spread oil if you are using a non stick pan, as you won’t be able to spread the batter.'
                        'Now take a ladle full of the batter. Pour the dosa batter and gently spread the batter starting from the center and moving outwards.'
                        'Cover it with a lid and cook the dosa on a low to medium heat. Do regulate the flame as per the pan size and thickness.'
                        'When you see the batter on the top has cooked well and the bottom has become crisp and golden, then sprinkle ¼ to ½ teaspoon oil on the edges and center.'
                        'With the spoon spread the oil on the dosa.'
                        'Cook till the base is nicely golden and crisp. The base will leave the pan and the sides will also get separated when it gets cooked.'
                        'Fold and serve sada dosa hot. Make all dosai this way.'
                        'Serve these crisp plain dosa with sambar or potato masala or coconut chutney.')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
