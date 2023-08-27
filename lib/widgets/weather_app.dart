import 'package:flutter/material.dart';
import 'package:weather_app/controllers/tema_controller.dart';
import 'package:weather_app/widgets/home.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: TemaController.instancia,
      builder: (context, child) {
        return MaterialApp(
          title: 'Clima Tempo',
          theme: TemaController.instancia.usarTemaEscuro
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}
