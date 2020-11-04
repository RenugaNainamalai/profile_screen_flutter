import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:profile_screen_flutter/model/profile_model.dart';

class ProfileRepo {
  Future<ProfiledataModel> fetchProfile() async {
    var response =
        await http.get("https://jsonplaceholder.typicode.com/albums/1");
    print(response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      ProfiledataModel profileData =
      ProfiledataModel.fromJson(data);
      return profileData;
    } else {
      throw Exception();
    }
  }
  
}
