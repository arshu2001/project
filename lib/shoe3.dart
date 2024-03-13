import 'package:flutter/material.dart';
import 'package:project/buynow.dart';
import 'package:project/cart.dart';

class Shoe3 extends StatefulWidget {
  const Shoe3({super.key});

  @override
  State<Shoe3> createState() => _Shoe3State();
}

class _Shoe3State extends State<Shoe3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Center(child: Text('Adidas Shoe Women',style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),)),
        ),
        body: Column(
          children: [
            ClipRRect(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/shoe6.jpeg',
                    fit: BoxFit.cover,
                    )
                  )
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,right: 125,bottom: 25),
                      child: Text('Size :',style: TextStyle(fontSize: 25),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(backgroundColor: Colors.grey[300],
                          child: Text('S',style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(backgroundColor: Colors.grey[300],
                          child: Text('M',style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(backgroundColor: Colors.grey[300],
                          child: Text('L',style: TextStyle(fontSize: 20),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(backgroundColor: Colors.grey[300],
                          child: Text('S',style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: Row(
                             children: [
                              Text('-55%',style: TextStyle(fontSize: 40,color: Colors.red),),
                               Padding(
                                 padding: const EdgeInsets.only(left: 40),
                                 child: Text('2500',style: TextStyle(fontSize: 40),),
                               ),
                             ],
                           ),
                         ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Column(
                            children: [
                              Text('All Details :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('outer material   :    Mesh',style: TextStyle(fontSize: 20),),
                              ),
                              Text('occasion   :    Sports',style: TextStyle(fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Type for sports  :  Running',style: TextStyle(fontSize: 20),),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
                        }, 
                        child: Text('Add to cart')),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: ElevatedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Buynow(),));
                          }, 
                          child: Text('Buy now')),
                        ),

                      ],

                    )

                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}