class MagazaDataModel {
  String? magazaNo;
  String? magazaKod;

  MagazaDataModel({this.magazaNo, this.magazaKod});

  MagazaDataModel.fromJson(Map<String, dynamic> json) {
    magazaNo = json['magaza_no'];
    magazaKod = json['magaza_kod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['magaza_no'] = magazaNo;
    data['magaza_kod'] = magazaKod;
    return data;
  }
}
