void main() {
  // Llama a varias funciones y muestra sus resultados.
  print(greetEveryone1());  // Invoca la primera función de saludo.
  print(greetEveryone2());  // Invoca la segunda función de saludo usando sintaxis de flecha.
  print('Suma: ${addTwoNumbers1(30, 20)}');  // Muestra el resultado de sumar 30 y 20.
  print('Suma: ${addTwoNumbers1(30, 30)}');  // Muestra el resultado de sumar 30 y 30.
  print('Suma: ${addTwoNumbersOptonal1(100)}');  // Muestra el resultado de sumar 100 y un parámetro opcional no proporcionado.
  print('Suma: ${addTwoNumbersOptonal2(200)}');  // Muestra el resultado de sumar 200 y un parámetro opcional no proporcionado.
}

// Función normal que retorna un String
String greetEveryone1() {
  return 'Hello Everyone1';  // Retorna un saludo como string.
}

// Función con sintaxis de flecha que también retorna un String
String greetEveryone2() => 'Hello Everyone2';  // Forma más concisa de retornar un string.

// Función normal para sumar dos números enteros
int addTwoNumbers1(int a, int b) {
  return a + b;  // Retorna la suma de a y b.
}

// Función con sintaxis de flecha para sumar dos números
int addTwoNumbers2(int a, int b) => a + b;  // Forma concisa de realizar la suma.

// Función normal con un parámetro opcional
int addTwoNumbersOptonal1(int a, [int b = 0]) {
  return a + b;  // Retorna la suma de a y b, donde b es opcional y por defecto es 0.
}

// Función con sintaxis de flecha y un parámetro opcional
int addTwoNumbersOptonal2(int a, [int b = 0]) => a + b;  // Similar a la anterior pero en forma concisa.
