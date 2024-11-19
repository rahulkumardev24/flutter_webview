import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? webViewController;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View in Flutter "),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri("https://www.instagram.com/"),
          ),
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
        ),
      ),
    );
  }
}

/// in this view web view show
/// call website
///
