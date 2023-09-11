import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mopas_mal_kabul_test/app/provider/magaza_provider.dart';

final homeProvider =
    ChangeNotifierProvider((ref) => HomeProvider(ref.read(magazaProvider)));

class HomeProvider extends ChangeNotifier {
  String? magazaTitle;
  final MagazaProvider _magazaProvider;
  HomeProvider(this._magazaProvider);

  getMagazaName() async {
    var magaza = await _magazaProvider.getMagazaData();
    for (var magazaName in magaza.magazaData!) {
      switch (magazaName.name) {
        case 'A':
          magazaTitle = magazaName.name;
          notifyListeners();
          break;
        case 'B':
          magazaTitle = magazaName.name;
          notifyListeners();
          break;
        case 'C':
          magazaTitle = magazaName.name;
          notifyListeners();
          break;
        case 'D':
          magazaTitle = magazaName.name;
          notifyListeners();
          break;
        case 'E':
          magazaTitle = magazaName.name;
          notifyListeners();
          break;
        default:
          magazaName.name = 'MOPAŞ';
      }
    }
  }
}
