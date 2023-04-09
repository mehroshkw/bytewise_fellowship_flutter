import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:week_4_bytwise/animations/explicit_animations/rive_animation/rive_animation_demo.dart';
import 'package:week_4_bytwise/animations/implecit_animations/shape_shifters.dart';

class AnimatedWidgetWithOpacity extends StatefulWidget {
  const AnimatedWidgetWithOpacity({Key? key}) : super(key: key);

  @override
  State<AnimatedWidgetWithOpacity> createState() => _AnimatedWidgetWithOpacityState();
}

class _AnimatedWidgetWithOpacityState extends State<AnimatedWidgetWithOpacity> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit Animations"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            child: const Text(
              'Click to see Windows logo',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () => setState(() {
              opacity = 1.0;
            }),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 4),
            opacity: opacity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                ],),
              ],
            ),
          ),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShapeShifting()));
          },
              child: Text("Go to Next Screen")),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RiveAnimationDemo()));
          },
              child: Text("See Rive Animation"))
        ],
      ),
    );
  }
}
