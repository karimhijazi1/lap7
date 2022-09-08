import 'package:flutter/material.dart';
import './screen/Myfirstscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

bool yes = false;
bool No = false;
bool yes2 = false;
bool yes3 = false;
bool No2 = false;
bool No3 = false;
String share = "hello";
String gender = "";
String work = "";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: ListView(
          // physics: ,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.brown,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                alignment: Alignment.center,
                margin: EdgeInsets.all(80),
                child: Text(
                  "Center for Social Studies",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontFamily: "AkayaTelivigala"),
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.grey.shade100])),
                width: 200,
                height: 400,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "this is a questionnaire to Collect information about the surrounding community",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Cairo",
                            color: Colors.redAccent),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Do you want to share?",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Cairo",
                            color: Colors.blue),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    RadioListTile(
                      title: Text("yes i wont to share",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Anton")),
                      subtitle: Text(
                        "i know about it",
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                      secondary: Icon(
                        Icons.check_outlined,
                        color: Colors.green,
                      ),
                      value: "iwont",
                      groupValue: share,
                      onChanged: (val) {
                        setState(() {
                          share = val.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("No, dont wont to share",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Anton")),
                      subtitle: Text(
                        "i dont care about it",
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                      ),
                      secondary: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                      value: "i dont wont",
                      groupValue: share,
                      onChanged: (val) {
                        setState(() {
                          share = val.toString();
                        });
                      },
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.grey.shade100])),
              width: 200,
              height: 400,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "What's your gender?",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontFamily: "Cairo"),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  RadioListTile(
                    title: Text("Female",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Anton")),
                    secondary: Icon(
                      Icons.girl,
                      color: Colors.pink,
                    ),
                    value: "female",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Male",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Anton")),
                    secondary: Icon(
                      Icons.boy,
                      color: Colors.blue,
                    ),
                    value: "male",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val.toString();
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                width: 200,
                height: 400,
                child: Column(children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "do you work",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Cairo",
                          color: Colors.blue),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  RadioListTile(
                    title: Text("yes,im working",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Anton")),
                    secondary: Icon(
                      Icons.check_outlined,
                      color: Colors.green,
                    ),
                    value: "work",
                    groupValue: work,
                    onChanged: (val) {
                      setState(() {
                        work = val.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "no idont work",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Anton"),
                    ),
                    secondary: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    value: "i dont work",
                    groupValue: work,
                    onChanged: (val) {
                      setState(() {
                        share = val.toString();
                      });
                    },
                  ),
                  Container(
                    width: 299,
                    height: 100,
                    margin: EdgeInsets.only(top: 90),
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(Icons.navigate_next),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return Myfirstscreen();
                                  }),
                                ),
                              );
                            });
                          },
                          label: Text(
                            "go to next screen",
                            style: TextStyle(fontSize: 25, fontFamily: "Lora"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]))
          ]),
    );
  }
}
