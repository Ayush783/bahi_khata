class DailyTransaction {
  final List<Map<String, String>> list;
  final bool error;
  final String errorMessage;

  DailyTransaction(this.list, this.error, this.errorMessage);

  DailyTransaction.failure(String errorMessage)
      : error = true,
        errorMessage = errorMessage,
        list = [];

  DailyTransaction.success(List<Map<String, String>> data)
      : list = data,
        error = false,
        errorMessage = 'NO_ERROR';
}
