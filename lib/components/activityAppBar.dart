import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/providers/tabProvider.dart';

class ActivityAppBar extends StatelessWidget {
  /// Este `Widget` es la representación de una `AppBar` custom, posee un botón de retroceso y un

  const ActivityAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabProvider prov = Provider.of(context);
    double fontSize = 24;

    return SizedBox(
      width: size.width,
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 5,
            child: IconButton(
              onPressed: () => prov.changeTab(0),
              icon: const Icon(Icons.keyboard_backspace_outlined, size: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Start ",
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Activity",
                style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
