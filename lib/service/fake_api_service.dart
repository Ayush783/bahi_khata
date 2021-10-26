import 'package:bahi_khata/extensions.dart';
import 'package:bahi_khata/models/daily_transactions.dart';

class FakeApiService {
  Future<DailyTransaction> getFakeDailyTransactions() async {
    final List<Map<String, dynamic>> fakeData = [
      {
        'name': 'Prachi fast food',
        'amount': 70,
        'made_with': 'google pay',
        'time': '7:48 pm',
        'pay_id': 0,
      },
      {
        'name': 'Aggarwal',
        'amount': 480,
        'made_with': 'cash',
        'time': '11:10 am',
        'pay_id': 1,
      },
    ];
    await Future.delayed(3.seconds());
    return DailyTransaction.success(fakeData);
  }
}
