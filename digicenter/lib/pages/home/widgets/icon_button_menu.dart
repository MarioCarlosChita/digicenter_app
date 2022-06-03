

import 'dart:ui';

import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';

Widget IconButtonMenu({required String titulo , required IconData  icon , required bool status}){
    return  Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
          Icon(icon ,color: status ?Botao :Colors.black12 ),
          Text(titulo , style: TextStyle().copyWith(
              color:  status ?Botao :Colors.black12 ,
              fontSize: 12 ,
              fontWeight: FontWeight.bold
          ),),
       ],
    );
}


List<Widget> listMenus = [
      IconButtonMenu(titulo: "Home", icon:Icons.home, status: true),
      IconButtonMenu(titulo: "Meus Cursos",icon:Icons.note, status: false) ,
      IconButtonMenu(titulo: "Notificações",icon:Icons.notifications_none_outlined, status: false) ,
      IconButtonMenu(titulo: "Perfil",icon:Icons.person_outline_rounded, status: false) ,
];