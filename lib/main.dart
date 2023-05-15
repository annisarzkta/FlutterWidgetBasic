import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Basic Widget")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                "Sign In", 
              textDirection: TextDirection.rtl,
              ),
              const TextField(
                decoration: InputDecoration(hintText:"Username"),
              ),
              const TextField(
                decoration: InputDecoration(hintText:"Password"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Remember Me"), Text("Forgot Password")]
              ),
              ElevatedButton(onPressed:() {}, child: const Text("Login")),
              GestureDetector(
                onTap: () {
                  print("Login");
                },
                child: Container(
                  width: 50, 
                  height: 50, 
                  color: Colors.purple, 
                  child: Text("Login")),
              ),
            ],
          ),
        ),
    ),
    );
  }
}
