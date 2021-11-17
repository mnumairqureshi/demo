
import 'package:flutter/material.dart';

// ignore: camel_case_types
class forgetpass extends StatefulWidget {
  const forgetpass({Key? key}) : super(key: key);

  @override
  _forgetpassState createState() => _forgetpassState();
}

// ignore: camel_case_types
class _forgetpassState extends State<forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
              icon: const Icon(Icons.logout_outlined)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "favorite");
              },
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "shops");
              },
              icon: const Icon(Icons.home)),
        ],
      ),
      body: Row(
        children: [
          const Padding(padding: EdgeInsets.all(30)),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: Center(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage(
                          "uc.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
