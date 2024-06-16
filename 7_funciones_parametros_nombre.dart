// Parametros con nombre

void main() {
  // Llama a la función 'greetPerson', pasando los parámetros con nombre 'name' y 'message'.
  print(greetPerson(name: 'Luis', message: 'Hi'));
}

// Define una función con parámetros con nombre.
// 'required' indica que el parámetro 'name' es obligatorio.
// 'message' es un parámetro opcional con un valor predeterminado de 'Hola,'
String greetPerson({required String name, String message = 'Hola,'}) {
  // Retorna un saludo personalizado usando los parámetros 'message' y 'name'.
  return '$message $name';  // Corregido para usar el parámetro 'name' en lugar de 'Luis' fijo.
}
