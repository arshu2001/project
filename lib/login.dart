import 'package:flutter/material.dart';
import 'package:project/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey=GlobalKey<FormState>();
  var username = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 89, 65, 65),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  //logo
                  const Icon(Icons.lock,
                  size: 100,
                  ),
              
                  SizedBox(
                    height: 50,
                  ),
                  Text('WELCOME',style: TextStyle(
                    color: Color.fromARGB(255, 144, 128, 128),
                    fontSize: 36
                  ),
                  ),
                 const SizedBox(height: 25,),
              
                 //username
              
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: TextFormField(
                    controller: username,
                    validator: (value) {
                      if(value?.isEmpty ?? true){
                        return 'please enter name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'username',
                      
                    ),
                    
                   
                   ),
                 ),
                 const SizedBox(height: 20),
                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: TextFormField(
                    controller: password,
                    validator: (value) {
                      if(value?.isEmpty ?? true){
                        return 'please enter email';
                      }
                      if(!RegExp("^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}").hasMatch(value!)){
                        return 'email must contain alphabat and numbers';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'password',
                      
                    ),
                   
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Forgot password?',
                       style: TextStyle(color: Colors.white),
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(height: 25),
                 //sign in button
                 GestureDetector(
                  onTap: () {
                    if(formKey.currentState?.validate() ?? false){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                  }
                  },
                   child: Container(
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                    ),
                   
                    child: Center(
                      child: Text('Sign in',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                    ),
                   ),
                 )
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}