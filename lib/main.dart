import 'package:flutter/material.dart';

void main()=>runApp(App());


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
          // centerTitle: true,
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
