int nombrefrequent(List<int> nombres) {
  Map<int, int> compteur = {};
  for (int valeur in nombres) {
    compteur[valeur] = (compteur[valeur] ?? 0) + 1;
  }
  int plufrequent = nombres[0];
  int nbfois = 0;
  compteur.forEach((valeur, nbfoi) {
    if (nbfoi > nbfois) {
      nbfois = nbfoi;
      plufrequent = valeur;
    }
  });
  return plufrequent;
}

main() {
  print(nombrefrequent([7, 5, 6, 4, 4, 45, 2, 1]));
}
