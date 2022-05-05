import 'package:http/http.dart' as http;
import 'Res.dart';

class Services {
  static const String url = 'http://203.249.22.50:8080/reslist';

  static Future<List<Res>> getUsers() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<Res> Res1 = resFromJson(response.body);
        print(response.body);
        return Res1;
      } else {
        print('empty');
        return <Res>[]; // 빈 사용자 목록을 반환
      }
    } catch (e) {
      return <Res>[];
    }
  }
}
