// Función principal que se ejecuta al iniciar el programa.
void main() {
  // Se imprime un mensaje al inicio del programa.
  print('Inicio del programa');

  // Se realiza una petición HTTP simulada a una URL y se maneja la respuesta.
  httpGet('https://google.com')
    .then((value) {
      // Se imprime el valor recibido si la petición es exitosa.
      print(value);
    }).catchError((err) {
      // Se captura y se imprime un error si la petición falla.
      print('Error: $err');
    });

  // Se imprime un mensaje al final del programa.
  print('Fin del programa');
}

// Función que simula una petición HTTP y retorna un Future.
Future<String> httpGet(String url) {
  // Se retorna un Future que se completa después de 1 segundo.
  return Future.delayed(const Duration(seconds: 1), () {
    // Se simula una excepción para demostrar el manejo de errores.
    throw 'Error en la peticion http';

    // Este código nunca se alcanza debido a la excepción lanzada antes.
    return 'Respuesta de la peticion http';
  });
}
