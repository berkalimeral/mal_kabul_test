import 'package:mopas_mal_kabul_test/model/magaza_model.dart';

import '../data/magaza_data.dart';

class MagazaService {
  MagazaDataModel getMagazaData() {
    return MagazaDataModel.fromJson(magazaJson);
  }
}
