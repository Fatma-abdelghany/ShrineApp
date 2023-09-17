import 'package:flutter/material.dart';

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