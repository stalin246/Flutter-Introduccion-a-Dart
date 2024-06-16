// Función principal marcada como 'async' que indica que se puede utilizar 'await' dentro de ella.
void main() async {
  // Imprime un mensaje al iniciar el programa.
  print('Inicio del programa');

  try {
    // Espera el resultado de httpGet usando 'await', lo que pausa la ejecución hasta que se complete el Future.
    final value = await httpGet('<https://google.com>');
    // Imprime el valor obtenido si la petición es exitosa.
    print(value);
  } catch (err) {
    // Captura cualquier error que ocurra durante la petición HTTP o mientras se espera el resultado.
    print('Tenemos un: $err');
  }

  // Imprime un mensaje al finalizar el programa.
  print('Fin del programa');
}

// Función que simula una petición HTTP y retorna un Future.
Future<String> httpGet(String url) async {
  // La palabra clave 'async' indica que esta función realiza operaciones asíncronas.
  await Future.delayed(const Duration(seconds: 1)); // Simula un retraso de 1 segundo.

  // Lanza una excepción que será capturada por el bloque 'catch' en 'main'.
  throw 'Error en la peticion';
  // El código después del 'throw' no se ejecutará.
  // return 'Tenemos un valor de la peticion';
}
