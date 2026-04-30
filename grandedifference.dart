int plusGrandeDifference(List<int> liste) {
  if (liste.length < 2) return 0;

  int maxDiff = (liste[1] - liste[0]).abs();

  for (int i = 1; i < liste.length; i++) {
    int diff = (liste[i] - liste[i - 1]).abs();
    if (diff > maxDiff) {
      maxDiff = diff;
    }
  }

  return maxDiff;
}

void main() {
  print(plusGrandeDifference([1, 5, 2, 10]));
}
