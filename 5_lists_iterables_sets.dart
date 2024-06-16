void main() {
  // Crea una lista de enteros con algunos valores duplicados.
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 8];
  
  // Imprime la lista original completa.
  print('List original: $numbers');
  
  // Imprime la longitud de la lista original.
  print('List original: ${numbers.length}');

  // Accede al primer elemento de la lista usando el índice.
  print('Index 0: ${numbers[0]}');

  // Utiliza la propiedad 'first' para obtener el primer elemento de la lista.
  print('First: ${numbers.first}');

  // Utiliza la propiedad 'last' para obtener el último elemento de la lista.
  print('Last: ${numbers.last}');

  // La propiedad 'reversed' devuelve un iterable que es la lista invertida.
  print('Reversed: ${numbers.reversed}'); // Se imprime como Iterable

  // Almacena el iterable invertido en una nueva variable.
  final reversedNumbers = numbers.reversed; 
  
  // Imprime el iterable que contiene los números en orden inverso.
  print('Iterable: $reversedNumbers');
  
  // Convierte el iterable de vuelta a una lista para poder imprimir como lista.
  print('List: ${reversedNumbers.toList()}');

  // Convierte el iterable a un set, eliminando los elementos duplicados en el proceso.
  print('Set: ${reversedNumbers.toSet()}');

  // Utiliza el método 'where' para filtrar la lista original y encontrar números mayores que 5.
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // Devuelve true si el número es mayor que 5
  });

  // Imprime los números mayores que 5 en forma de iterable.
  print('>5 iterable: $numbersGreaterThan5');
  
  // Convierte el iterable resultante a un set para eliminar duplicados y lo imprime.
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}
