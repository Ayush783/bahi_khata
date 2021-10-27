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
        'pay_id': 0, // paid
      },
      {
        'name': 'Aggarwal',
        'amount': 480,
        'made_with': 'cash',
        'time': '11:10 am',
        'pay_id': 1, // received
      },
      {
        'name': 'Amit',
        'amount': 220,
        'made_with': 'none',
        'time': '8:10 am',
        'pay_id': 2, // have to pay (loan type)
      },
      {
        'name': 'Piyush',
        'amount': 480,
        'made_with': 'none',
        'time': '7:00 am',
        'pay_id': 3, // have to recieve
      },
    ];
    await Future.delayed(3.seconds());
    return DailyTransaction.success(fakeData);
  }
}
