import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("10.jpg"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: const Text(
                "Sign up\nNow",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        filled: true,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            hintText: "Confirm Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                        const SizedBox(
                          width: 250,
                        ),
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
                              Navigator.pushNamed(context, "login");
                            },
                            child: const Text("Already Sign Up"))
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
