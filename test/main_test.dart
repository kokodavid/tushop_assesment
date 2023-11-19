import 'package:tushop/goodies/goodies_file.dart';
import 'package:tushop/jobs/job_file.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
//Tests For Jobs
  group('jobs', () {
    test('Job Sample input 1', () {
      List<List<int>> jobs = [
        [0900, 1030, 100],
        [1000, 1200, 500],
        [1100, 1200, 300],
      ];

      expect(maximizeEarnings(jobs), equals([1, 500]));
    });

    test('Job Sample input 2', () {
      List<List<int>> jobs = [
        [0900, 1000, 250],
        [0945, 1200, 550],
        [1130, 1500, 150],
      ];

      expect(maximizeEarnings(jobs), equals([1, 550]));
    });

    test('Job Sample input 3', () {
      List<List<int>> jobs = [
        [0900, 1030, 100],
        [1000, 1200, 100],
        [1100, 1200, 100],
      ];

      expect(maximizeEarnings(jobs), equals([1, 100]));
    });
  });

//Tests for Goodies distribution
  group('goodies', () {
    test('Goodies Sample input 1', () {
      List<MapEntry<String, int>> goodies = [
        const MapEntry('Fitbit Plus', 7980),
        const MapEntry('IPods', 22349),
        const MapEntry('MI Band', 999),
        const MapEntry('Cult Pass', 2799),
        const MapEntry('Macbook Pro', 229900),
        const MapEntry('Digital Camera', 11101),
        const MapEntry('Alexa', 9999),
        const MapEntry('Sandwich Toaster', 2195),
        const MapEntry('Microwave Oven', 9800),
        const MapEntry('Scale', 4999),
      ];

      expect(
          findMinPriceDifference(goodies, 4),
          equals([
            const MapEntry('Fitbit Plus', 7980),
            const MapEntry('Microwave Oven', 9800),
            const MapEntry('Alexa', 9999),
            const MapEntry('Digital Camera', 11101),
          ]));
    });
    test('Goodies Sample input 2', () {
      List<MapEntry<String, int>> goodies = [
        const MapEntry('Fitbit Plus', 7980),
        const MapEntry('IPods', 22349),
        const MapEntry('MI Band', 999),
        const MapEntry('Cult Pass', 2799),
        const MapEntry('Macbook Pro', 229900),
        const MapEntry('Digital Camera', 11101),
        const MapEntry('Alexa', 9999),
        const MapEntry('Sandwich Toaster', 2195),
        const MapEntry('Microwave Oven', 9800),
        const MapEntry('Scale', 4999),
      ];

      expect(
          findMinPriceDifference(goodies, 6),
          equals([
            const MapEntry('Sandwich Toaster', 2195),
            const MapEntry('Cult Pass', 2799),
            const MapEntry('Scale', 4999),
            const MapEntry('Fitbit Plus', 7980),
            const MapEntry('Microwave Oven', 9800),
            const MapEntry('Alexa', 9999),
          ]));
    });
    test('Goodies Sample input 3', () {
      List<MapEntry<String, int>> goodies = [
        const MapEntry('Microwave Oven', 9800),
        const MapEntry('Alexa', 9999),
      ];

      expect(
          findMinPriceDifference(goodies, 2),
          equals([
            const MapEntry('Microwave Oven', 9800),
            const MapEntry('Alexa', 9999),
          ]));
    });
  });
}
