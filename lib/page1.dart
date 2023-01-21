import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_introduction/page2.dart';
import 'package:provider_introduction/provider/provider_demo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    log('page1 rebuild');
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page2(),
                      ));
                },
                child: const Text('Page 1')),
            Consumer<ProviderDemo>(
              builder: (context, value, child) {
                //OR
                // Consumer(
                // builder: (context, ProviderDemo value, child) {
                log('consumer rebuild');
                return Text(value.test1);
              },
            ),
            TextButton(
                onPressed: () {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .changeValue("Flutter");
                },
                child: const Text('Change Value')),
            Provider.of<ProviderDemo>(context).widget()
          ],
        ),
      )),
    );
  }
}
