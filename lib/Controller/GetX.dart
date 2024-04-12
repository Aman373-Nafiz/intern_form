import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intern_form/Model/course.dart';

class course_data extends GetxController {
  final api = 'https://getlearn-admin.getbuildfirst.com/api/course/details/1';
     Course? course  ; 

  @override
  void onInit() {
    fetchData();
    super.onInit(); 
  }

  fetchData() async {
    final response = await http.get(Uri.parse(api)); 
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      course = Course.fromJson(body); // Assign fetched data to course property
    } else {
      throw Exception('Failed to load course data');
    }
  }
}
