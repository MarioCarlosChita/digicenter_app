import 'dart:ffi';
import 'dart:ui';

import 'package:digicenter/pages/home/home_page.dart';
import 'package:digicenter/pages/styles/color_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 final  TextEditingController _emailTextEditingController =  TextEditingController();
 final  TextEditingController _senhaTextEditingController = TextEditingController();
 final  GlobalKey<FormState>  _formLogin =  GlobalKey<FormState>();
 bool _remenberSignIn = false;



  @override
  Widget build(BuildContext context) {
    Size  _DeviceSize = MediaQuery.of(context).size;

    return  Scaffold(
         backgroundColor: Fundo,
         body:  Container(
             height: _DeviceSize.height,
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      Center(child:  Image.asset("assets/logo.png", fit: BoxFit.none),),
                      SizedBox(height:5,),
                      Center(
                          child: Text("O Cêntro de formação com os melhores cursos",style:TextStyle().copyWith(

                               fontSize: 10 ,
                               color: SubTitulo
                          ),)
                      ) ,
                      SizedBox(height:70,),
                      Form(
                          key: _formLogin,
                          child:   Container(
                            margin: EdgeInsets.only(
                               left: 10,
                               right: 10
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Email" ,
                                        hintStyle: TextStyle(
                                          color: SubTitulo,
                                          fontSize: 11
                                        ),
                                       focusedBorder: OutlineInputBorder(
                                           borderSide: BorderSide(
                                               color: InputColorfocus
                                           )
                                       ),
                                       enabledBorder:  OutlineInputBorder(
                                           borderSide: BorderSide(
                                               color: Botao
                                           )
                                       )
                                    )
                                  ),
                                  SizedBox(height:10,),
                                  TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "senha" ,
                                          hintStyle: TextStyle(
                                              color: SubTitulo,
                                              fontSize: 11
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: InputColorfocus
                                              )
                                          ),
                                          enabledBorder:  OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Botao
                                              )
                                          )
                                      )
                                  ),

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          Checkbox(
                                            value: _remenberSignIn,
                                            checkColor: Colors.white,
                                            activeColor: Botao,
                                            onChanged:_remenberChangeValue,
                                          ),
                                          Text("Lembrar-me",style: TextStyle().copyWith(
                                              color: SubTitulo,
                                              fontSize: 11
                                          ),),
                                        ],
                                      ),
                                      Center(

                                        child:    Text("Esqueceu a senha ?", style: TextStyle().copyWith(
                                            color: SubTitulo,
                                            fontSize: 12
                                        ),),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  MaterialButton(
                                    onPressed:()=>Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (_)=>HomePage())),
                                    color: Botao,
                                    minWidth: 350,
                                    height: 50,
                                    child: Text("Entrar", style: TextStyle().copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  SizedBox(height:8,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text("Ainda não tem conta?", style: TextStyle().copyWith(
                                           color: SubTitulo,
                                           fontSize: 11
                                        ),)  ,
                                        SizedBox(width:4,),
                                        Text("Cria uma Agora!",style: TextStyle().copyWith(
                                          color:HeaderTitulo,
                                          fontSize: 12 ,
                                          fontWeight: FontWeight.bold
                                        ),)
                                    ],
                                  ),
                                  SizedBox(height:20,),
                                  Center(
                                     child: Text("OU",style: TextStyle().copyWith(
                                          color:HeaderTitulo ,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold
                                     ),),
                                  ) ,
                                  SignInButton(
                                  Buttons.Google,
                                  text: "Cadastrar-se com Google",
                                  onPressed: () {},
                                ),
                                  SizedBox(height: 5,),
                                  SignInButton(
                                    Buttons.Facebook,
                                    text: "Cadastrar-se com Google",
                                    onPressed: () {},
                                )

                              ],
                        ),
                      )
                      )
                ],
             ),
         ),
    );
  }


  void _remenberChangeValue(bool? value) {
      setState(() {
           bool _status = value ?? false;
          _remenberSignIn = _status;
      });
  }
}
