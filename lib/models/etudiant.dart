class Etudiant {
  final String nom;
  final String prenom;
  final String tuteur;
  final String email;
  final String password;
  final String libelleClasse;

  Etudiant({
    required this.nom,
    required this.prenom,
    required this.tuteur,
    required this.email,
    required this.password,
    required this.libelleClasse,
  });

  factory Etudiant.fromJson(Map<String, dynamic> json) {
    return Etudiant(
      nom: json['nom'],
      prenom: json['prenom'],
      tuteur: json['tuteur'],
      email: json['email'],
      password: json['password'],
      libelleClasse: json['libelleClasse'],
    );
  }
}
