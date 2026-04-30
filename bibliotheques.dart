import 'dart:io';

abstract class Personne {
  String nom;

  Personne(this.nom);

  void afficherRole();
}

class Etudiant extends Personne {
  int numero;

  Etudiant(String nom, this.numero) : super(nom);

  @override
  void afficherRole() {
    print("Etudiant : $nom (Numéro: $numero)");
  }
}

class Bibliothecaire extends Personne {
  Bibliothecaire(String nom) : super(nom);

  @override
  void afficherRole() {
    print("📚 Bibliothécaire : $nom");
  }
}

class Livre {
  String titre;
  String auteur;
  bool disponible;

  Livre(this.titre, this.auteur, this.disponible);
}

class Bibliotheque {
  List<Livre> livres = [];

  void ajouterLivre(Livre livre) {
    livres.add(livre);
  }

  void afficherLivres() {
    print("\n Liste des livres :");
    for (var livre in livres) {
      print(
        "${livre.titre} - ${livre.auteur} - ${livre.disponible ? "Disponible" : "Emprunté"}",
      );
    }
  }

  void emprunterLivre(String titre) {
    for (var livre in livres) {
      if (livre.titre.toLowerCase() == titre.toLowerCase() &&
          livre.disponible) {
        livre.disponible = false;
        print(" Livre emprunté !");
        return;
      }
    }
    print(" Livre non disponible !");
  }

  void retournerLivre(String titre) {
    for (var livre in livres) {
      if (livre.titre.toLowerCase() == titre.toLowerCase() &&
          !livre.disponible) {
        livre.disponible = true;
        print(" Livre retourné !");
        return;
      }
    }
    print(" Erreur lors du retour !");
  }
}

void main() {
  var biblio = Bibliotheque();

  List<Personne> personnes = [Etudiant("Jean", 1), Bibliothecaire("Rakoto")];

  print("\n=== Utilisateurs ===");
  for (var p in personnes) {
    p.afficherRole();
  }

  biblio.ajouterLivre(Livre("Math", "Marino", true));
  biblio.ajouterLivre(Livre("Informatique", "Fetra", true));

  while (true) {
    print("\n===== MENU =====");
    print("1. Afficher les livres");
    print("2. Ajouter un livre");
    print("3. Emprunter un livre");
    print("4. Retourner un livre");
    print("5. Quitter");
    print("Choix : ");

    String? choix = stdin.readLineSync();

    switch (choix) {
      case '1':
        biblio.afficherLivres();
        break;

      case '2':
        print("Titre du livre : ");
        String? titre = stdin.readLineSync();

        print("Auteur : ");
        String? auteur = stdin.readLineSync();

        if (titre != null && auteur != null) {
          biblio.ajouterLivre(Livre(titre, auteur, true));
          print(" Livre ajouté !");
        }
        break;

      case '3':
        print("Titre à emprunter : ");
        String? t = stdin.readLineSync();
        if (t != null) biblio.emprunterLivre(t);
        break;

      case '4':
        print("Titre à retourner : ");
        String? t = stdin.readLineSync();
        if (t != null) biblio.retournerLivre(t);
        break;

      case '5':
        print(" Au revoir !");
        return;

      default:
        print(" Choix invalide !");
    }
  }
}
