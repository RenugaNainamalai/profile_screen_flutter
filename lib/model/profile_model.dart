class ProfiledataModel {
  int _userId;
  int _id;
  String _title;

  ProfiledataModel({int userId, int id, String title}) {
    this._userId = userId;
    this._id = id;
    this._title = title;
  }

  int get userId => _userId;

List<ProfiledataModel> profileData = [];
  set userId(int userId) => _userId = userId;
  int get id => _id;
  set id(int id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;

  ProfiledataModel.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _id = json['id'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['id'] = this._id;
    data['title'] = this._title;
    return data;
  }
}
