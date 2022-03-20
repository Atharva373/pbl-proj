// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';



void main (){
  runApp(App());
  
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title:const Text(
            'MUSIC-4-MOOD',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontFamily: 'Oswald',
              color: Colors.white,
              letterSpacing:4.0,
              fontSize:28.0,
            ),
          ),
          centerTitle: true,
        ),
        body:Container(
          color:Colors.black87,
          child:Column(
            children: [
              Container(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                      // decoration: BoxDecoration(
                      //   color: Colors.grey[850],
                      //   shape: BoxShape.rectangle,
                      //   border:Border.all(color:Colors.black),
                        
                      // ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        'MUSIC-4-Mood',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontFamily:'Hersheys',
                          color: Colors.greenAccent[100],
                          letterSpacing: 3.0,
                          fontSize:60.0,
                        ),

                      ),
                    ),
                  ]
                ),
                
              ),
              Container(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
                      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                      child: Text(
                        'Music to Cherish Your Mood',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontFamily:'Hersheys',
                          color: Colors.grey[100],
                          letterSpacing: 1.0,
                          fontSize:30.0,
                        ),

                      ),
                    ),
                  ]
                ),
                
              ),
              
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin:EdgeInsets.fromLTRB(50.0,30.0,60.0,15.0),
                      padding:EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        border:Border.all(width:2.0,color:Colors.greenAccent),
                        shape:BoxShape.rectangle,
                        borderRadius:BorderRadius.circular(50.0),
                        
                      ),
                      child:SizedBox(
                        width:90.0,height:90.0,
                        child: FloatingActionButton(
                          onPressed: () {
                          },
                          backgroundColor: Colors.black12,
                          tooltip:"Press To Scan Your Face!",
                          elevation:20.0,

                          child:Icon(
                          Icons.camera,
                          color:Colors.greenAccent[400],
                          size:75.0,
                          ),

                        ),
                      ),
                    ),
                  ]
                ),
                
              ),

              Container(
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        shape:BoxShape.rectangle,
                        borderRadius:BorderRadius.circular(50.0),
                        
                      ),
                      child: Text(
                        'CLick To See Your Face!',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          fontFamily:'Hersheys',
                          color: Colors.white60,
                          letterSpacing: 1.0,
                          fontSize:27.0,
                        ),

                      ),
                    ),
                  ]
                ),
              ),

              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:EdgeInsets.fromLTRB(12.0,50.0,7.0,15.0),
                      padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        border:Border.all(width:2.0,color:Colors.grey),
                        shape:BoxShape.rectangle,
                        borderRadius:BorderRadius.circular(40.0),
                        
                      ),
                      child:SizedBox(
                        width:50.0,height:50.0,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.black12,
                          tooltip:"About US!",
                          elevation:20.0,

                          child:Icon(
                          Icons.info_outline_rounded,
                          color:Colors.greenAccent[100],
                          size:50.0,
                          ),

                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(7.0),
                      margin: EdgeInsets.fromLTRB(0, 40, 40, 10),
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        shape:BoxShape.rectangle,
                        // border:Border.all(color: Colors.grey,width:1.0),
                        borderRadius:BorderRadius.circular(18.0),
                        
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        'About the Creators...',
                        style:TextStyle(
                          fontFamily:'Hersheys',
                          color: Colors.white60,
                          letterSpacing: 1.0,
                          fontSize:22.0,
                        ),

                      ),

                    ),

                  ]
                ),
              ),

              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin:EdgeInsets.fromLTRB(12.0,7.0,7.0,15.0),
                      padding:EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        border:Border.all(width:2.0,color:Colors.grey),
                        shape:BoxShape.rectangle,
                        borderRadius:BorderRadius.circular(40.0),
                        
                      ),
                      child:SizedBox(
                        width:50.0,height:50.0,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.black12,
                          tooltip:"How To Use",
                          elevation:20.0,

                          child:Icon(
                          Icons.how_to_reg,
                          color:Colors.greenAccent[100],
                          size:50.0,
                          ),

                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(7.0),
                      margin: EdgeInsets.fromLTRB(0, 7, 40, 10),
                      decoration: BoxDecoration(
                        color:Colors.grey[850],
                        shape:BoxShape.rectangle,
                        // border:Border.all(color: Colors.grey,width:1.0),
                        borderRadius:BorderRadius.circular(18.0),
                        
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        'How to use the app',
                        // ignore: prefer_const_constructors
                        style:TextStyle(
                          fontFamily:'Hersheys',
                          color: Colors.white60,
                          letterSpacing: 1.0,
                          fontSize:22.0,
                        ),

                      ),

                    ),

                  ]
                ),
              ),
              


            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){} ,
          backgroundColor:Colors.greenAccent[400],elevation: 2.0,
          highlightElevation:2.0,
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.share_outlined,
            color:Colors.black87,
          ),
        ),


      ),
    );

  }
}




//setState((){}) - To Update the variable value 