import 'package:flutter/material.dart';

class DesktopAppInfoUI extends StatelessWidget {
  const DesktopAppInfoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Desktop App Info'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Flutter is a powerful framework that allows you to create desktop apps for different platforms such as Windows, macOS, and Linux.',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'To create a desktop app with Flutter, you need to set up your development environment and configure your project for each platform.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              children: [
                _PlatformInfoCard(
                  platform: 'Windows',
                  logoPath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Windows_logo_-_2012.svg/1024px-Windows_logo_-_2012.svg.png',
                  instructions: [
                    'Download and install the Windows SDK.',
                    'Add the Flutter SDK to your PATH environment variable.',
                    'Create a new Flutter project and configure it for Windows.',
                    'Build and run your app using the Flutter CLI or Android Studio.',
                  ],
                ),
                _PlatformInfoCard(
                  platform: 'macOS',
logoPath: 'https://e7.pngegg.com/pngimages/346/81/png-clipart-macos-sierra-os-x-mavericks-apple-angle-logo.png',
                  instructions: [
                    'Download and install Xcode.',
                    'Add the Flutter SDK to your PATH environment variable.',
                    'Create a new Flutter project and configure it for macOS.',
                    'Build and run your app using the Flutter CLI or Android Studio.',
                  ],
                ),
                _PlatformInfoCard(
                  platform: 'Linux',
                  logoPath: 'https://1000logos.net/wp-content/uploads/2017/03/LINUX-LOGO.png',
                  instructions: [
                    'Download and install the Linux SDK.',
                    'Add the Flutter SDK to your PATH environment variable.',
                    'Create a new Flutter project and configure it for Linux.',
                    'Build and run your app using the Flutter CLI or Android Studio.',
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _PlatformInfoCard extends StatelessWidget {
  final String platform;
  final String logoPath;
  final List<String> instructions;

  const _PlatformInfoCard({
    Key? key,
    required this.platform,
    required this.logoPath,
    required this.instructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  logoPath,
                  height: 100.0,
                  width: 100.0,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Creating a Desktop App for $platform',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: instructions
                      .map((instruction) => Text('• $instruction'))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
