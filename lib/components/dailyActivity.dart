import 'package:flutter/material.dart';
import 'package:prueba_tecnica/components/sectionTitle.dart';
import 'package:prueba_tecnica/theme/theme.dart';

class DailyActivity extends StatelessWidget {
  const DailyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          const SectionTitle(title: "Daily Activity"),
          SizedBox(
            height: size.height * 0.15,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(children: const [
                _dayCard(dayNumber: "08", dayText: "MON"),
                _dayCard(dayNumber: "07", dayText: "SUN"),
                _dayCard(dayNumber: "06", dayText: "SAT"),
                _dayCard(dayNumber: "05", dayText: "FRI"),
                _dayCard(dayNumber: "04", dayText: "TUE"),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _dayCard extends StatelessWidget {
  final String dayText, dayNumber;
  const _dayCard({super.key, required this.dayNumber, required this.dayText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12, left: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: shadows,
      ),
      width: 80,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dayText,
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w300,
                letterSpacing: 2,
                fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text(
            dayNumber,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 29),
          ),
        ],
      ),
    );
  }
}
