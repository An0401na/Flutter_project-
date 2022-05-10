import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Res.dart';

class Services_Res {
  static const String url = 'http://203.249.22.50:8080/reslist';

  static Future<List<Res>> getRests() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<Res> Res1 = resFromJson(response.body);
        print("Res  출력 ");
        // print(response.body);
        return Res1;
      } else {
        print('empty');
        return <Res>[]; // 빈 사용자 목록을 반환
      }
    } catch (e) {
      return <Res>[];
    }
  }

  static Future<List<ResImageDir>> getRestImage() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<ResImageDir> ResImage = resImageDirFromJson(response.body);
        print("aaa???");
        print(response.body);
        return ResImage;
      } else {
        print('empty');
        return <ResImageDir>[]; // 빈 사용자 목록을 반환
      }
    } catch (e) {
      return <ResImageDir>[];
    }
  }
}
