import 'package:palman_petshop_app/provider/cart_provider.dart';
import 'package:palman_petshop_app/screens/onboarding.dart';
import 'package:palman_petshop_app/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Onboarding(),
        '/shop': (context) => const Shop()
      },
    );
  }
}