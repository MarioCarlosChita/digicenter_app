import 'package:digicenter/models/course.dart';
import 'package:digicenter/pages/home/home_page.dart';
import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  Course course;
  DetailPage({required this.course});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size _Device  = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.black12,onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomePage()));
          }),
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Container(
             height: 300,
             decoration: BoxDecoration(
                 color: Colors.orange,
                 image: DecorationImage(
                     image:AssetImage(widget.course.imagePath ),
                     fit: BoxFit.cover
                 )
             ),
           ),
           Padding(
             padding:const  EdgeInsets.only(
               left: 5,
               right:5
             ) ,
             child:  Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                   width: _Device.width /2 + 100,
                   child: Text(widget.course.descricao, style: TextStyle().copyWith(
                       color: HeaderTitulo,
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                   ),)
               ),
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
                     Text(widget.course.star.toString() ,style: TextStyle().copyWith(
                         fontSize: 12,
                         color: Colors.black
                     ),)
                   ],
                 ),
               ),


             ],
           ),) ,
           SizedBox(height:20,),
           Container(
              margin: EdgeInsets.only(
                 left: 10
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5
              ),
               decoration: BoxDecoration(
                 color: Colors.orange ,
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Text(widget.course.price +"Kz", style: TextStyle().copyWith(
                   color: HeaderTitulo,
                   fontSize: 18,
                   fontWeight: FontWeight.bold
               ),)
           ),
         ],
       ),
    );
  }
}
