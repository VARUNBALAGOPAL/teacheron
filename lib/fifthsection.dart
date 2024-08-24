import 'package:flutter/material.dart';

class FifthSection extends StatelessWidget {
  const FifthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          const Row(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    right: 50,
                    top: 100,
                  )),
                  Text(
                    "9500+Subjects",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "1500+Skills",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "1500+Skills",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("1st_sections/cbbb.jpg"),
                          fit: BoxFit.cover)),
                  height: 200,
                  width: 400,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "What we do?",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        "TeacherOn.com is a free website, trusted by thousands of students and teachers, all over the world."
                        "You can find local tutors, online teachers, and teachers to help with tutoring, coaching, assignments, academic projects, and dissertations for over 9500 subjects.?",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
