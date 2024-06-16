void main() {
  // Instancia el objeto mySquare con un lado inicial de longitud 10.
  // Las aserciones en el constructor garantizan que el lado no sea negativo.
  final mySquare = Square(side: 10);

  // Imprime el área del cuadrado utilizando el getter 'area'.
  print('Area: ${mySquare.area}');
}

// Clase Square para calcular el área de un cuadrado
class Square {
  double _side;  // Propiedad privada para almacenar el lado del cuadrado.

  // Constructor que inicializa la propiedad _side.
  // Utiliza 'assert' para asegurar que el lado sea mayor que 0.
  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;  // Inicializa _side con el valor proporcionado.

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

  // Método para calcular el área del cuadrado.
  double calculateArea() {
    return _side * _side;  // Retorna el área calculando el cuadrado del lado.
  }
}
