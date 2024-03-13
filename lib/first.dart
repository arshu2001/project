import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/login.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
          children:[ 
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/first.jpg.jpeg'),
              fit: BoxFit.cover
              )
            ),
            
            
          
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
              
            }, child: Text('Start')))
          ]
        ),
    );
  }
}