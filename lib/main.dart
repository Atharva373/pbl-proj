// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';

List<CameraDescription> cameras = [];

// List<CameraDescription> cameras = [];
// Ensure that plugin services are initialized so that `availableCameras()`
void main () async{
  // can be called before `runApp()`
WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
final cameras = await availableCameras();

// Get a specific camera from the list of available cameras.
final firstCamera = cameras.first;

  runApp(App());
  runApp(CameraApp());
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
        appBar:AppBar(
          backgroundColor: Colors.blueGrey[900],
          title:Text(
            "MUSIC4MOOD",
            style:TextStyle(
              fontSize:20.0,
              color:Colors.blueGrey[300],
              letterSpacing: 2.5,
            ),
          ),
          centerTitle: true,
        ),
        body:Container(
          color:Colors.black,
          child:Column(
            children: [

              //#1 Title
              Container(
                padding:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0),
                child:Text(
                  "MUSIC To Cherish Your Mood",
                  style:TextStyle(
                    color:Colors.green[100],
                    fontFamily: 'Hersheys',
                    letterSpacing: 2.0,
                    fontSize: 48.0,

                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //#2 Subtitle
              Container(
                padding:EdgeInsets.symmetric(vertical:10.0,horizontal: 10.0),
                child:Text(
                  "Songs for every mood...",
                  style:TextStyle(
                    fontFamily:'Oswald',
                    color:Colors.green,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.start,

                ),
              ),

              //#3 First Row
              Container(
                child:Row(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                      child:FloatingActionButton(
                        onPressed: (){},
                        child:Icon(
                          Icons.camera,
                          color:Colors.black87,
                          size:28.0,
                        ),
                        backgroundColor:Colors.greenAccent[400],
                      ),
                    ),

                    Container(
                      padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                      child:Text(
                        'Scan Your Face Here!',
                        style:TextStyle(
                          color:Colors.white,
                          fontFamily: 'Hersheys',
                          fontSize: 22.0,
                          letterSpacing:2.0,
                        ),

                      ),
                    ),
                  ],
                ),
              ),

              //#4 Second Row
              Container(
                child:Row(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                      child:FloatingActionButton(
                        onPressed: (){},
                        child:Icon(
                          Icons.music_note_outlined,
                          color:Colors.black87,
                          size:28.0,
                        ),
                        backgroundColor:Colors.greenAccent[400],
                      ),
                    ),

                    Container(
                      padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                      child:Text(
                        'Text...',
                        style:TextStyle(
                          color:Colors.white,
                          fontFamily: 'Hersheys',
                          fontSize: 22.0,
                          letterSpacing:2.0,
                        ),

                      ),
                    ),
                  ],
                ),
              ),

              //#5 Third Row
              Container(
                child:Row(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                      child:FloatingActionButton(
                        onPressed: (){},
                        child:Icon(
                          Icons.info,
                          color:Colors.black87,
                          size:28.0,
                        ),
                        backgroundColor:Colors.greenAccent[400],
                      ),
                    ),

                    Container(
                      padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                      child:Text(
                        'To Know more about the app..',
                        style:TextStyle(
                          color:Colors.white,
                          fontFamily: 'Hersheys',
                          fontSize: 22.0,
                          letterSpacing:2.0,
                        ),
                      ),
                    ),



                  ],
                ),
              ),
              
              //#6 Fourth Row
              Container(
                child:Row(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                      
                    ),

                    Container(
                      padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                      
                    ),



                  ],
                ),
              ),

              //#5th Row
              Container(
                child:Row(
                  children: [
                    Container(
                      padding:EdgeInsets.fromLTRB(15.0,15.0,15.0,15.0),
                      
                    ),

                    Container(
                      padding:EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                      
                    ),



                  ],
                ),
              ),



            ],

          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        backgroundColor: Colors.greenAccent[400],
        child:Icon(
          Icons.share_outlined,
          color: Colors.black,
          size:28.0,
        ),

      ),
      ),
    );

  }
}
class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller),
    );
  }
}






//setState((){}) - To Update the variable value 