import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow.withOpacity(0.4),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const TextField(
                style: TextStyle(color: Colors.red, fontSize: 15),
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: const TextField(
                obscureText: true,
                style: TextStyle(color: Colors.red, fontSize: 15),
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.05,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 12,
                  ),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff00b4db), Color(0xff045de9)],
                        begin: Alignment.centerLeft,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  )),
                )),
          ],
        ),
      ),
    );
  }
}
