import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "Wallet",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      color: const Color(0xFF5d5590),
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Main Wallet",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              CupertinoIcons.money_dollar,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "450.500,24",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "444 221 224 ***",
                              style: TextStyle(
                                  color: Color(0xFFc3a261),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Others",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.black54,
                            size: 15,
                          ),
                          Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Chart(
                            myColor: Colors.green,
                            chartText: 'Monthly',
                            chartTextPrice: '2.500,42',
                            chartTextType: 'Restaurant',
                          ),
                          Chart(
                            myColor: Colors.red,
                            chartText: 'Yearly',
                            chartTextPrice: '30.500,42',
                            chartTextType: 'Investment',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Chart(
                            myColor: Colors.purple.shade900,
                            chartText: 'Monthly',
                            chartTextPrice: '2.500,42',
                            chartTextType: 'Restaurant',
                          ),
                          Chart(
                            myColor: Colors.teal.shade400,
                            chartText: 'Yearly',
                            chartTextPrice: '2.500,42',
                            chartTextType: 'Restaurant',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
    required this.myColor,
    required this.chartText,
    required this.chartTextPrice,
    required this.chartTextType,
  }) : super(key: key);

  final Color myColor;
  final String chartText;
  final String chartTextPrice;
  final String chartTextType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2.8,
      decoration:
          BoxDecoration(color: myColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 5,
            child: PieChart(PieChartData(
              startDegreeOffset: 270,
              sections: [
                PieChartSectionData(
                    showTitle: false,
                    value: 15,
                    radius: 4,
                    color: Colors.white),
                PieChartSectionData(radius: 3, color: Colors.white24),
              ],
              centerSpaceRadius: 20,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              chartText,
              style: const TextStyle(color: Colors.white60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.money_dollar,
                  color: Colors.white,
                  size: 20,
                ),
                Text(
                  chartTextPrice,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              chartTextType,
              style: const TextStyle(color: Colors.white60),
            ),
          )
        ],
      ),
    );
  }
}
