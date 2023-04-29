import 'package:flutter/material.dart';
import 'package:week6/views/platfrom_specific_code.dart';
import 'package:week6/views/web_info_screen.dart';

import '../app_performance_info/app_performance_info.dart';
import 'desktop_app_info.dart';
import 'mobile_dev_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Topics'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png'),
              SizedBox(height: 20,),
              Text(
                'Flutter supports a wide range of platforms, including:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16.0),
              Text(
                '- Android',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                '- iOS',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                '- Web (beta)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                '- Windows (alpha)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                '- macOS (alpha)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                '- Linux (alpha)',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'For detailed information visit the following:',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DesktopAppInfoUI()),
                    );
                  },
                  child: const Text('Building Desktop Apps'),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PlatformSpecificCodeScreen()),
                    );
                  },
                  child: const Text('Platform-Specific Code'),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MobileDevScreen()),
                    );
                  },
                  child: const Text('Mobile App Development'),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FlutterWebScreen()),
                    );
                  },
                  child: const Text('Web Development'),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  PerformanceScreen()),
                    );
                  },
                  child: const Text('App Performance'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
