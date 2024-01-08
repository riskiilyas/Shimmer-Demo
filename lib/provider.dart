import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer_demo/response_model.dart';

class MyProvider extends ChangeNotifier {
  bool isLoading = false;
  List<ResponseModel> models = [];
  static const url = 'https://jsonplaceholder.typicode.com/photos';

  Future<void> fetchData() async {

    // set Loading to True before fetching data to display Shimmer
    isLoading = true;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        models = (json.decode(response.body) as List)
            .map((json) => ResponseModel.fromJson(json))
            .toList();
      }

      // Simulate Network Delay to Keep Shimmer for another 3 seconds
      // Remove this in REAL Implementation
      await Future.delayed(const Duration(seconds: 3));

    } finally {
      // Set Loading to False after finish fetching data
      isLoading = false;
      notifyListeners();
    }
  }
}