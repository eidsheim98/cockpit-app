import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) =>
            WebviewScaffold(
              ignoreSSLErrors: true,
              url: "192.168.86.51:9090",
              appBar: AppBar(
                toolbarHeight: 0,
                backgroundColor: Colors.black,
              ),
            ),
      },
    );
  }
}