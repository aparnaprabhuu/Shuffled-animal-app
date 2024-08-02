import 'package:flutter/material.dart';
import 'package:project_two/image_shuffle.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 227, 235, 255),
            Color.fromARGB(255, 43, 95, 227),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: ImageShuffle(),
      ),
    );
  }
}
