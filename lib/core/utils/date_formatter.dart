class DateFormatter {
  static const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  static String format(DateTime date) {
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}
