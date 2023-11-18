import 'dart:io';

import 'goodies/goodies_file.dart';
import 'jobs/job_file.dart';

void main() {
  goodies();
}

jobs() {
  // Input the number of jobs
  stdout.write("Enter the number of Jobs: ");
  int numJobs = int.parse(stdin.readLineSync()!);

  // Input jobs details
  List<List<int>> jobs = [];
  for (int i = 0; i < numJobs; i++) {
    stdout.write("Enter job start time, end time, and earnings:\n");
    int startTime = int.parse(stdin.readLineSync()!);
    int endTime = int.parse(stdin.readLineSync()!);
    int profit = int.parse(stdin.readLineSync()!);
    jobs.add([startTime, endTime, profit]);
  }

  // Call the function to maximize earnings
  List<int> result = maximizeEarnings(jobs);

  // Output the result

  print("\nThe number of tasks and earnings available for others");
  print("Task: ${result[0]}");
  print("Earnings: ${result[1]}");
}

goodies() {
  //read input from a file
  var input = File("goodies/goodies_input.txt").readAsStringSync().split('\n');

  int numEmployees = int.parse(input[0].split(":")[1].trim());

  List<MapEntry<String, int>> goodies = [];
  for (var line in input.sublist(3, input.length - 1)) {
    var parts = line.split(": ");
    goodies.add(MapEntry(parts[0], int.parse(parts[1])));
  }

  // Find selected goodies and minimum price difference
  List<MapEntry<String, int>> selectedGoodies = findMinPriceDifference(goodies, numEmployees);

  // Write output to the file
    var output = File("goodies/goodies_output.txt").openWrite();
    output.writeln("The goodies selected for distribution are:");
      for (var goodie in selectedGoodies) {
    output.writeln("${goodie.key}: ${goodie.value}");
  }
  output.writeln("And the difference between the chosen goodie with highest price and the lowest price is ${selectedGoodies.last.value - selectedGoodies.first.value}");
  output.close();

}
