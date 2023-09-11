import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mopas_mal_kabul_test/model/magaza_model.dart';
import 'package:mopas_mal_kabul_test/service/magaza_service.dart';

final magazaProvider = Provider((ref) => MagazaProvider(MagazaService()));

class MagazaProvider extends ChangeNotifier {
  final MagazaService _magazaService;
  String? magazaName;
  MagazaProvider(this._magazaService);

  Future<MagazaDataModel> getMagazaData() async {
    return await Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        var magaza = _magazaService.getMagazaData();
        return magaza;
      },
    );
  }
}
