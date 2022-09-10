import 'package:flutter/material.dart';
import 'package:prueba_tecnica/components/components.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ActivityAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  GridItem(icon: Icons.run_circle, title: "Walking"),
                  GridItem(icon: Icons.pedal_bike_outlined, title: "Tradmill"),
                  GridItem(
                      icon: Icons.directions_walk_outlined, title: "Running"),
                  GridItem(
                      icon: Icons.directions_bike_outlined, title: "Cycling"),
                  GridItem(icon: Icons.fitness_center_outlined, title: "Gym"),
                  GridItem(
                      icon: Icons.self_improvement_outlined, title: "Yoga"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
