List<List<int>> trouverPaires(List<int> liste, int somme) {
  Set<int> vus = {};
  List<List<int>> resultat = [];
  for (int nombre in liste) {
    int complement = somme - nombre;
    if (vus.contains(complement)) {
      resultat.add([complement, nombre]);
    }
    vus.add(nombre);
  }
  return resultat;
}

void main() {
  List<int> liste = [5, 2, 0, 4, 1, 3];
  int somme = 5;
  var resultats = trouverPaires(liste, somme);
  print("Paires trouvées: $resultats");
}
