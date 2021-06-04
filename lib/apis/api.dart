import 'dart:convert';

import 'package:berser_app_mobile/models/project.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future fetchProjects() async {
    final response =
        await http.get(Uri.parse("http://localhost:5002/api/projects"));

    if (response.statusCode == 200) {
      List list = json.decode(response.body);

      List<Project> projects = list.map((e) => (Project.fromJson(e))).toList();

      return projects;
    } else {
      throw Exception("Failed to load user");
    }
  }
}
