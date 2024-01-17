import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pie) {
          activeIndex = pie?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xff208BC7),
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4db7f2),
          showTitle: false,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff064060),
          showTitle: false,
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xffE2decd),
          showTitle: false,
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
