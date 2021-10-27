import 'package:bahi_khata/blocs/fakeapi_bloc.dart';
import 'package:dotted_border/dotted_border.dart';
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
  ValueNotifier<List<Map<String, dynamic>>> get listOnScreen =>
      ValueNotifier(data!.sublist(0, 2));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: size.width,
      child: Timeline.tileBuilder(
        builder: TimelineTileBuilder(
          itemCount: listOnScreen.value.length + 1,
          indicatorBuilder: (context, index) {
            if (index == 0)
              return ListIndicator(
                type: 0,
              );
            else if (index == listOnScreen.value.length)
              return ListIndicator(
                type: 1,
              );
            return ListIndicator();
          },
          contentsBuilder: (context, index) {
            if (index == 0)
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xffd0d0d0),
                  borderRadius: BorderRadius.circular(24),
                ),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              );
            else
              return Container(
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(24),
                ),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              );
          },
          startConnectorBuilder: (context, index) {
            if (index != 0) return Connector.solidLine();
          },
          endConnectorBuilder: (context, index) {
            if (index == 0)
              return Connector.dashedLine(
                dash: 4,
                gap: 4,
              );
            else
              return Connector.solidLine();
          },
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

class ListIndicator extends StatelessWidget {
  const ListIndicator({Key? key, this.type}) : super(key: key);

  final int? type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 0:
        return DottedBorder(
          color: Color(0xff606060),
          borderType: BorderType.Circle,
          dashPattern: [6],
          padding: EdgeInsets.zero,
          strokeWidth: 2,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add_outlined,
              color: Color(0xff606060),
            ),
          ),
        );
      case 1:
        return Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff606060), width: 2),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Color(0xff606060),
          ),
        );
      default:
        return Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff606060), width: 2),
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xff606060),
              shape: BoxShape.circle,
            ),
          ),
        );
    }
  }
}
