void main() {
  // Crea una nueva instancia de la clase Hero, inicializando con los valores para 'name' y 'power'.
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');

  // Imprime la representación de string de la instancia 'wolverine'.
  print(wolverine);  // Salida: Logan - Regeneracion

  // Imprime el nombre del héroe.
  print(wolverine.name);  // Salida: Logan

  // Imprime el poder del héroe.
  print(wolverine.power);  // Salida: Regeneracion
}

// Definición de la clase Hero
class Hero {
  // Propiedades de la clase, que almacenarán el nombre y el poder del héroe.
  String name;
  String power;

  // Constructor de la clase Hero que inicializa las propiedades 'name' y 'power' usando parámetros con nombre.
  Hero({
    required this.name, 
    required this.power
  });

  // Sobrescribe el método toString() de la clase base (Object) para proporcionar una representación en cadena personalizada de un objeto Hero.
  @override
  String toString() {
    return '$name - $power';
  }
}
