



import 'dart:ui';

import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';

Widget ItemCourse({
  required String descricao ,
  required double price ,
  required double  start,
  required String  imagePath
}){
  return  Card(

       child: Container(
           width:170,
           padding: EdgeInsets.symmetric(
               horizontal: 8,
               vertical: 5
           ),
           decoration: BoxDecoration(
             color:Colors.white, 
             borderRadius: BorderRadius.circular(5)
           ),
         
           child: Column(
                 children: [
                      Container(
                         width: 210,
                         height: 120,
                         child: Stack(
                            fit: StackFit.expand,
                            children: [
                                Container(
                                    width:120,
                                    height:120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                             image: AssetImage(imagePath),
                                             fit: BoxFit.cover
                                        )
                                    ),
                                ) ,
                                Container (
                                  child: Stack(
                                     children: [
                                        Positioned(
                                           child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Container(),
                                             IconButton(
                                                 onPressed: (){},
                                                 icon: Icon(Icons.favorite , color: Colors.pink, size:18,)
                                             )
                                           ],
                                         ),
                                           top:-10,
                                           left: 110,
                                         ),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child:Container(
                                             width: 60,
                                             height:20,
                                             color: Colors.orange,
                                             padding: EdgeInsets.symmetric(
                                                 horizontal:3,
                                                 vertical: 3
                                             ),
                                             child: Text("Disponivel", style: TextStyle(
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 10
                                             ),),
                                           ),
                                          )
                                     ],
                                  ),
                                )
                            ],
                         ) ,
                      ),
                      const  SizedBox(height:5,),

                      Text(descricao, style: TextStyle().copyWith(
                        color: SubTitulo,
                        fontSize:13,
                      ),) ,

                    const  SizedBox(height:4,),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${price.toString()} kz", style: TextStyle().copyWith(
                            color: HeaderTitulo,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),) ,
                          Container(
                            width:40,
                            height:25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                 color: SubTitulo, 
                                 width: 1,
                              )
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 const Icon(Icons.star , color:Colors.orangeAccent, size: 14,),
                                 const SizedBox(width:2,),
                                 Text(start.toString() ,style: TextStyle().copyWith(
                                     fontSize: 12,
                                     color: Colors.black
                                 ),)
                              ],
                            ),
                          )
                          
                        ],
                      )
                 ],
           ),
       ),
  );
}




List<Widget> listItemsCourse  =  [
  ItemCourse(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image1.jpg",
      price: 40.000,
      start: 4.8
  ),
  ItemCourse(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image2.jpg",
      price: 40.000,
      start: 4.8
  ),

  ItemCourse(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image3.jpg",
      price: 40.000,
      start: 4.8
  ),

  ItemCourse(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image4.jpg",
      price: 40.000,
      start: 4.8
  ),

  ItemCourse(
      descricao: "Create a document search system in Laravel",
      imagePath: "assets/image6.jpg",
      price: 40.000,
      start: 4.8
  ),
];


