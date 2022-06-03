import 'dart:io';
import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:digicenter/models/course.dart';
import 'package:digicenter/models/feacture.dart';
import 'package:digicenter/pages/detail/detailt_page.dart';
import 'package:digicenter/pages/home/widgets/icon_button_menu.dart';
import 'package:digicenter/pages/home/widgets/item_appbar.dart';
import 'package:digicenter/pages/home/widgets/item_categories.dart';
import 'package:digicenter/pages/home/widgets/item_course.dart';
import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _seachTextEditingController  = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    Size  _Device = MediaQuery.of(context).size;

    return Scaffold(
       body:  Container(
         color: Colors.black12,
         height: _Device.height,
         padding: const  EdgeInsets.only(
            left: 10,
            right:10
         ),
         child:SafeArea(
             child: SingleChildScrollView(
           padding: EdgeInsets.zero,
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment:MainAxisAlignment.spaceBetween,
             children: [
               _appHeaderTopo(),
                const SizedBox(height:10,),
               _appFormSearchCourses() ,
                const SizedBox(height:10,) ,
               _appSeachCourses(),
                const  SizedBox(height:10,),
               _appCategories(_Device.width),
                const SizedBox(height:5,),
                _appItemsCourse(_Device.width),
                SizedBox(height:10,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        Text("Categorias" , style: TextStyle(
                            color:  HeaderTitulo,
                            fontSize:16,
                            fontWeight: FontWeight.bold
                        ),),

                        Text("Ver todos",   style: TextStyle().copyWith(
                          color: SubTitulo,
                          fontSize: 11
                       ),)

                  ],
                ) ,
                SizedBox(height:8,),
               _appItemCategories(_Device.width),
                SizedBox(height:10,)
             ],
           ),
         )),
       ),
       bottomNavigationBar: Container(
           width: _Device.width,
           height:80,
           color: Colors.white,
           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
           child:ListView.separated(
              separatorBuilder: (context, indexMenu)=>const SizedBox(width: 40,),
               scrollDirection: Axis.horizontal,
               itemCount: listMenus.length ,
               itemBuilder:(context , indexMenu){
                 return InkWell(
                   child: listMenus[indexMenu],
                 );
               })
       ),
    );
  }

  Widget _appHeaderTopo() {
      return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               Image.asset("assets/logo.png",width:90, height:40,),
               Row(
                 children: [
                   ItemAppBar(icon:Icons.notifications_none_outlined,status: true) ,
                   ItemAppBar(icon:Icons.shopping_cart_outlined,status: false) ,
                 ],
               )
          ],
      );
  }

 Widget _appFormSearchCourses() {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
          Text("Ola,Mário Carlos" ,style: TextStyle().copyWith(
              color: SubTitulo
          ),),
          SizedBox(height:5,),
          Text("Explora os cursos e as Habilidades",
            style: TextStyle().copyWith(
                color: HeaderTitulo,
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),)
       ],
    );
 }


 Widget _appSeachCourses() {
    return Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
             Card(
               elevation: 5,
               child: Container(
                 width: 260,
                 height: 45,
                 decoration: BoxDecoration(
                   color:Colors.white,
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child:   TextFormField(
                   controller: _seachTextEditingController,
                   decoration: InputDecoration(
                       hintText: "Pesquisa cursos,habilidades  etc...",
                       hintStyle: TextStyle().copyWith(
                         color: SubTitulo,
                         fontSize: 12,
                       ),
                       enabledBorder: const  OutlineInputBorder(
                           borderSide: BorderSide(
                               color: Colors.white
                           )
                       ),
                       focusedBorder: const  OutlineInputBorder(
                           borderSide: BorderSide(
                               color: Colors.white
                           )
                       ),
                       focusColor: Colors.white
                   ),
                 ),
               ),
             ),
             MaterialButton(
               elevation: 5,
               onPressed: (){},
               color: Botao,
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
               ),
               minWidth: 65,
                 height: 50,
               child: const Icon(Icons.search, color:Colors.white)
             )
        ],
    );
 }

 Widget _appCategories(double device) {
    return Container(
        width: device,
        height:30,
        margin: const EdgeInsets.only(right:10),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: listsFeactures.length,
            separatorBuilder: (context , indexItem)=> const SizedBox(width:30),
            itemBuilder:(context , index){
              Feacture _itemValue =  listsFeactures[index];
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_itemValue.name,style: TextStyle(
                        color: _itemValue.status ? Botao : SubTitulo,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),),
                  _itemValue.status ? Container(
                      width:20,
                      margin: EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: _itemValue.status ? Botao : SubTitulo
                      ),
                      height:4,
                  ):SizedBox.shrink()
                ],
              );
            }
        ),
    );
 }


 Widget _appItemsCourse(double device) {
     return Container(
        width: device,
        height:210,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context , index) {
                  return  OpenContainer(
                      closedBuilder: (context, action){
                          return listItemsCourse[index] ;
                      },
                      transitionType: ContainerTransitionType.fadeThrough,
                      transitionDuration: const  Duration(milliseconds:500),
                      openBuilder: (context , action){
                          return DetailPage(course:listCourses[index]);
                      },
                  ) ;
            },
            separatorBuilder: (context , index)=>SizedBox(width:10,),
            itemCount: listItemsCourse.length
        ),
     );
 }

 Widget _appItemCategories(double  device){
    return Container(
         width: device,
         height:40,
         child: ListView.separated(
           scrollDirection: Axis.horizontal,
             itemBuilder: (context , index){
                return listItemCategories[index];
             },
             separatorBuilder:(context , index)=> SizedBox(width:10),
             itemCount:  listItemCategories.length
         ),
    );
 }
}
