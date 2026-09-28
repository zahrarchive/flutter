import 'package:flutter/material.dart';

class LoginPageApp extends StatefulWidget {
  const LoginPageApp({super.key});

  @override
  State<LoginPageApp> createState() => _LoginPageAppState();
}

class _LoginPageAppState extends State<LoginPageApp> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          Text(
            "Welcome to application $statusLogin",
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 130, 181, 220),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtUsername,
              decoration: InputDecoration(hint: Text("input username")),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(hint: Text("input password")),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                // fungsinya untuk reload / refresh satu page full
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin") {
                  statusLogin = "admin";
                  print("sukses login");
                } else {
                  statusLogin = "failed";
                  print("gagal login");
                }
              });
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 135, 177, 139),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}