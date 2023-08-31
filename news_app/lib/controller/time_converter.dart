int timeConverter(rawTime) {
  if (rawTime != null) {
    rawTime = rawTime.replaceAll('T', ' ');
    rawTime = rawTime.replaceAll('Z', '');

    DateTime newsTime = DateTime.parse(rawTime);
    DateTime currentTime = DateTime.now();
    Duration timeLeft = currentTime.difference(newsTime);

    return timeLeft.inDays;
  } else {
    return 0;
  }
}
