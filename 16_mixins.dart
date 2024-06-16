// Clase base abstracta para todos los animales.
abstract class Animal {} // Define la superclase base para todos los animales.

// Clases base para diferentes categorías de animales.
abstract class Mamifero extends Animal {} // Clase para mamíferos, hereda de Animal.
abstract class Ave extends Animal {} // Clase para aves, hereda de Animal.
abstract class Pez extends Animal {} // Clase para peces, hereda de Animal.

// Mixins para agregar funcionalidades específicas.
mixin Volador {
  void volar() => print('estoy volando'); // Mixin que permite a cualquier animal volar.
}
mixin Caminante {
  void caminar() => print('estoy caminando'); // Mixin que permite a cualquier animal caminar.
}
mixin Nadador {
  void nadar() => print('estoy nadando'); // Mixin que permite a cualquier animal nadar.
}

// Clases que combinan diferentes mixins para definir capacidades específicas.
class Delfin extends Mamifero with Nadador {} // Delfín es un mamífero que puede nadar.
class Murcielago extends Mamifero with Volador, Caminante {} // Murciélago es un mamífero que puede volar y caminar.
class Gato extends Mamifero with Caminante {} // Gato es un mamífero que puede caminar.

class Paloma extends Ave with Caminante, Volador {} // Paloma es un ave que puede caminar y volar.
class Pato extends Ave with Caminante, Volador, Nadador {} // Pato es un ave que puede caminar, volar y nadar.

class Tiburon extends Pez with Nadador {} // Tiburón es un pez que puede nadar.
class PezVolador extends Pez with Nadador, Volador {} // Pez volador es un pez que puede nadar y volar.

// Punto de entrada principal del programa para demostrar el uso de mixins.
void main() {
  final flipper = Delfin(); // Crea una instancia de Delfin.
  flipper.nadar(); // Invoca el método nadar del delfín.

  final batman = Murcielago(); // Crea una instancia de Murcielago.
  batman.caminar(); // Invoca el método caminar del murciélago.
  batman.volar(); // Invoca el método volar del murciélago.

  final namor = Pato(); // Crea una instancia de Pato.
  namor.caminar(); // Invoca el método caminar del pato.
  namor.volar(); // Invoca el método volar del pato.
  namor.nadar(); // Invoca el método nadar del pato.
}
