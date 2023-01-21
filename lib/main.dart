import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:provider_introduction/page1.dart';
import 'package:provider_introduction/provider/providerDemo2.dart';
import 'package:provider_introduction/provider/provider_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProviderDemo(),
          ),
          ChangeNotifierProvider(
            create: (context) => ProviderDemo2(),
          )
        ],
        child: const MaterialApp(
          home: Page1(),
        ));
  }
}
