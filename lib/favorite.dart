import 'package:flutter/material.dart';

// ignore: camel_case_types
class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  _favoriteState createState() => _favoriteState();
}

// ignore: camel_case_types
class _favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
              icon: const Icon(Icons.logout_outlined)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "cart");
              },
              icon: const Icon(Icons.shopping_cart)),
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
                          "5.jpg",
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
