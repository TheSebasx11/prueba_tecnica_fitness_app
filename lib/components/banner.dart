import 'package:flutter/material.dart';

class BannerWorkout extends StatelessWidget {
  const BannerWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    double fontSize = 20;
    return _Background(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Este texto enriquecido se usa para tener textos con distintos estilos; con distintos `FontWeights` y `fontSizes`
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Legs",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize)),
                TextSpan(
                    text: " and",
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Glutes ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize)),
                TextSpan(
                    text: "workout",
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
          ),
          SizedBox(height: 4),
          Row(children: const [
            Icon(
              Icons.show_chart,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(width: 5),
            Text(
              "Advance",
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ]),
          SizedBox(height: 4),
          Row(children: const [
            Icon(
              Icons.schedule,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(width: 5),
            Text(
              "45 min",
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ]),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {},
            highlightColor: Colors.white,
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white.withAlpha(100),
                  borderRadius: BorderRadius.circular(30)),
              child: const Text(
                "Start Workout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  ///Este widget representa el fondo del banner. Este es un contenedor con bordes redondeados estilizados
  ///haciendo uso de `Container` y su propiedad `decoration`

  ///Este es el contenido del banner
  final Widget child;

  const _Background({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.9,
          height: 200,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff4951da), Color(0xff6a86e7)]),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
        ),

        ///Este widget es que contiene la imagen de la mujer haciendo la sentadilla con un filtro de color azulado
        const Positioned(
          left: 20,
          child: Image(
            image: AssetImage("assets/sentadilla.png"),
            fit: BoxFit.cover,
            color: Colors.indigo,
            height: 175,
          ),
        ),

        ///Aquí se posiciona el `Widget` hijo de este fondo del banner
        Positioned(
          right: 10,
          top: 20,
          child: child,
        ),
      ],
    );
  }
}
