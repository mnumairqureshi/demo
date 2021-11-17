import 'package:flutter/material.dart';
import 'package:shopping/login.dart';
import 'package:shopping/register.dart';
import 'package:shopping/shops.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/favorite.dart';
import 'package:shopping/ForgetPass.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const login(),
      'register': (context) => const register(),
      'shops': (context) => const shops(),
      'cart': (context) => const cart(),
      'favorite': (context) => const favorite(),
      'forgetpass': (context) => const forgetpass(),
    },
  ));
}
