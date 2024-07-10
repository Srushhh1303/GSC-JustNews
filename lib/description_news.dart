import 'package:flutter/material.dart';

import 'home.dart';

class description_news extends StatefulWidget {
  const description_news({super.key});

  @override
  State<description_news> createState() => _description_newsState();
}

class _description_newsState extends State<description_news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'News Description',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => homm()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
      ),
    );
  }
}
