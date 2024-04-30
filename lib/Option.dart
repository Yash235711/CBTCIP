import 'package:carousel_slider/carousel_slider.dart';
import 'package:cook/breakfast/oats.dart';
import 'package:cook/breakfast/poha.dart';
import 'package:cook/breakfast/sandwich.dart';
import 'package:cook/breakfast/upma.dart';
import 'package:cook/breakfast/uttapum.dart';
import 'package:cook/dinner/dalia.dart';
import 'package:cook/dinner/dosa.dart';
import 'package:cook/dinner/idli.dart';
import 'package:cook/dinner/khidi.dart';
import 'package:cook/dinner/vegrice.dart';
import 'package:cook/lunch/baingan.dart';
import 'package:cook/lunch/bhindi.dart';
import 'package:cook/lunch/gobi.dart';
import 'package:cook/lunch/loki.dart';
import 'package:cook/lunch/mixveg.dart';
import 'package:cook/shakes/banana.dart';
import 'package:cook/shakes/mango.dart';
import 'package:cook/shakes/oreo.dart';
import 'package:cook/shakes/pineapple.dart';
import 'package:cook/shakes/strawberry.dart';
import 'package:cook/special/guj.dart';
import 'package:cook/special/hub.dart';
import 'package:cook/special/kel.dart';
import 'package:cook/special/mrs.dart';
import 'package:cook/special/raj.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myoption extends StatelessWidget {
  const Myoption({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Food Options',style: TextStyle(fontSize: 20,color: Colors.black),),
              ),
              backgroundColor: Colors.pink[100],
            ),
        body: SingleChildScrollView(
    scrollDirection: Axis.vertical,
           child: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
          children: [
            CarouselSlider(items:
               [ InkWell( onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Myraj()));
               },
                 child :Padding(
                   padding: const EdgeInsets.all(30.0),
                   child: Container(
                     height: 250,
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
               ),
                 InkWell( onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Myguj()));
                 },
                   child :Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Container(
                       height: 250,
                       width: 360,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: 5)],
                         image: const DecorationImage(
                           image: AssetImage('assest/fimages/guj.jpg'),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),
                 ),
                 InkWell( onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Myhyb()));
                 },
                   child :Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Container(
                       height: 250,
                       width: 360,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: 5)],
                         image: const DecorationImage(
                           image: AssetImage('assest/fimages/hyb.jpg'),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),
                 ),
                 InkWell( onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Mymrs()));
                 },
                   child :Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Container(
                       height: 250,
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
                 ),
                 InkWell( onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Mykel()));
                 },
                   child :Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Container(
                       height: 250,
                       width: 360,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         boxShadow: [BoxShadow(blurRadius: 10,spreadRadius: 5)],
                         image: const DecorationImage(
                           image: AssetImage('assest/fimages/kel.jpg'),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),
                 ),

                ],
                options: CarouselOptions(
                  height: 260.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 600),
                  viewportFraction: 1.0,
                ),),
            const SizedBox(
              height: 18,
            ),
           Positioned(
               bottom: 20,
               child: Container(
                 height: 1400,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   boxShadow: [BoxShadow(blurRadius: 10)],
                   color: Colors.blueAccent,
                 ),
                 child: Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.only(right: 80,top: 20),
                       child: Text('Breakfast Food Recipes',style: TextStyle(fontSize: 23,color: Colors.black),),
                     ),
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.all(3.0),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                       children: [
                         InkWell(
                             onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => const Mypoha()));
                             }, // Handle your callback
                             child:Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                 height: 230,
                                 width: 230,
                                 decoration: BoxDecoration(
                                   image: const DecorationImage(
                                     image: AssetImage('assest/fimages/poha.webp'),
                                     fit: BoxFit.cover,
                                   ),
                                   borderRadius: BorderRadius.circular(20),
                                   boxShadow: const [BoxShadow(blurRadius: 10)],
                                 ),
                               ),
                             ),
                         ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const Mysand()));
                           }, // Handle your callback
                           child:Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 230,
                               width: 230,
                               decoration: BoxDecoration(
                                 image: const DecorationImage(
                                   image: AssetImage('assest/fimages/sand.jpg'),
                                   fit: BoxFit.cover,
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [BoxShadow(blurRadius: 10)],
                               ),
                             ),
                           ),
                         ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const Myoats()));
                           }, // Handle your callback
                           child:Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 230,
                               width: 230,
                               decoration: BoxDecoration(
                                 image: const DecorationImage(
                                   image: AssetImage('assest/fimages/oats.webp'),
                                   fit: BoxFit.cover,
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [BoxShadow(blurRadius: 10)],
                               ),
                             ),
                           ),
                         ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const Myupma()));
                           }, // Handle your callback
                           child:Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 230,
                               width: 230,
                               decoration: BoxDecoration(
                                 image: const DecorationImage(
                                   image: AssetImage('assest/fimages/upma.jpg'),
                                   fit: BoxFit.cover,
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [BoxShadow(blurRadius: 10)],
                               ),
                             ),
                           ),
                         ),
                         InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const Myutt()));
                           }, // Handle your callback
                           child:Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 230,
                               width: 230,
                               decoration: BoxDecoration(
                                 image: const DecorationImage(
                                   image: AssetImage('assest/fimages/uttapam.jpg'),
                                   fit: BoxFit.cover,
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 boxShadow: const [BoxShadow(blurRadius: 10)],
                               ),
                             ),
                           ),
                         ),

                       ]

                       ),
                       ),
                     ),
                     const SizedBox(height: 40,),
                     const Padding(
                       padding: EdgeInsets.only(right: 80,top: 20),
                       child: Text('Shakes Making Recipes',style: TextStyle(fontSize: 23,color: Colors.black),),
                     ),
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.all(3.0),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                             children: [
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mymango()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 170,
                                     width: 170,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/mang.jpeg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(80),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mybanana()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 170,
                                     width: 170,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/bana.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(80),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Myoreo()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 170,
                                     width: 170,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/oreo.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(80),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mystra()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 170,
                                     width: 170,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/stra.jpeg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(80),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mypina()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 170,
                                     width: 170,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/pina.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(80),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                             ]

                         ),
                       ),
                     ),
                     const SizedBox(height: 30,),
                     const Padding(
                       padding: EdgeInsets.only(right: 110,top: 20),
                       child: Text('Lunch Food Recipes',style: TextStyle(fontSize: 23,color: Colors.black),),
                     ),
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.all(3.0),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                             children: [
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mybhindi()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/masala.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mygobi()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/gobi.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mybaingan()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/bang.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Myloki()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/loki.jpeg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mymixveg()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/mixe.jpeg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),

                             ]

                         ),
                       ),
                     ),
                     const SizedBox(height: 40,),
                     const Padding(
                       padding: EdgeInsets.only(right: 110,top: 20),
                       child: Text('Dinner Food Recipes',style: TextStyle(fontSize: 23,color: Colors.black),),
                     ),
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.all(3.0),
                       child: SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                             children: [
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mykhidi()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/kich.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mydali()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/dali.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Myidli()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/idli.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Mydosa()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/dosa.jpeg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),
                               InkWell(
                                 onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Myvegrice()));
                                 }, // Handle your callback
                                 child:Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 230,
                                     width: 230,
                                     decoration: BoxDecoration(
                                       image: const DecorationImage(
                                         image: AssetImage('assest/fimages/veg.jpg'),
                                         fit: BoxFit.cover,
                                       ),
                                       borderRadius: BorderRadius.circular(20),
                                       boxShadow: const [BoxShadow(blurRadius: 10)],
                                     ),
                                   ),
                                 ),
                               ),

                             ]

                         ),
                       ),
                     ),
                     const SizedBox(height: 40,),

                   ],
                 ),
               ),
           ),
           ]),
    ),

        ),
        ),
    );
  }
}
