

int convertToMilliseconds(
  int? hoursInput,
  int? minutesInput,
  int? secondsInput,
) {
  // convert hours, minutes, seconds to their total milliseconds
  int hours = hoursInput ?? 0;
  int minutes = minutesInput ?? 0;
  int seconds = secondsInput ?? 0;

  int totalMilliseconds = (hours * 3600 + minutes * 60 + seconds) * 1000;

  return totalMilliseconds;
}

double? convertToDouble(String? toConvert) {
  // convert string to double
  try {
    return double.parse(toConvert!);
  } catch (e) {
    return null;
  }
}
