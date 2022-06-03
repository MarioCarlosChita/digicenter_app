import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';

Widget ItemAppBar({required IconData icon , bool status =  false }){
    return  Stack(
       children: [
         Card(
           elevation: 0,
           child: Container(
             width: 30,
             height:30,
             child: Icon(icon, size: 20,) ,
           ),
         ),
        status ?  Positioned(
             top:3,
             left:28,
            child: Container(
              width:8,
              height:8,
              decoration: BoxDecoration(
              color: Botao,
              borderRadius: BorderRadius.circular(50)
          ),
        )):SizedBox.shrink(),
       ],
    );
}