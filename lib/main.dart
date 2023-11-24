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
      theme: ThemeData(
        fontFamily : 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,),
          onPressed: (){

          },),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text("Find Your", style: TextStyle(
                      fontSize: 24,
                    ),),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text("Inspiration", style: TextStyle(
                      fontSize: 34,
                    ),),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.25),
                    ),
                    child: TextField(
                      
                      decoration: InputDecoration(
                        
                        icon: Icon(Icons.search),
                        fillColor: Colors.grey,
                        hintText: "Search what you're looking for",
                        hintStyle: TextStyle(
                          fontSize: 14
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text("Promo Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  banner("assets/shoe.jpg"),
                  banner("assets/alexa.jpg"),
                  banner("assets/stool.jpg"),
                  banner("assets/lipstick.jpg"),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //       banner("assets/shoe.jpg"),
            //       banner("assets/lipstick.jpg"),
            //   ],
            // ),
            SizedBox(
              height: 10,
            ),
            horizontalBanner("assets/headphone.jpg"),


          ],
        ),
      )
    );
  }

  Widget banner(String img){
    return AspectRatio(
      aspectRatio: 2.58 / 3,
      child: Container(
        // padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,

          ),

        ),
        width: MediaQuery.of(context).size.width * 0.45,
        // height: MediaQuery.of(context).size.height * 0.3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                stops: [0.1, 0.9],
                begin: Alignment.bottomRight,
                colors: [Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.1)],

              )
          ),
        ),
      ),
    );
  }

  Widget horizontalBanner(String img){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),


      ),
      // alignment: Alignment.bottomLeft,

      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.2,

      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              stops: [0.3, 0.9],
              begin: Alignment.bottomRight,
              colors: [Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2)],

            )
        ),
        child: Align(

          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best Design",

              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
