// Función principal marcada como 'async' que indica que se puede utilizar 'await' dentro de ella.
void main() async {
  // Imprime un mensaje al iniciar el programa.
  print('Inicio del programa');

  try {
    // Espera el resultado de httpGet usando 'await', lo que pausa la ejecución hasta que se complete el Future.
    final value = await httpGet('<https://google.com>');
    // Imprime el valor obtenido si la petición es exitosa.
    print('Exito! $value');
  } on Exception catch (err) { // Bloque específico para capturar y manejar excepciones de tipo Exception.
    print('Tenemos una exception: $err');
  } catch (err) { // Captura cualquier otro tipo de error que no haya sido capturado por bloques 'on' específicos.
    print('Algo terrible paso: $err');
  } finally { // Este bloque se ejecuta siempre, independientemente de si se lanzó una excepción o no.
    print('Fin del try y catch');
  }

  // Imprime un mensaje al finalizar el programa.
  print('Fin del programa');
}

// Función que simula una petición HTTP y retorna un Future.
Future<String> httpGet(String url) async {
  // La palabra clave 'async' indica que esta función realiza operaciones asíncronas.
  await Future.delayed(const Duration(seconds: 1)); // Simula un retraso de 1 segundo.
  throw Exception('No hay parametros en el url'); // Lanza una excepción de tipo Exception.

  // Las siguientes líneas están comentadas y no se ejecutarán debido al throw anterior.
  //throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';
}
