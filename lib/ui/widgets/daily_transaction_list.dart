import 'package:bahi_khata/blocs/fakeapi_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timelines/timelines.dart';

class DailyTransactionsBuilder extends StatelessWidget {
  const DailyTransactionsBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FakeapiBloc, FakeapiState>(
      builder: (context, state) {
        if (state is FetchingDailyTransactions)
          return CircularProgressIndicator();
        else if (state is DailyTransactionsFetched)
          return DailyTansactionList(
            data: state.data,
          );
        else
          return Container();
      },
    );
  }
}

class DailyTansactionList extends StatelessWidget {
  const DailyTansactionList({
    Key? key,
    this.data,
  }) : super(key: key);

  final List<Map<String, dynamic>>? data;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: size.width,
      child: Timeline.tileBuilder(
        builder: TimelineTileBuilder(
          itemCount: 3,
          indicatorBuilder: (context, index) => Indicator.dot(
            border: Border.all(color: Color(0xff606060), width: 2),
            color: Colors.transparent,
            size: 18,
          ),
          contentsBuilder: (context, index) => index % 2 == 0
              ? Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                )
              : Container(
                  color: Colors.green,
                  margin: EdgeInsets.all(20),
                ),
          startConnectorBuilder: (context, index) => Connector.solidLine(),
          endConnectorBuilder: (context, index) => Connector.solidLine(),
          itemExtent: 100,
          nodePositionBuilder: (context, index) => 0,
        ),
        padding: EdgeInsets.all(0),
        theme: TimelineThemeData(
            connectorTheme: ConnectorThemeData(
              color: Color(0xff606060),
              thickness: 2,
            ),
            indicatorTheme: IndicatorThemeData(color: Color(0xff606060))),
      ),
    );
  }
}
