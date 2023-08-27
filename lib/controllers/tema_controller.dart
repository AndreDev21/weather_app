import 'package:flutter/material.dart';

class TemaController extends ChangeNotifier {
  late bool usarTemaEscuro; // adicionei o late aqui também
  static TemaController instancia = new TemaController();

  TemaController() {
    usarTemaEscuro = false;
  }

  trocarTema() {
    usarTemaEscuro = !usarTemaEscuro;
    notifyListeners();
  }
}
