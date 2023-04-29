import 'package:flutter/material.dart';

class PlatformSpecificCodeScreen extends StatelessWidget {
  const PlatformSpecificCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform-Specific Code'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter provides a way to write platform-specific code using:',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.android),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Android-specific code',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'You can write Android-specific code using the Java or Kotlin programming languages. Flutter provides a way to call this code from your Dart code using platform channels.',
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.phone_iphone),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'iOS-specific code',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'You can write iOS-specific code using the Objective-C or Swift programming languages. Flutter provides a way to call this code from your Dart code using platform channels.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.web),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Web-specific code',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'You can write Web-specific code using JavaScript. Flutter provides a way to call this code from your Dart code using platform channels.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.difference_outlined),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Examples:',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Platform Channels (to access native APIs):',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "import 'package:flutter/services.dart}\n// Invoke the platform specific method\nfinal result = await MethodChannel('channel_name').invokeMethod('method_name', arguments);"
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Platform Views (to embed native views):',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const SizedBox(height: 8.0),
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "import 'package:flutter/services.dart';\nimport 'package:flutter/foundation.dart';\nimport 'package:flutter/material.dart';"
                                    "\nclass NativeView extends StatelessWidget {"
                                    "\n@override\nWidget build(BuildContext context) {\nif (defaultTargetPlatform == \n"
                                    " TargetPlatform.android) {\n// return AndroidView for Android platform\nreturn AndroidView(viewType: 'view_type');\n} else if (defaultTargetPlatform == TargetPlatform.iOS) {\n"
                                    "// return UiKitView for iOS platform\nreturn UiKitView(viewType: 'view_type');\n}\nreturn Text('Not supported platform');}}"
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
