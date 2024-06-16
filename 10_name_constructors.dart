void main() {
  // Simula una respuesta JSON que podría ser obtenida de una solicitud HTTP.
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // Crea una instancia de la clase Hero usando el constructor con nombre 'fromJson'.
  final ironman = Hero.fromJson(rawJson);

  // Imprime la representación en cadena de la instancia 'ironman' utilizando el método sobrescrito 'toString'.
  print(ironman);
}

// Definición de la clase Hero
class Hero {
  String name;
  String power;
  bool isAlive;

  // Constructor estándar con parámetros con nombre y requeridos.
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  // Constructor con nombre 'fromJson', que toma un mapa JSON y lo convierte en una instancia de Hero.
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',  // Asigna 'name' desde json o usa un valor predeterminado.
      power = json['power'] ?? 'No power found',  // Asigna 'power' desde json o usa un valor predeterminado.
      isAlive = json['isAlive'] ?? false;  // Asigna 'isAlive' desde json o usa false como predeterminado.

  // Sobrescribe el método 'toString' para personalizar la representación en cadena de la clase Hero.
  @override
  String toString() {
    // Usa el operador ternario para mostrar si el héroe está vivo.
    return '$name, $power ${isAlive ? 'YES!' : 'Nope'}';
  }
}
