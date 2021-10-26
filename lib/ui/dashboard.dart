import 'package:bahi_khata/blocs/fakeapi_bloc.dart';
import 'package:bahi_khata/constants/colors.dart';
import 'package:bahi_khata/constants/textstyles.dart';
import 'package:bahi_khata/ui/widgets/daily_transaction_list.dart';
import 'package:bahi_khata/ui/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timelines/timelines.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transactions made today',
                  style: kTextstyle2.copyWith(color: kprimary, fontSize: 20),
                ),
                DailyTransactionsBuilder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardBlocProvider extends StatelessWidget {
  const DashboardBlocProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FakeapiBloc()..add(FetchDailyTransaction()),
      child: DashboardBlocListener(),
    );
  }
}

class DashboardBlocListener extends StatelessWidget {
  const DashboardBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<FakeapiBloc, FakeapiState>(
      listener: (context, state) {},
      child: DashBoard(),
    );
  }
}
