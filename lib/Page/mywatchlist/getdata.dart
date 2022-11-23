import 'dart:convert';
import 'package:flutterassignment/Page/mywatchlist/watchlistmodel.dart';
import 'package:http/http.dart' as http;

Future<List<MyWatchlist>> fetchWatchlist() async {
  var url = Uri.parse('https://pbdassignment3.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchlist> listMyWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchlist.add(MyWatchlist.fromJson(d));
    }
  }

  return listMyWatchlist;
}