import 'package:flutter/material.dart';

class MobileDevScreen extends StatelessWidget {
  const MobileDevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mobile Development'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Developing Mobile Apps with Flutter',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Android Development',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'To develop mobile apps for Android with Flutter, you will need to:',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 8.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('1. Install Android Studio and set it up.'),
                  const Text('2. Set up an Android emulator or connect a physical device.'),
                  const Text('3. Create a new Flutter project.'),
                  const Text('4. Add necessary plugins and dependencies.'),
                  const Text('5. Write your app.'),
                  const Text('6. Test your app on the emulator or physical device.'),
                  const Text('7. Build and release your app.'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'iOS Development',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'To develop mobile apps for iOS with Flutter, you will need to:',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 8.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('1. Install Xcode and set it up.'),
                  const Text('2. Create an Apple Developer account and set up certificates and profiles.'),
                  const Text('3. Create a new Flutter project.'),
                  const Text('4. Add necessary plugins and dependencies.'),
                  const Text('5. Write your app.'),
                  const Text('6. Test your app on a simulator or physical device.'),
                  const Text('7. Build and release your app.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
