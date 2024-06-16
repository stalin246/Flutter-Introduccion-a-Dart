// Uso del tipo dynamic en Dart

// dynamic inicialmente es null si no se le asigna un valor
void main() {
  // Inicializa 'errorMessage' como un String.
  dynamic errorMessage = 'hola'; // lo toma como cualquier tipo de dato.

  // Cambia 'errorMessage' a un valor booleano.
  errorMessage = true;

  // Cambia 'errorMessage' a una lista de enteros.
  errorMessage = [1, 2, 3, 4]; // lista de datos

  // Cambia 'errorMessage' a un Set de enteros.
  errorMessage = {1, 2, 3, 4}; // set de datos

  // Cambia 'errorMessage' a una función que retorna un valor booleano.
  errorMessage = () => true; // valores booleanos

  // Imprime el valor actual de 'errorMessage', que es la función que retorna true.
  print('$errorMessage');
}
