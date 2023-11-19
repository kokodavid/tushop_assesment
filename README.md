
# Tushop Assessment

Solving Efficient Job Assignment and Goodies distribution using dart.


## Problem Statement 1
The Job Selection problem involves a factory that needs to efficiently assign jobs to its employees. Each job is characterized by a start time, end time, and a corresponding profit value. The factory employee, John, is tasked with selecting jobs in a manner that maximizes his earnings. The objective is to determine how many jobs are left for other employees and what the total earnings are once John has made his choices.

### Input Format

```job allocation
- The first line of input contains an integer, `n`, representing the number of jobs for the day.
- The subsequent `3n` lines provide information for each job. Each job follows this format:
  - Start Time (in HHMM 24HRS format, e.g., 9 am is 0900, and 9 pm is 2100)
  - End Time (in HHMM 24HRS format)
  - Profit
```

### Constraints

```constraints
- The number of jobs in the day is limited to less than 100 (0 ≤ n < 10).
- The start time is always less than the end time.
- Hours can only go up to 2359.

```
### Output Format

```output
The program returns an array of two integers:
1. The number of jobs left.
2. The total earnings available for other employees.

```

## Problem Statement 2
Let's say the HR team of a company has goodies set of size N each with a different price tag for
each goodie. Now the HR team has to distribute the goodies among the M employees in the
company such that one employee receives one goodie. Find out the goodies the HR team can
distribute so that the difference between the low price goodie and the high price goodie selected
is minimum.

The input has to be read from a file. The input file contains all the goodies and their prices as
shown in the example input file sample_input.txt.
The output has to be written to a file as shown in the example output file sample_output.txt.

### sample_input.txt

```goodies allocation
Number of employees: 4
Goodies and Prices:
Fitbit Plus: 7980
IPods: 22349
MI Band: 999
Cult Pass: 2799
Macbook Pro: 229900
Digital Camera: 11101
Alexa: 9999
Sandwich Toaster: 2195
Microwave Oven: 9800
Scale: 4999
```

### sample_output.txt

```goodies allocation
The goodies selected for distribution are:
Fitbit Plus: 7980
Microwave Oven: 9800
Alexa: 9999
Digital Camera: 11101
And the difference between the chosen goodie with highest price and the lowest price is 3121
```
## Prerequisites

Make sure you have the following installed:

- Flutter: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart: [Install Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

```bash
   git clone https://github.com/kokodavid/tushop_assesment

```
2. Change into the project directory:

```bash
 cd your-project

```
3. Install dependencies:

```bash
 flutter pub get

```

4. Change into lib directory and run:

```bash
cd lib

```

5. Commands to Run for problem statement 1
 

```bash
dart main.dart jobs

Note: Hit Enter key on command line after each input.

```

6. Commands to Run for problem statement 2 :

```bash
Note: inputs are to be added to the goodies_inputs.txt file and the output can be found in the goodies_output.txt file.

dart main.dart goodies

```

6. Tests are also included in the test folder :

```bash

tests/main_tests.dart

```
