import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_introduction/page1.dart';
import 'package:provider_introduction/provider/provider_demo.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page1(),
                      ));
                },
                child: const Text('Page 3')),
            Text(Provider.of<ProviderDemo>(context).test1)
          ],
        ),
      )),
    );
  }
}
