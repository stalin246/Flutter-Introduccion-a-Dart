// Punto de entrada principal del programa.
void main() {
  // Crea una instancia de WindPlant con una energía inicial de 100 unidades.
  final windPlant = WindPlant(initialEnergy: 100);
  // Crea una instancia de NuclearPlant con una energía inicial de 1000 unidades.
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  // Imprime la energía restante después de intentar cargar un teléfono usando la planta eólica.
  print('wind: ${chargePhone(windPlant)}');
  // Imprime la energía restante después de intentar cargar un teléfono usando la planta nuclear.
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

// Función que simula la carga de un teléfono reduciendo 10 unidades de energía de una planta de energía.
double chargePhone(EnergyPlant plant) {
  // Verifica si la planta tiene suficiente energía para realizar la carga.
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy'); // Lanza una excepción si la energía disponible es insuficiente.
  }
  // Resta 10 unidades de energía de la planta y devuelve la cantidad restante.
  return plant.energyLeft - 10;
}

// Enumeración que define los tipos de plantas de energía disponibles.
enum PlantType { nuclear, wind, water }

// Clase abstracta que define la estructura básica para una planta de energía.
abstract class EnergyPlant {
  double energyLeft; // Almacena la cantidad de energía restante.
  final PlantType type; // Define el tipo de planta de energía.

  // Constructor que inicializa una planta de energía con una cantidad específica de energía y un tipo.
  EnergyPlant({required this.energyLeft, required this.type});

  // Método abstracto que define cómo se debe consumir energía.
  void consumeEnergy(double amount);
}

// Clase que extiende EnergyPlant, específica para plantas eólicas.
class WindPlant extends EnergyPlant {
  // Constructor de WindPlant que inicializa la energía inicial y establece el tipo como eólico.
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  // Implementa el método consumeEnergy para reducir la energía restante por la cantidad especificada.
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount; // Realiza una operación de resta sobre la energía restante.
  }
}

// Clase que implementa la interfaz EnergyPlant, específica para plantas nucleares.
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft; // Almacena la cantidad de energía restante.

  @override
  final PlantType type = PlantType.nuclear; // El tipo de planta es nuclear de forma predeterminada.

  // Constructor que solo necesita inicializar la energía restante.
  NuclearPlant({required this.energyLeft});

  // Implementa el método consumeEnergy para reducir la energía restante por la mitad de la cantidad especificada.
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5); // Reduce la energía restante por la mitad del monto especificado.
  }
}
