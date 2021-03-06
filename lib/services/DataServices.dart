import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travelapptest/model/DataModel.dart';

class DataServices {
  String BaseUrl = 'https://travel-guide-bd-f5e64-default-rtdb.firebaseio.com/';

  Future<List<DataModel?>> getinfo() async {
    http.Response res = await http.get(Uri.parse(BaseUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((index) {
          DataModel.fromJason(index);
        }).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
