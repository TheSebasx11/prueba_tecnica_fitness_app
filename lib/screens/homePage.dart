// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/components/components.dart';
import 'package:prueba_tecnica/screens/activityPage.dart';
import 'package:prueba_tecnica/providers/tabProvider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TabProvider prov = Provider.of<TabProvider>(context);

    switch (prov.selectedTab) {
      case 0:
        return const ScaffoldPart(body: HomeScreenWidget());
      case 1:
        return const ScaffoldPart(body: ActivityPage());
      case 2:
        return const ScaffoldPart(body: Center(child: Text("Settings")));
      case 3:
        return const ScaffoldPart(body: Center(child: Text("Profile")));
      default:
        return const ScaffoldPart(body: Center(child: Text("Default")));
    }
  }
}

/// Este widget contendrá el scaffold de la pestaña[Tab] que tendrá la pagina principal
class ScaffoldPart extends StatelessWidget {
  ///Este [Widget] es el contenido del scaffold de la aplicación. Aquí entraran las vistas que se quieran mostrar en el contexto

  final Widget body;

  const ScaffoldPart({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(child: body),
      floatingActionButton: const BottomNavBar(),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 25),
        HeaderWidget(),
        SizedBox(height: 30),
        BannerWorkout(),
        TodayActivity(),
        DailyActivity(),
        SizedBox(height: 20),
        //BottomNavBar(),
      ],
    );
  }
}
