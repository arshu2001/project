import 'package:flutter/material.dart';
import 'package:project/cart.dart';
import 'package:project/favorite.dart';
import 'package:project/first.dart';
import 'package:project/homebotnav.dart';
import 'package:project/person.dart';
import 'package:project/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List screens = [
    const HomeBotNav(),
    const Favorite(),
    const Cart()
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: SizedBox(
          height: 50,
          width: 250,
          child: TextFormField(
            cursorColor: Colors.black,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: const Color.fromARGB(255, 19, 18, 18)),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white30,
              hintText: 'Search for product',
              hintStyle: TextStyle(color: Colors.black38),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)
              )
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: UserAccountsDrawerHeader(accountName: Text('Arshad',style: TextStyle(
              fontSize: 20
            ),),
              accountEmail: Text('arshad@gmail.com'),
              decoration: BoxDecoration(color: Colors.grey[500]),
              )
              
              ,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Profile'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Person(),));
                },
              ),
               ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(),));
                },
              ),
               ListTile(
                leading: Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: (){
                  showDialog(
                    context: context,
                   builder: (BuildContext context){
                    return AlertDialog(
                      title: Text('LogOut'),
                      content: Text('Do you want to logout'),
                      actions: <Widget>[
                        ElevatedButton(
                          child: Text('No'),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                        ElevatedButton(
                          child: Text('Yes'),
                          onPressed:(){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => First(),));
                          }
                        )
                      ],
                    );
                   });
                },
              ),
          ],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
         onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
        items: const[
           BottomNavigationBarItem(
             label: 'Home',
             icon: Icon(Icons.home),
             ),
              BottomNavigationBarItem(
             label: 'Favorite',
             icon: Icon(Icons.favorite)
             ),
              BottomNavigationBarItem(
             label: 'Cart',
             icon: Icon(Icons.shopping_cart_outlined)
             ),
            

             
             
        ]),
    );
  }
}