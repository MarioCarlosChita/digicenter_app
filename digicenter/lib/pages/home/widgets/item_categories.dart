import 'package:flutter/material.dart';

Widget itemCategories({
    required   IconData  icon ,
    required   String   titulo
}){
  return  Container(
      width: 120,
      height: 30,
      padding: EdgeInsets.symmetric(
         horizontal: 5 ,
         vertical: 5
      ),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
             Container(
               width:40,
               height:40,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(40)
               ),
               child: Center(
                  child: Icon(icon,size: 20,),
               ),
             ) ,
             const  SizedBox(width:10,),
             Text(titulo ,  style: const TextStyle(
                color: Colors.black
             ),)
       ],
  ),
  );
}



List<Widget> listItemCategories   = [
  itemCategories(titulo: "Vendas", icon: Icons.sell) ,
  itemCategories(titulo: "Marking", icon: Icons.addchart_rounded) ,
  itemCategories(titulo: "Finanças", icon: Icons.widgets_rounded) ,
];