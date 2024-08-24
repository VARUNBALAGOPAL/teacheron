import 'package:flutter/material.dart';
import 'package:teacheron/FirstSection.dart';
import 'package:teacheron/SecondSection.dart';
import 'package:teacheron/ThirdSection.dart';
import 'package:teacheron/fourthSection.dart';
import 'package:teacheron/fifthsection.dart';
import 'package:teacheron/sisxthSection.dart';
import 'package:teacheron/reg1.dart';
import 'package:teacheron/reg@tchr.dart';
import 'package:teacheron/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            elevation: 0,
            title: const Text(
              "Teacheron",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading:
                Image.asset("Header_images/teacheron-transparent-small.png"),
          ),
          body: ListView(
            children: const [
              FirstSection(),
              SecondSection(),
              Third(),
              FourthSection(),
              FifthSection(),
              SixthSection(),
              RegistrationSection(),
              Reg1Section(),
              RegtchrSection()
            ],
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.only(top: 50, left: 50, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100,
                            color: Colors.white,
                            child: TextButton(
                              onPressed: () {
                                print("Login Button Pressed");
                              },
                              child: const Text("Login"),
                            ),
                          ),
                          Container(
                            width: 100,
                            color: const Color.fromARGB(255, 4, 3, 3),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text("Register")),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          color: Colors.orange,
                          width: 200,
                          child: TextButton(
                              onPressed: () {}, child: const Text("Store")))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Find Tutors"),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Find Tutors Jobs"),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Assignment Help"),
                      ),
                    ),
                    Container(
                      color: Colors.greenAccent,
                      width: 300,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Request a Tutor"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
