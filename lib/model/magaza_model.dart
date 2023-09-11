class MagazaDataModel {
  String? no;
  String? code;
  String? name;

  MagazaDataModel({this.no, this.code, this.name});

  MagazaDataModel.fromJson(Map<String, dynamic> json) {
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
