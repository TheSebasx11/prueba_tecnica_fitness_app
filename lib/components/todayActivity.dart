import 'package:flutter/material.dart';
import 'package:prueba_tecnica/components/sectionTitle.dart';
import 'package:prueba_tecnica/theme/theme.dart';

class TodayActivity extends StatelessWidget {
  const TodayActivity({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Today's Activity"),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: size.height * 0.12,
              child: Row(
                children: const [
                  _ActivityCard(
                      icon: Icons.directions_walk_outlined,
                      text: "STEPS",
                      number: "1,228"),
                  _ActivityCard(
                      icon: Icons.pending_actions_outlined,
                      text: "CALORIES",
                      number: "829"),
                  _ActivityCard(
                      icon: Icons.monitor_heart_outlined,
                      text: "BPM",
                      number: "88.0"),
                  _ActivityCard(icon: Icons.abc, text: "CARD", number: "###"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String number;
  const _ActivityCard(
      {required this.icon, required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 138,
      height: 85,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: shadows,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 25, color: Theme.of(context).primaryColor),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                    fontSize: 16,
                    letterSpacing: 2),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(number,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
