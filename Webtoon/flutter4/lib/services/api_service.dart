import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  //비동기(asynchronous)-> 작업 완료 안기다리고 다음 작업 가능
  void getTodaysToons() async {
    final url = Uri.parse("$baseUrl/$today");
    //get : 특정 url에 요청을 보내고 API 요청이 처리되서 Future 자료형의 응답을 반환
    //but 우리는 이 응답을 사용해야해서 기다려야 함. await 사용으로 기다림.
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
