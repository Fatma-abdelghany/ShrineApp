import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeScreen(),
      //home: LoginScreen(),
    );
  }
}

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
                      onPressed: (){},
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
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text("SHRINE"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        children:List.generate(
            10,
                (index) {
          return MyCard(

            description: 'data data datadatadatadatadatadatadatadatadatadatadata ',
            title: 'Title',
            myimg: 'assets/images/diamond.png',
          );

        })


      ),
    );
  }
}
class MyCard extends StatefulWidget {
  String title;
  String description;
  String myimg;
   MyCard({required this.title,required this.description,required this.myimg,super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return   Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(widget.myimg),
                SizedBox(height: 10,),
                Text(widget.title),
                SizedBox(height: 10,),
                Text(widget.description),
                SizedBox(height: 10,),


              ],
            ),
          ),
        );

          }
  }

class Product{

  String title;
  String description;
  String myimg;

  Product(this.title, this.description, this.myimg);
}