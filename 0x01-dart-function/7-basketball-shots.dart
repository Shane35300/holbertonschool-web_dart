int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int TA = (teamA['Free throws'] ?? 0) * 1 +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;
  int TB = (teamB['Free throws'] ?? 0) * 1 +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;
  if (TA > TB) {
    return (1);
  } else if (TA < TB) {
    return (2);
  } else {
    return 0;
  }
}
