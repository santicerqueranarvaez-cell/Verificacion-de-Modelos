import 'package:flutter/material.dart';

import '../modelos/modelo_analisis.dart';

import '../modelos/verificacion.dart';

class PantallaFormulario extends StatefulWidget {
  const PantallaFormulario({super.key});

  final ModeloAnalisis modelo;

  @override
  State<PantallaFormulario> createState() => _PantallaFormularioState();
}

class _PantallaFormularioState extends State<PantallaFormulario> {
  final _formKey = GlobalKey<FormState>();
  final _verificadorCtrl = TextEditingController();
  final _observacionesCtrl = TextEditingController();
  final List<ModeloAnalisis> _catalogo = crearCatalogo();
  ModeloAnalisis? _modeloSeleccionado;

  @overridevoid
  dispose() {
    _verificadorCtrl.dispose();
    _observacionesCtrl.dispose();
    super.dispose();
  }
}
