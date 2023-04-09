import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimationDemo extends StatefulWidget {
  const RiveAnimationDemo({Key? key}) : super(key: key);

  @override
  State<RiveAnimationDemo> createState() => _RiveAnimationDemoState();
}

class _RiveAnimationDemoState extends State<RiveAnimationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RiveAnimation.network(
          fit: BoxFit.cover,
          'https://cdn.rive.app/animations/vehicles.riv',
        ),
      ),
    );
  }
}
