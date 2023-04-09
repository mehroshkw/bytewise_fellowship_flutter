import 'dart:math';

import 'package:flutter/material.dart';

import 'drageable_card.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 100;
}

double randomMargin() {
  return Random().nextDouble() * 84;
}

Color randomColor() {
  return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}

class ShapeShifting extends StatefulWidget {
  const ShapeShifting({Key? key}) : super(key: key);

  @override
  State<ShapeShifting> createState() => _ShapeShiftingState();
}

class _ShapeShiftingState extends State<ShapeShifting> {
  late Color color;
  late double borderRadius;
  late double margin;

  void change() {
    setState(() {
      color = randomColor();

      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: AnimatedContainer(
                duration: const Duration(seconds:3),
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('change'),
              onPressed: () => {change()},
            ),
            SizedBox(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DragCardPosition()));
            },
                child: Text("Go to Next Screen")),
          ],
        ),
      ),
    );
  }
}