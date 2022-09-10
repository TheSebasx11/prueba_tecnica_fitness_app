import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/providers/tabProvider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Items(
            icon: Icons.home,
            title: "Home",
            id: 0,
          ),
          _Items(
            icon: Icons.monitor_heart_outlined,
            title: "Activity",
            id: 1,
          ),
          _Items(
            icon: Icons.settings,
            title: "Settings",
            id: 2,
          ),
          _Items(
            icon: Icons.person_outline_outlined,
            title: "Profile",
            id: 3,
          ),
        ],
      ),
    );
  }
}

class _Items extends StatelessWidget {
  final IconData icon;
  final String title;
  int? id;
  _Items({this.id, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    TabProvider prov = Provider.of<TabProvider>(context);
    bool isSelected = prov.selectedTab == id;
    return GestureDetector(
      onTap: () {
        prov.changeTab(id!);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: (isSelected)
              ? [
                  BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(2, 3),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal),
                  BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      offset: const Offset(-2, -2),
                      blurRadius: 5,
                      spreadRadius: 1),
                  BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(2, 3),
                      blurRadius: 1,
                      inset: true),
                ]
              : [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(2, 3),
                      blurRadius: 8,
                      blurStyle: BlurStyle.normal),
                  BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      offset: const Offset(-2, -2),
                      blurRadius: 5),
                ],
        ),
        width: 75,
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color:
                  (isSelected) ? Theme.of(context).primaryColor : Colors.grey,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                  color: (isSelected)
                      ? Theme.of(context).primaryColor
                      : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
