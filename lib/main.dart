import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Design'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Card(
              color: Colors.deepOrange,
              child: SizedBox(
                height: 100,
                width: 150,
                child: Center(child: Text('Card View'),),
              ),
              elevation: 20.0,
              shadowColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )

            ),

            SizedBox(height: 30), //The SizedBox is used for the space between two card

            Card(
                color: Colors.pinkAccent,
                child: SizedBox(
                  height: 100,
                  width: 150,
                  child: Center(child: Text('Thank You'),),
                ),
                elevation: 20.0,
                shadowColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ],
        ),
      ),

    );

  }

}