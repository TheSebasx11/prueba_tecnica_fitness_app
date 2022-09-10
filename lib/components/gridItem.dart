import 'package:flutter/material.dart';
import 'package:prueba_tecnica/theme/theme.dart';

class GridItem extends StatelessWidget {
  ///Este atributo representa el [IconData] que tendrá el objeto icon de la tarjeta de la grilla (Grid).
  final IconData icon;

  ///Este atributo requerido representa el `Title` de la tarjeta.
  final String title;
  int? id;
  GridItem({this.id, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: shadows,
      ),
      width: 75,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Theme.of(context).primaryColor, size: 50),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 21,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
