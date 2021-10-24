extension DurationParsing on int {
  Duration seconds() {
    return Duration(seconds: this);
  }
}
