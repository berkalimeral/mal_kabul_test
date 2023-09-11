import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mopas_mal_kabul_test/app/provider/magaza_provider.dart';

final homeProvider =
    ChangeNotifierProvider((ref) => HomeProvider(ref.read(magazaProvider)));

class HomeProvider extends ChangeNotifier {
  String? magazaName;
  final MagazaProvider _magazaProvider;
  HomeProvider(this._magazaProvider);

  getMagazaName() async {
    var magaza = await _magazaProvider.getMagazaData();
    switch (magaza!.name) {
      case 'A':
        magazaName = magaza.name;
        notifyListeners();
        break;
      case 'B':
        magazaName = magaza.name;
        notifyListeners();
        break;
      case 'C':
        magazaName = magaza.name;
        notifyListeners();
        break;
      case 'D':
        magazaName = magaza.name;
        notifyListeners();
        break;
      case 'E':
        magazaName = magaza.name;
        notifyListeners();
        break;
      default:
        magazaName = 'MOPAŞ';
    }
  }
}
