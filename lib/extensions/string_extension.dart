extension StringExtension on String? {
  bool get stringNullOrEmpty {
    if (this == null) {
      return true;
    }
    return this!.isEmpty;
  }
}
