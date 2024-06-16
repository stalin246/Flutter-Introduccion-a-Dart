// Punto de entrada principal del programa.
void main() {
  // Suscribe a un stream y maneja los valores emitidos por este.
  emitNumbers().listen((v) {
    print('Stream value: $v'); // Imprime el valor recibido del stream.
  });
}

// Función que crea y retorna un stream de enteros.
Stream<int> emitNumbers() {
  return Stream.periodic(
    const Duration(seconds: 2), // Intervalo de tiempo entre emisiones del stream.
    (value) {
      // La función se llama con un índice (comenzando desde 0) cada dos segundos.
      return value; // Retorna el valor actual del contador.
    }
  ).take(5); // Limita el número de respuestas del stream a 5.
}
