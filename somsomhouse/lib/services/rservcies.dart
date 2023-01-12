import 'dart:convert';

import 'package:http/http.dart' as http;

class RServices {
  /// R과 연결하기 위해 스프링 부트 서버와 연결하는 부분 (기본틀 만들기 / 도림동)
  /// 만든 날짜 : 2023.1.12
  /// 만든이 : 권순형
  Future<String> connectDorimdong(
      String name, String area, String floor, String season) async {
    String googleLocationsURL =
        'http://127.0.0.1:8080/dorim?name=$name&area=$area&floor=$floor&weather=$season';

    final response = await http.get(Uri.parse(googleLocationsURL));
    var dataConverted = json.decode(utf8.decode(response.bodyBytes));
    print(dataConverted);
    return dataConverted;
  }
}
