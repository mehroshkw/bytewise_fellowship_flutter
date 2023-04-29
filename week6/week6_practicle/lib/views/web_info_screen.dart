import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FlutterWebScreen extends StatelessWidget {
  const FlutterWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter for Web'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.web,
              size: 96,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            const Text(
              'Flutter for Web',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                'Flutter allows you to build beautiful and fast web applications with a single codebase. '
                    'With Flutter, you can build web apps that look and feel like native apps, '
                    'and take advantage of the rich set of pre-built widgets and plugins. '
                    'Flutter for web supports desktop and mobile browsers, '
                    'including Chrome, Safari, Firefox, Edge, and many more.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                try {
                  await launchUrl(Uri.parse('https://flutter.dev/web'));
                } catch (e) {
                  print(e);
                }

              },
              child: const Text('Learn More'),
            ),
          ],
        ),
      ),
    );
  }
}
