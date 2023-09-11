import 'package:mopas_mal_kabul_test/model/magaza_model.dart';

import '../data/magaza_data.dart';

class MagazaService {
  MagazaDataModel? getMagazaData() {
    if (magazaData != null) {
      for (var magaza in magazaData) {
        return MagazaDataModel.fromJson(magaza);
      }
    }
    return null;
  }
}
