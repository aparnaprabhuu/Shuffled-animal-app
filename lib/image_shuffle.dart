import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class ImageShuffle extends StatefulWidget {
  const ImageShuffle({super.key});
  @override
  State<ImageShuffle> createState() {
    return _ImageShuffleState();
  }
}

class _ImageShuffleState extends State<ImageShuffle> {
  var currentImage = 'assets/image9.jpeg';

  void shuffleImage() {
    var imageShuffle = randomizer.nextInt(8) + 1;
    setState(() {
      currentImage = 'assets/image$imageShuffle.jpeg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentImage,
          width: 300,
          height: 250,
        ),
        const SizedBox(
          height: 80,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(171, 43, 95, 227),
          ),
          onPressed: shuffleImage,
          label: const Text('Shuffle'),
          icon: const Icon(Icons.shuffle_sharp),
        ),
      ],
    );
  }
}
