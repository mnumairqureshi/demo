import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class shops extends StatefulWidget {
  const shops({Key? key}) : super(key: key);

  @override
  _shopsState createState() => _shopsState();
}

// ignore: camel_case_types
class _shopsState extends State<shops> {
  int _currentIndex = 0;

  // get crossAxisAlignment => null;
  List<String> navBarItem = [
    "Shoes",
    "Clotes",
    "Bags",
    "Other1",
    "Other2",
    "Other3",
    "Other4",
    "Other5",
    "Clotes",
    "Bags",
    "Other1",
    "Other2",
    "Other3",
    "Other4",
    "Other5",
    "Clotes",
    "Bags",
    "Other1",
    "Other2",
    "Other3",
    "Other4",
    "Other5"
  ];
  @override
  Widget build(BuildContext context) {
    // var mainAxisAlignment = MainAxisAlignment;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                "2.jpg",
              ),
            ),

            // const Image(image: AssetImage("2.jpg")
            // ),
            const DrawerHeader(
              child: Text(
                "WelCome",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "shops");
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  )),
              title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "shops");
                },
                child: const Text(
                  "Home Page",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "favorite");
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  )),
              title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "favorite");
                },
                child: const Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "cart");
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.blue,
                  )),
              title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "cart");
                },
                child: const Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "login");
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.blue,
                  )),
              title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "login");
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "register");
                  },
                  icon: const Icon(
                    Icons.switch_account,
                    color: Colors.blue,
                  )),
              title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "register");
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
              icon: const Icon(Icons.logout)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "favorite");
            },
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "cart");
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: navBarItem.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(15)),
                                child: Center(
                                  child: Text(navBarItem[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              );
                            })),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage(
                          "4.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      Text("Multi Color",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Rs 900.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage(
                          "5.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      Text("Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Rs 900.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage(
                          "6.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      Text("Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Rs 1900.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                width: 400,
                child: Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage(
                          "1.jpg",
                        ),
                        height: 125,
                        width: 200,
                      ),
                      Text("Shoes",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                      Text("Rs 1200.00",
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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ("Search"),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: ("Camera"),
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Profile"),
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (index) {
          setState(() {
            Navigator.pushNamed(context, "cart");
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
