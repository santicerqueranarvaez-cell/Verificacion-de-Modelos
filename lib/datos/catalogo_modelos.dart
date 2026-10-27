import '../modelos/criterio.dart';
import '../modelos/modelo_analisis.dart';

ModeloAnalisis _crearModelo(String nombre, Map<String, String> criterios) {
  return ModeloAnalisis(
    nombre: nombre,
    criterios: criterios.entries
        .map((e) => Criterio(codigo: e.key, descripcion: e.value))
        .toList(),
  );
}

List<ModeloAnalisis> crearCatalogo() {
  return [
    _crearModelo('Modelo de casos de uso', {
      'CU-01': 'El modelo incluye todos los casos de uso identificados.',
      'CU-02': 'Cada caso de uso tiene una descripción clara y completa.',
      'CU-03': 'Los actores están correctamente identificados y asociados a los casos de uso.',
      'CU-04': 'El modelo sigue una estructura coherente y lógica.',
      'CU-05': 'Los casos de uso están correctamente relacionados con los requisitos  .',
    }),
    _crearModelo('Modelo de actividades', {
      'CL-01':
          'El modelo incluye todas las actividades relevantes del proceso.',
      'CL-02': 'Cada actividad tiene una descripción clara y completa.',
      'CL-03':
          'Las transiciones entre actividades están correctamente definidas.',
      'CL-04': 'El modelo sigue una estructura coherente y lógica.',
      'CL-05': 'Las actividades están correctamente relacionadas con los casos de uso.',
    }),
    _crearModelo('Modelo de secuencia', {
      'SE-01': 'El modelo incluye todas las interacciones relevantes entre los objetos.',
      'SE-02': 'Cada interacción tiene una descripción clara y completa.',
      'SE-03': 'Los objetos están correctamente identificados y asociados a las interacciones.',
      'SE-04': 'El modelo sigue una estructura coherente y lógica.',
      'SE-05': 'Las interacciones están correctamente relacionadas con los casos de uso.',
    }),
    _crearModelo('Modelo de clases', {
      'AC-01': 'El modelo incluye todas las clases relevantes del sistema.',
      'AC-02': 'Cada clase tiene una descripción clara y completa.',
      'AC-03': 'Los atributos y métodos están correctamente definidos para cada clase.',
      'AC-04': 'El modelo sigue una estructura coherente y lógica.',
      'AC-05': 'Las clases están correctamente relacionadas entre sí y con los casos de uso.',
    }),
  ];
}
