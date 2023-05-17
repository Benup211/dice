import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  List<String> image_list=[
    "assets/dice1.png",
    "assets/dice2.png",
    "assets/dice3.png",
    "assets/dice4.png",
    "assets/dice5.png",
    "assets/dice6.png"
  ];
  Random rannum=new Random();
  int randomnumber=0;

  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar:AppBar(title: Text("Dice"),backgroundColor: Colors.red),
        body:Center(
          child: Container(
            height: 200,
              width: 200,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    randomnumber=rannum.nextInt(6);
                    print(randomnumber);
                  });
                },
                  child: Image.asset(image_list[randomnumber])),
          ),
        ),
      ),
    );
  }
}
