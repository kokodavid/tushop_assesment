// Function to find the goodies with the minimum price difference
List<MapEntry<String, int>> findMinPriceDifference(
    List<MapEntry<String, int>> goodies, int numEmployees) {
  // Sort goodies based on prices
  goodies.sort((a, b) => a.value.compareTo(b.value));

  // Initialize minimmum difference with a large value
  int minDiff = double.maxFinite.toInt();

  List<MapEntry<String, int>> selectedGoodies = [];

  // Loop through the sorted list to find the subarray with the minimum price difference
  for (int i = 0; i <= goodies.length - numEmployees; i++) {
    int diff = goodies[i + numEmployees - 1].value - goodies[i].value;
    if (diff < minDiff) {
      minDiff = diff;
      selectedGoodies = goodies.sublist(i, i + numEmployees);
    }
  }

  return selectedGoodies;
}


