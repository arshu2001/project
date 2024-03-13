import 'package:flutter/material.dart';
import 'package:project/shoe1.dart';
import 'package:project/shoe2.dart';
import 'package:project/shoe3.dart';
import 'package:project/shoe4.dart';

class HomeBotNav extends StatefulWidget {
  const HomeBotNav({super.key});

  @override
  State<HomeBotNav> createState() => _HomeBotNavState();
}

class _HomeBotNavState extends State<HomeBotNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    child: Stack(
                      children: [
                        Image.asset('images/ad.jpeg',
                        width: 400,

                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      child: Stack(
                        children: [
                          Image.asset('images/ad.jpeg',
                          width: 400,
                    
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 200,
                    width: 180,
                    
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Shoe1(),));
                      },
                      child: Column(
                        children: [
                          Image.asset('images/shoe4.jpeg',
                          fit: BoxFit.cover,
                          
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('Adidas Mens Running shoe',style: TextStyle(fontWeight: FontWeight.bold),),
                                   Row(
                                     children: [
                                       Text('2500',style: TextStyle(fontSize: 20),),
                                       Text('M.R.P : 5999(55% off)',style: TextStyle(color: Colors.grey[00],fontSize: 10),)
                                     ],
                                   ),
                                ],
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    height: 180,
                    width: 180,
                    
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Shoe2(),));
                      },
                      child: Column(
                        children: [
                          Image.asset('images/shoe5.jpeg'),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('Adidas womens shoe',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      Text('2779',style: TextStyle(fontSize: 20),),
                                      Text('M.R.P : 4999(44% off)',style: TextStyle(color: Colors.grey[00],fontSize: 10),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoe3(),));
                        },
                        child: Column(
                          children: [
                            Image.asset('images/shoe6.jpeg',
                            fit: BoxFit.cover,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Adidas cloudfoam',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text('2999',style: TextStyle(fontSize: 20),),
                                        Text('M.R.P : 5999(50% off)',style: TextStyle(color: Colors.grey[00],fontSize: 10),)
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoe4(),));
                        },
                        child: Column(
                          children: [
                            Image.asset('images/shoe7.jpeg',
                            fit: BoxFit.cover,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Colourfull Shoe',style: TextStyle(fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Text('3999',style: TextStyle(fontSize: 20),),
                                        Text('M.R.P : 8999(60% off)',style: TextStyle(color: Colors.grey[00],fontSize: 10),)
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                        
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
             )

          ],
        ),
      ),
    );
  }
}