import 'package:app/common/custom_shape/widgets/charts/barGraph/bar_graph_for_green_scape.dart';
import 'package:flutter/material.dart';



class GreenScapeChartWidget extends StatelessWidget {
  const GreenScapeChartWidget({super.key, required this.greenScapeList, });
final List<Map<String, dynamic>> greenScapeList;

  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Container(
            width: mediaqueryWidth,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: GreenScapeBarChart(greenScapeList: greenScapeList)
              ),
            )));
  }
}
