import 'package:flutter/material.dart';
import 'package:project/myorders.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Center(child: Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
        body: 
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.assignment_turned_in_outlined,size: 36,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('My Order',style: TextStyle(fontSize: 26),),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Myorders(),));
                },
                
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.favorite,size: 36,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Favorite',style: TextStyle(fontSize: 26),),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Myorders(),));
                },
                
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person_2_outlined,size: 36,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Edit Profile',style: TextStyle(fontSize: 26),),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Myorders(),));
                },
                
              ),
            ],
          )),
      )
      );
  }
}