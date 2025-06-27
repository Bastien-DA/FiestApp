String formatDate(int timestamp) {
  final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  final year = date.year;
  return "$day/$month/$year";
}

String formatHour(int timestamp) {
  final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  final hour = date.hour.toString().padLeft(2, '0');
  return hour;
}

String getYear(String date) {
  final parts = date.split('/');
  if (parts.length == 3) {
    return parts[2];
  }
  return '';
}

String getMonth(String date) {
  final parts = date.split('/');
  if (parts.length == 3) {
    return parts[1];
  }
  return '';
}

String getDay(String date) {
  final parts = date.split('/');
  if (parts.length == 3) {
    return parts[0];
  }
  return '';
}
