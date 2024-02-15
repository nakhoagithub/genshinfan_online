import 'package:flutter/material.dart';

class CircularProgressApp extends StatelessWidget {
  final double size;
  final double strokeWidth;
  const CircularProgressApp({
    super.key,
    this.size = 14,
    this.strokeWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

class LinearProgressApp extends StatelessWidget {
  final double height;
  final double width;
  const LinearProgressApp({
    super.key,
    this.height = 10,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: const LinearProgressIndicator(),
      ),
    );
  }
}
