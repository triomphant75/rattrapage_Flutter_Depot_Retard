import 'package:flutter/material.dart';
import 'package:flutter_application/pages/etudiant_list_page.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Test de l\'affichage de la liste des étudiants', (WidgetTester tester) async {
    // Créer une instance de EtudiantListPage
    await tester.pumpWidget(EtudiantListPage());

    // Attendre que la liste des étudiants soit chargée
    await tester.pump();

    // Vérifier l'existence d'un widget avec le titre de l'écran
    expect(find.text('Liste des étudiants'), findsOneWidget);

    // Vérifier la présence d'un widget de chargement initial
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
