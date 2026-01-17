class Validators {
  static String? required(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? 'Required field';
    }
    return null;
  }

  static String? amountFormat(String? value, {String? message}) {
    if (value == null || !RegExp(r'^\d*\.?\d{0,2}$').hasMatch(value)) {
      return message ?? 'Amount format not valid';
    }
    return null;
  }
}
