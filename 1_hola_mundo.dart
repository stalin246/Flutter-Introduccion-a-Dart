// Punto de entrada del programa. La función 'main()' es necesaria en todos los programas Dart.
void main() {
  // Declara una constante 'myName' con el valor "Stalin". La palabra clave 'const' asegura que el valor no cambie.
  const myName = "Stalin";
  
  // Imprime "Hola Mundo" en la consola utilizando la función 'print()', que muestra la información proporcionada.
  print("Hola Mundo");
  
  // Utiliza interpolación de cadenas para imprimir "Mi nombre" seguido del valor de 'myName'.
  print("Mi nombre $myName");
  
  // Convierte 'myName' a mayúsculas con 'toUpperCase()' y lo imprime, mostrando "Mi nombre en mayusculas STALIN".
  print("Mi nombre en mayusculas ${myName.toUpperCase()}");
  
  // Realiza una operación aritmética directamente dentro de la interpolación y la imprime, mostrando "Suma 1+1: 2".
  print("Suma 1+1: ${1 + 1}");
}
