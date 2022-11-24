import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<MyWatchList>> fetchMyWatchList() async {
        var url = Uri.parse('https://aplikasitugas2.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object 
        List<MyWatchList> listToDo = [];
        for (var d in data) {
        if (d != null) {
            listToDo.add(MyWatchList.fromJson(d));
        }
        }

        return listToDo;
    }