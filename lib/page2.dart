import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_introduction/page3.dart';
import 'package:provider_introduction/provider/provider_demo.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    log('page2 rebuild');
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page3(),
                      ));
                },
                child: const Text('Page 2')),
            Text(Provider.of<ProviderDemo>(context).test1),
            Provider.of<ProviderDemo>(context).widget()
          ],
        ),
      )),
    );
  }
}
