import 'package:flutter/material.dart';
import '../main.dart';
import './Mysecondscreen.dart';

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key});

  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  List myitems = ["18-24", "25-31", "32-39", "39-45"];
  String defultitem = "18-24";
  bool yes = false;
  bool yes1 = false;
  bool yes2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white10, Colors.grey]),
          image: DecorationImage(
            image: NetworkImage(
                "https://th.bing.com/th/id/R.8afef32d17d1bfe88547d50ecbd76a4b?rik=WHVuno0U90CTBg&pid=ImgRaw&r=0"),
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 400,
                  color: Colors.blueAccent,
                  alignment: Alignment.topCenter,
                  child: Text(
                    "please fill more information ",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontFamily: "DancingScript"),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Text(
                    "How old are you?",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontFamily: "BebasNeue"),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 5,
                  color: Colors.black12,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.lightBlue,
                  child: DropdownButton(
                    focusColor: Colors.pinkAccent,
                    value: defultitem,
                    items: myitems
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text("$e")))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        defultitem = val.toString();
                      });
                    },
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 5,
                  color: Colors.black12,
                ),
                Container(
                  child: Text(
                    "What type of jop you prefer?",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    checkColor: Colors.blue,
                    isThreeLine: true,
                    title: Text("commercial sector",
                        style: TextStyle(fontSize: 30, color: Colors.black)),
                    subtitle: Text(
                      "For people who like to take risks",
                      style: TextStyle(fontSize: 20, color: Colors.black26),
                    ),
                    secondary: Icon(Icons.business),
                    activeColor: Colors.black,
                    value: yes,
                    onChanged: (val) {
                      setState(() {
                        yes = val!;
                      });
                    }),
                CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    checkColor: Colors.blue,
                    isThreeLine: true,
                    title: Text("The medical section",
                        style: TextStyle(fontSize: 30, color: Colors.black)),
                    subtitle: Text(
                      "For people who like to People",
                      style: TextStyle(fontSize: 20, color: Colors.black26),
                    ),
                    secondary: Icon(Icons.local_hospital),
                    activeColor: Colors.black,
                    value: yes1,
                    onChanged: (val) {
                      setState(() {
                        yes1 = val!;
                      });
                    }),
                CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    checkColor: Colors.blue,
                    isThreeLine: true,
                    title: Text("Services sector",
                        style: TextStyle(fontSize: 30, color: Colors.black)),
                    subtitle: Text(
                      "For people who like to serve",
                      style: TextStyle(fontSize: 20, color: Colors.black26),
                    ),
                    secondary: Icon(Icons.hotel),
                    activeColor: Colors.black,
                    value: yes2,
                    onChanged: (val) {
                      setState(() {
                        yes2 = val!;
                      });
                    }),
              ],
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
                      label: Text(
                        "Home page",
                        style: TextStyle(fontFamily: "Lora"),
                      )),
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
                              return Mysecondscreen();
                            },
                          ));
                        });
                      },
                      icon: Icon(Icons.navigate_next),
                      label: Text("Next page",
                          style: TextStyle(fontFamily: "Lora"))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
