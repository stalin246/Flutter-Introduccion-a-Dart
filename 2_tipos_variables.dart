// Punto de entrada del programa Dart.
void main (){
  
  // Declara una variable 'pokemon' y le asigna el valor "Pikachu". 'final' indica que una vez asignado el valor no puede cambiar.
  final String pokemon = "Pikachu";
  
  // Declara una variable 'hp' de tipo entero con valor 100, indicando los puntos de vida de 'pokemon'.
  final int hp = 100;
  
  // Declara una variable booleana 'isAlive' para indicar si el 'pokemon' está vivo.
  final bool isAlive = true;
  
  // Crea una lista de tipo String que contiene habilidades del 'pokemon'.
  final List<String> abilities = ["impostor"];
  
  // Crea una lista de tipo String para almacenar las rutas a las imágenes del 'pokemon'.
  final sprites = <String>["pikachu/front.png", "pikachu/back.png"];


   // Uso de String
  String name = "Alice";

  // Uso de int
  int age = 30;

  // Uso de double
  double height = 1.85;

  // Uso de bool
  bool isEnabled = true;

  // Uso de List
  List<int> numbers = [1, 2, 3, 4, 5];

  // Uso de Map
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'Japan': 'Tokyo',
  };

  // Uso de Set
  Set<String> colors = {'red', 'green', 'blue', 'red'}; // 'red' se agrega solo una vez

  // Uso de dynamic
  dynamic variable = 'hello';
  variable = 100;  // Cambiando el tipo en tiempo de ejecución

  // Uso de var
  var username = 'admin';  // Dart infiere que es String

  // Uso de final
  final String nickname = "Nicky";

  // Uso de const
  const int maxScore = 100;

  // Imprimir valores en consola
  print("Nombre: $name, Edad: $age, Altura: $height, Habilitado: $isEnabled");
  print("Números: $numbers");
  print("Capitales: $capitals");
  print("Colores: $colors");
  print("Variable dinámica: $variable");
  print("Nombre de usuario: $username, Apodo: $nickname, Puntaje máximo: $maxScore");
  
  // Utiliza la función 'print()' para imprimir múltiples líneas con los detalles del 'pokemon'.
  print("""
    
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    
    """);


}
