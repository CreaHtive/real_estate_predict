import 'package:flutter/material.dart';
import 'package:somsomhouse/models/chart_model.dart';
import 'package:somsomhouse/views/comment.dart';
import 'package:somsomhouse/widgets/apart_info.dart';
import 'package:somsomhouse/widgets/line_chart.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(ChartModel.apartName),
      ),
      body: ListView(
        children: const [
          Card(
            child: ApartInfo(),
          ),
          Card(
            child: ApartLineChart(),
          ),
          Card(
            child: Comment(),
          ),
        ],
      ),
    );
  }
}
