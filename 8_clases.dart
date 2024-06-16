void main() {
  // Crea una instancia de la clase Hero, inicializando con valores para 'name' y 'power'.
  final Hero wolverine = Hero('Logan', 'Regeneracion');
  // Imprime la representación de string de la instancia 'wolverine'.
  print(wolverine);
  // Accede e imprime la propiedad 'name' de la instancia 'wolverine'.
  print(wolverine.name);
  // Accede e imprime la propiedad 'power' de la instancia 'wolverine'.
  print(wolverine.power);
}

// Definición de la clase Hero
class Hero {
  // Propiedades de la clase
  String name;
  String power;
  
  // Las propiedades deben ser inicializadas a traves del constructor
  // Hero es la funcion sque se usara cuando se inicie la instancia
  // 1ra Forma--------------------------------------
  //Hero( String pName, String pPower)
  //    : name = pName,
   //     power = pPower;

 // 2da Forma--------------------------------------
  // Constructor de la clase Hero que inicializa las propiedades 'name' y 'power'.
  // Utiliza la sintaxis de inicialización corta de Dart con 'this'.
  Hero(this.name, this.power);
}
