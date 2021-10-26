import 'package:bahi_khata/service/fake_api_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fakeapi_event.dart';
part 'fakeapi_state.dart';

class FakeapiBloc extends Bloc<FakeapiEvent, FakeapiState> {
  final FakeApiService _fakeApiService = FakeApiService();
  FakeapiBloc() : super(FakeapiInitial()) {
    on<FakeapiEvent>((event, emit) async {
      if (event is FetchDailyTransaction) {
        emit(FetchingDailyTransactions());
        final data = await _fakeApiService.getFakeDailyTransactions();
        if (data.error == true)
          emit(DailyTransactionsFailure(data.errorMessage));
        else
          emit(DailyTransactionsFetched(data.list));
      }
    });
  }
}
