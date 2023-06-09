

import 'dart:convert';

import '../models/etudiant.dart';

class EtudiantService {
  get http => null;

  Future<List<Etudiant>> fetchEtudiants() async {
    final response = await http.get(Uri.parse('http://localhost:8080/etudiants'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((e) => Etudiant.fromJson(e)).toList();
    } else {
      throw Exception('Erreur lors de la récupération des étudiants');
    }
  }
}
