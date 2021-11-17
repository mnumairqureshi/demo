import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 150,
                right: 25,
              ),
              child: const Image(
                image: AssetImage("login.gif"),
                height: 200,
                width: 200,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "User Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "shops");
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )),
                        const SizedBox(
                          width: 250,
                        ),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, "shops");
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "forgetpass");
                          },
                          child: const Text(
                            "Forget Password",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "register");
                            },
                            child: const Text("Create an Account"))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
