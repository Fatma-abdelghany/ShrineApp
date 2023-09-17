import 'package:flutter/material.dart';
import 'package:task6/Screens/HomeScreen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController= TextEditingController();
  final passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/diamond.png"),
              const SizedBox(
                height: 20,
              ),
              const Text("SHRINE"),
              const SizedBox(
                height: 80,
              ),
              TextField(
                controller:userNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    labelText: "Username",
                    filled: true,
                    fillColor: Color(0xFFe7e0ec)

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                obscureText:true ,
                decoration: const InputDecoration(
                    labelText: "Password",
                    filled: true,
                    fillColor: Color(0xFFe7e0ec)
                ),
              ),


              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          userNameController.clear();
                          passwordController.clear();
                        });
                      },
                      child: const Text(
                        "Cancel" ,

                        style: TextStyle(
                            color:Color(0xFF6750a4)

                        ),)
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xfff7f2f9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),


                        ),

                      ),
                      child: const Text(
                        "NEXT",

                        style: TextStyle(
                          color:Color(0xFF6750a4),

                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}