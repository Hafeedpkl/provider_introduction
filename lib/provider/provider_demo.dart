import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  String test1 = 'hafeed';

  void changeValue(String name) {
    test1 = name;
    notifyListeners();
  }

  Widget widget() {
    return Container(
      height: 100,
      width: 100,
      decoration:
          const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    );
  }
}
