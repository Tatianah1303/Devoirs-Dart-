import 'dart:io';

main() {
  print("Entrez une phrase:");
  String phrase = stdin.readLineSync()!; //ire la phrase
  int compteur = 0;
  for (int i = 0; i < phrase.length; i++) {
    String voyelles = phrase[i].toLowerCase();
    if (voyelles == 'a' ||
        voyelles == 'y' ||
        voyelles == 'o' ||
        voyelles == 'i' ||
        voyelles == 'e') {
      compteur++;
    }
  }
  print("Nombre de voyelles: $compteur");
}
