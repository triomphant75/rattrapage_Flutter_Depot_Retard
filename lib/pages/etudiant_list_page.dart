import 'package:flutter/material.dart';

import '../models/etudiant.dart';
import '../services/etudiant_service.dart';

class EtudiantListPage extends StatefulWidget {
  @override
  _EtudiantListPageState createState() => _EtudiantListPageState();
}

class _EtudiantListPageState extends State<EtudiantListPage> {
  late Future<List<Etudiant>> _etudiantsFuture;
  late EtudiantService _etudiantService;

  @override
  void initState() {
    super.initState();
    _etudiantService = EtudiantService();
    _etudiantsFuture = _etudiantService.fetchEtudiants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des étudiants'),
      ),
      body: FutureBuilder<List<Etudiant>>(
        future: _etudiantsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Erreur lors du chargement des étudiants'),
            );
          } else if (snapshot.hasData) {
            List<Etudiant> etudiants = snapshot.data!;
            return ListView.builder(
              itemCount: etudiants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${etudiants[index].nom} ${etudiants[index].prenom}'),
                  // Afficher d'autres informations de l'étudiant si nécessaire
                );
              },
            );
          } else {
            return Center(
              child: Text('Aucun étudiant trouvé'),
            );
          }
        },
      ),
    );
  }
}
