
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:music4mood/screens/home.dart';
import 'screens/camera.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(trialApp());
}

class trialApp extends StatefulWidget {
  const trialApp({ Key? key }) : super(key: key);

  @override
  _trialAppState createState() => _trialAppState();
}

class _trialAppState extends State<trialApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
      
    
    );
  }
}
