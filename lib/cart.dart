import 'package:flutter/material.dart';
// import 'package:shopping/favorite.dart';

// ignore: camel_case_types
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

// ignore: camel_case_types
class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
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
                          "3.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      Text(
                        "Black Shirt",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text("Rs 900.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
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
