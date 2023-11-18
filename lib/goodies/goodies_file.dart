List<MapEntry<String, int>> findMinPriceDifference(List<MapEntry<String, int>> goodies, int numEmployees) {
  // Sort goodies based on prices
  goodies.sort((a, b) => a.value.compareTo(b.value)); 

  int minDiff = 1 << 31 - 1; 
  List<MapEntry<String, int>> selectedGoodies = [];

  for (int i = 0; i <= goodies.length - numEmployees; i++) {
    int diff = goodies[i + numEmployees - 1].value - goodies[i].value;
    if (diff < minDiff) {
      minDiff = diff;
      selectedGoodies = goodies.sublist(i, i + numEmployees);
    }
  }

  return selectedGoodies;
}
