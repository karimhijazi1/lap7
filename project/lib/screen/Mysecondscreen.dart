import 'package:flutter/material.dart';
import '../main.dart';
import './Myfirstscreen.dart';

class Mysecondscreen extends StatefulWidget {
  const Mysecondscreen({super.key});

  @override
  State<Mysecondscreen> createState() => _Mysecondscreen();
}

class _Mysecondscreen extends State<Mysecondscreen> {
  List myitems = ["18-24", "25-31", "32-39", "39-45"];
  String defultitem = "18-24";
  String great = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.elliptical(30, 100)),
                color: Colors.amber),
            child: Text(
              "Thank you for answering the questions ",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontFamily: "AbrilFatface-Regular"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.blueGrey,
            alignment: Alignment.bottomLeft,
            child: Text(
              "What do you think of the survey?",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          RadioListTile(
            title: Text("its good",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            secondary: Icon(
              Icons.check_outlined,
              color: Colors.green,
            ),
            value: "good",
            groupValue: great,
            onChanged: (val) {
              setState(() {
                work = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text(
              "No iam not Satisfied",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            secondary: Icon(
              Icons.close,
              color: Colors.red,
            ),
            value: "not good",
            groupValue: great,
            onChanged: (val) {
              setState(() {
                share = val.toString();
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyApp();
                          },
                        ));
                      });
                    },
                    icon: Icon(Icons.home),
                    label: Text("Home page",
                        style: TextStyle(fontFamily: "Lora"))),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Myfirstscreen();
                          },
                        ));
                      });
                    },
                    icon: Icon(Icons.navigate_next),
                    label: Text("previos page",
                        style: TextStyle(fontFamily: "Lora"))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
