part of 'fakeapi_bloc.dart';

@immutable
abstract class FakeapiState {}

class FakeapiInitial extends FakeapiState {}

class FetchingDailyTransactions extends FakeapiState {}

class DailyTransactionsFetched extends FakeapiState {
  final List<Map<String, dynamic>> data;

  DailyTransactionsFetched(this.data);
}

class DailyTransactionsFailure extends FakeapiState {
  final String error;

  DailyTransactionsFailure(this.error);
}
