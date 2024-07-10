import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(postsel());
}

class postsel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white, // Set white as primary color
      ),
      home: PostSelectionPage(),
    );
  }
}

class PostSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Set app bar background to black
        title: Text('Post Selection', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 350,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img1.png"))),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Headline",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description:",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Blinken By His Side, S Jaishankar's Smart Reply To Russia Question S Jaishankar said different nations have different histories and challenges and it is very hard to have a unidimensional relationship. Blinken By His Side, S Jaishankar's Smart Reply To Russia QuestionS Jaishankar said different nations have different histories and challenges and it is very hard to have a unidimensional relationship.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      )),
      
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: Colors.black, // Set bottom navigation bar background to black
          child: Container(
            height: 70.0, // Set the height of the bottom navigation bar
            padding: EdgeInsets.zero, // Set padding to zero
            decoration: BoxDecoration(
              color: Colors.white, // Set container color to white
              borderRadius: BorderRadius.circular(30.0), // Curve the container from all corners
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.cancel, color: Colors.black,size: 35),
                      onPressed: () {
                        // Add functionality for reject
                      },
                    ),
                    // Removed Text widget for Reject
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.check_circle, color: Colors.black,size:35),
                      onPressed: () {
                        // Add functionality for accept
                      },
                    ),
                    // Removed Text widget for Accept
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.watch_later, color: Colors.black,size:35),
                      onPressed: () {
                        // Add functionality for read later
                      },
                    ),
                    // Removed Text widget for Read Later
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
