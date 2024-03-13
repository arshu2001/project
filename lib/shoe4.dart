import 'package:flutter/material.dart';
import 'package:project/buynow.dart';
import 'package:project/cart.dart';

class Shoe4 extends StatefulWidget {
  const Shoe4({super.key});

  @override
  State<Shoe4> createState() => _Shoe4State();
}

class _Shoe4State extends State<Shoe4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Center(child: Text('Adidas Shoe',style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),)),
        ),
        body: Column(
          children: [
            ClipRRect(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/shoe7.jpeg',
                    height: 230,
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
                              Text('-60%',style: TextStyle(fontSize: 40,color: Colors.red),),
                               Padding(
                                 padding: const EdgeInsets.only(left: 40),
                                 child: Text('3999',style: TextStyle(fontSize: 40),),
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
                              Text('occasion   :    fashon',style: TextStyle(fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Type for sports  :  Normel',style: TextStyle(fontSize: 20),),
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