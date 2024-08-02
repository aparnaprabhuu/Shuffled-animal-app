import 'package:flutter/material.dart';
import 'package:project_two/content_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(166, 43, 95, 227),
          title: const Text(
            'Name the Animal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: const ContentPage(),
      ),
    ),
  );
}
