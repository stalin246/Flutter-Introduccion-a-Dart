void main() {
  // Instancia el objeto mySquare con un lado inicial de longitud 10.
  final mySquare = Square(side: 10);

  // Establece el lado del cuadrado a 5 usando el setter, el cual asegura que el valor no sea negativo.
  mySquare.side = 5;

  // Imprime el área del cuadrado utilizando el getter 'area'.
  print('Area: ${mySquare.area}');
}

// Clase Square para calcular el área de un cuadrado
class Square {
  double _side;  // Propiedad privada para almacenar el lado del cuadrado.

  // Constructor que inicializa la propiedad _side.
  // Se requiere especificar el valor de 'side' cuando se instancia la clase.
  Square({required double side})
    : _side = side;  // Inicializa _side con el valor proporcionado.

  // Getter para obtener el área del cuadrado.
  double get area {
    return _side * _side;  // Calcula el área como el cuadrado del lado.
  }

  // Setter para establecer el valor del lado (_side) del cuadrado.
  // Verifica que el valor no sea negativo antes de asignarlo.
  set side(double value) {
    if (value < 0) {
      throw 'Value must be >= 0';  // Lanza una excepción si el valor es negativo.
    }
    _side = value;  // Asigna el valor a _side si es no negativo.
    print('Setting new value $value');  // Opcional: Imprime el nuevo valor asignado.
  }
}
