List<int> maximizeEarnings(List<List<int>> jobs) {
//sort using end times
  jobs.sort((a, b) => a[1].compareTo(b[1]));

  int n = jobs.length;
  List<List<int>> selectedJobs = [];
  int earnings = 0;

  int i = 0;
  //select non-overlapping jobs for john
  while (i < n) {
    selectedJobs.add(jobs[i]);
    int currentEndTime = jobs[i][1];
    i++;

    //ignore jobs that overlap current job
    while (i < n && jobs[i][0] < currentEndTime) {
      i++;
    }
  }

  //calculate earnings available for others
  for (var job in jobs) {
    if (!selectedJobs.contains(job)) {
      earnings += job[2];
    }
  }

  return [n - selectedJobs.length, earnings];
}
