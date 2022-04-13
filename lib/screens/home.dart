import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:music4mood/main.dart';
import 'package:music4mood/screens/aboutus.dart';
import 'package:music4mood/screens/camera.dart';
import 'package:music4mood/screens/howToUse.dart';
import '../main.dart';
List<CameraDescription>? cameras;
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar
        appBar: AppBar(
          title:const Text('MUSIC-4-MOOD',),
          centerTitle: true,
        ),

        // Body begins here
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
                        child:FloatingActionButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => CameraScreen()));
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
                      child: const Text(
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
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => AboutUs()));
                          },
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
                        style:const TextStyle(
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
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => HowToUse()));
                          },
                          backgroundColor: Colors.black12,
                          tooltip:"How To Use",
                          elevation:20.0,

                          child:Icon(
                          Icons.question_answer,
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
          backgroundColor:Colors.greenAccent[100],elevation: 2.0,
          highlightElevation:2.0,
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.share_sharp,
            color:Colors.black87,
            size:30.0,
          ),
        ),


      );
  }
}