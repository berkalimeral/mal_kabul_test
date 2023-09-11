class MagazaDataModel {
  List<MagazaData>? magazaData;

  MagazaDataModel({this.magazaData});

  MagazaDataModel.fromJson(Map<String, dynamic> json) {
    if (json['magazaData'] != null) {
      magazaData = <MagazaData>[];
      json['magazaData'].forEach((v) {
        magazaData!.add(MagazaData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (magazaData != null) {
      data['magazaData'] = magazaData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MagazaData {
  String? no;
  String? code;
  String? name;

  MagazaData({this.no, this.code, this.name});

  MagazaData.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no'] = no;
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}
