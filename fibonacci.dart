//La somme des deux nombres precedentes(a=0)et (b=1) donc c=1 et a=b et b=c et c= 2
import 'dart:io';

main() {
  print("Entrez un nombre :");
  int nbr = int.parse(stdin.readLineSync()!);
  int nbr1 = 0, nbr2 = 1;
  int nbrsuivant;
  for (int i = 0; i < nbr; i++) {
    nbrsuivant = nbr1 + nbr2;
    nbr1 = nbr2;
    nbr2 = nbrsuivant;
    print(nbrsuivant);
  }
}
