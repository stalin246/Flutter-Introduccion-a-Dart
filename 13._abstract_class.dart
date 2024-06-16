void main(){
  // Aquí podríamos crear instancias de clases concretas que extiendan EnergyPlant, 
  // pero como es abstracta, EnergyPlant no se puede instanciar directamente.
}

// Definición de un enum para los tipos de plantas de energía.
enum PlantType { nuclear, wind, water }

// Clase abstracta para representar una planta de energía.
abstract class EnergyPlant {
  double energyLeft;  // Cantidad de energía restante en la planta.
  PlantType type;     // Tipo de planta de energía, definido por el enum PlantType.

  // Constructor de la clase abstracta.
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  // Método abstracto que debe ser implementado por cualquier clase que extienda EnergyPlant.
  // Este método está destinado a consumir una cantidad de energía especificada.
  void consumeEnergy(double amount);
}
