import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PerformanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Performance Best Practices'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Performance Best Practices',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              '1. Reduce widget rebuilds by using const and final widgets when possible.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              '2. Use the shouldRepaint and shouldRebuildSemantics methods in your custom Painters and Semantics widgets to optimize performance.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              '3. Use the ValueKey and ObjectKey classes to help Flutter identify which widgets need to be rebuilt.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              '4. Use the const constructor when creating EdgeInsets and BorderRadius objects.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              '5. Use the Builder widget to delay the creation of expensive widgets until they are needed.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'New Impellers Performance Tool',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Flutter introduced a new performance tool called Impellers. '
                  'Impellers is a powerful tool for measuring and analyzing the performance of your Flutter app. '
                  'It allows you to measure the frame rate, CPU usage, and memory usage of your app, as well as identify performance bottlenecks and areas for optimization. '
                  'To use Impellers, you need to add the `flutter_driver` package to your app and create a driver script. '
                  'Then you can start the Impellers profiler using the `flutter_driver` package and run your driver script with the profiler enabled. '
                  'For more information on how to use Impellers, please refer to the official Flutter documentation.',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                try {
                  await launchUrl(Uri.parse('https://docs.flutter.dev/perf/impeller'));
                } catch (e) {
                  print(e);
                }
              },
              child: const Text('Learn more about Impellers'),
            ),
          ],
        ),
      ),
    );
  }
}
