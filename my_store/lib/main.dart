import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_store/Global%20variable/globalVariable.dart';
import 'dart:convert';

import 'package:my_store/UI%20Widgets/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await fetchProductApi();
  runApp(const MyApp());
}

Future<void> fetchProductApi() async {
  final response =
      await http.get(Uri.parse("https://fakestoreapi.com/products"));
  GlobalVariable.myData = json.decode(response.body);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
