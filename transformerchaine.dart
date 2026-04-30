String transformerChaine(String texte) {
  List<String> chiffres = [];

  // récupérer les chiffres
  for (var c in texte.split('')) {
    if (RegExp(r'\d').hasMatch(c)) {
      chiffres.add(c);
    }
  }

  chiffres = chiffres.reversed.toList();
  int indexChiffre = 0;

  String resultat = '';

  for (var c in texte.split('')) {
    if (RegExp(r'[a-z]').hasMatch(c)) {
      resultat += c.toUpperCase();
    } else if (RegExp(r'[A-Z]').hasMatch(c)) {
      resultat += c.toLowerCase();
    } else if (RegExp(r'\d').hasMatch(c)) {
      resultat += chiffres[indexChiffre++];
    } else {
      resultat += c; // caractère spécial
    }
  }

  return resultat;
}

void main() {
  print(transformerChaine("MiehEIAR54628652fr!"));
}
