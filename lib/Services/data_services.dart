import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travelapptest/model/data_model.dart';

class DataServices {
  //String baseUrl = "http://mark.bslmeiyu.com/api/getplaces";
  String baseUrl =
      "https://firebasestorage.googleapis.com/v0/b/flash-chat-4d48c.appspot.com/o/Data.json?alt=media&token=582190b0-3b16-4526-935d-88fc56c2e41f";
  Future<List<DataModel>> getInfo() async {
    http.Response res = await http.get(Uri.parse(baseUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        // print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
