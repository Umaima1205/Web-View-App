import 'package:flutter/material.dart';
import 'package:webviewapp/web_view_container.dart';

class WebViewExample extends StatefulWidget {
  const WebViewExample({super.key});

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Web View',
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 50,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WebViewApp()), // Replace with your WebViewContainer widget
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo, // Set button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Set border radius
            ),
            minimumSize: const Size(200, 50), // Set button size
          ),
          child: const Text(
            "Open WebView",
            style: TextStyle(
              color: Colors.white, // Set text color to white
            ),
          ),
        ),
      ),
    );
  }
}

