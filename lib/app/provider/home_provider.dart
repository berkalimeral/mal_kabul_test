import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {
  String? magazaTitle;
  HomeProvider();

  setMagazaName(String name) async {
    magazaTitle = name;
    notifyListeners();
  }
}
