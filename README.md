
<h1 align="center">
Introducción a Flutter
</h1>
<p align="center">
  <img src="https://github.com/stalin246/Flutter-Introduccion-a-Dart/assets/77359338/4907cfc0-2ce7-439d-b60a-faff26ca60eb" width="400" height="auto"/>
</p>


Flutter es un SDK (Software Development Kit) de desarrollo de aplicaciones móviles creado por Google. Permite desarrollar aplicaciones nativas de alta calidad para iOS y Android utilizando un solo código base. Flutter utiliza el lenguaje de programación Dart.

Este documento proporciona una introducción a varios conceptos y características de Dart, el lenguaje de programación utilizado en Flutter, con ejemplos prácticos para ayudar a comprender su sintaxis y propiedades.

## Tipos de Variables

En Dart, puedes declarar variables utilizando `var`, `int`, `double`, `String`, y otros tipos.

```dart
var nombre = 'Juan';
int edad = 25;
double altura = 1.75;
String ciudad = 'Quito';
bool esEstudiante = true;
```

Las variables en Dart son fuertemente tipadas, lo que significa que una vez que una variable tiene un tipo asignado, no puede cambiar a otro tipo. Sin embargo, si se usa `var`, el tipo se infiere automáticamente al momento de la inicialización.

## Dynamic Type

El tipo `dynamic` permite que una variable cambie de tipo durante la ejecución del programa.

```dart
dynamic variable = 'Hola';
variable = 42;
variable = true;
```

El uso de `dynamic` es flexible pero puede llevar a errores en tiempo de ejecución si no se maneja adecuadamente, ya que el sistema de tipos estático de Dart no puede garantizar la seguridad de tipos en las variables dinámicas.

## Maps

Los `Maps` son colecciones de pares clave-valor.

```dart
Map<String, int> edades = {
  'Juan': 25,
  'María': 30,
  'Pedro': 22,
};
```

Un `Map` en Dart es una colección sin orden de pares clave-valor. Las claves deben ser únicas, y puedes usar cualquier tipo de objeto tanto para las claves como para los valores.

## Lists, Iterables, Sets

### Listas

Las `List` son colecciones ordenadas de elementos.

```dart
List<String> frutas = ['Manzana', 'Banana', 'Cereza'];
```

Una lista en Dart es una colección ordenada de elementos que pueden ser accedidos por índice. Los índices en una lista comienzan desde 0.

### Sets

Los `Set` son colecciones de elementos únicos.

```dart
Set<int> numeros = {1, 2, 3, 4};
```

Un `Set` en Dart es una colección de elementos únicos, lo que significa que no puede contener elementos duplicados. Los elementos en un `Set` no tienen un orden específico.

### Iterables

Los `Iterable` son colecciones que pueden ser iteradas.

```dart
Iterable<int> iterable = [1, 2, 3, 4];
```

Un `Iterable` en Dart es una colección de elementos que puede ser recorrida con un `for`-loop o usando métodos de alto nivel como `map` y `where`.

## Funciones con Parámetros

```dart
void saludar(String nombre) {
  print('Hola $nombre');
}
```

Las funciones en Dart pueden tomar parámetros para trabajar con datos. Los parámetros se especifican entre paréntesis después del nombre de la función.

## Funciones con Parámetros Nombrados

```dart
void describirPersona({required String nombre, int edad = 0}) {
  print('Nombre: $nombre, Edad: $edad');
}
```

Las funciones en Dart también pueden tener parámetros nombrados, que se especifican entre llaves. Estos parámetros son opcionales por defecto, pero se pueden marcar como `required`. Además, pueden tener valores predeterminados.

## Clases

```dart
class Persona {
  String nombre;
  int edad;
  
  Persona(this.nombre, this.edad);
  
  void mostrar() {
    print('Nombre: $nombre, Edad: $edad');
  }
}
```

Dart es un lenguaje orientado a objetos, lo que significa que todo es un objeto, incluso los tipos primitivos. Las clases se usan para crear objetos con propiedades y métodos.

## Override en Clases

```dart
class Empleado extends Persona {
  String puesto;
  
  Empleado(String nombre, int edad, this.puesto) : super(nombre, edad);
  
  @override
  void mostrar() {
    super.mostrar();
    print('Puesto: $puesto');
  }
}
```

Puedes sobrescribir métodos de una clase padre en una clase hija usando el anotador `@override`. Esto te permite proporcionar una implementación específica en la clase hija.

## Constructores Nombrados

```dart
class Punto {
  double x, y;
  
  Punto(this.x, this.y);
  
  Punto.origen()
      : x = 0,
        y = 0;
}
```

Los constructores nombrados en Dart te permiten crear múltiples constructores para una clase, cada uno con un nombre diferente. Esto es útil para proporcionar diferentes formas de inicializar un objeto.

## Getters y Setters

```dart
class Rectangulo {
  double _ancho, _alto;
  
  Rectangulo(this._ancho, this._alto);
  
  double get area => _ancho * _alto;
  
  set ancho(double valor) => _ancho = valor;
}
```

Los getters y setters permiten controlar el acceso a las propiedades de un objeto. Los getters se usan para obtener el valor de una propiedad y los setters para establecer el valor de una propiedad.

## Acciones (Métodos y Funciones)

```dart
class Calculadora {
  int sumar(int a, int b) {
    return a + b;
  }
  
  void restar(int a, int b) {
    print(a - b);
  }
}
```

Las acciones en Dart pueden ser métodos dentro de clases o funciones independientes. Los métodos son funciones que pertenecen a una clase y pueden acceder a sus propiedades y otros métodos.

## Clase Abstracta

```dart
abstract class Animal {
  void hacerSonido();
}

class Perro extends Animal {
  @override
  void hacerSonido() {
    print('Guau');
  }
}
```

Las clases abstractas no pueden ser instanciadas y están destinadas a ser subclaseadas. Una clase abstracta puede contener métodos abstractos, que deben ser implementados por las subclases.

## Uso de Extends

```dart
class Vehiculo {
  void encender() {
    print('Vehículo encendido');
  }
}

class Coche extends Vehiculo {
  void tocarBocina() {
    print('Tocando bocina');
  }
}
```

El uso de `extends` permite que una clase herede las propiedades y métodos de otra clase. Esto es conocido como herencia.

## Uso de Implements

```dart
class Volador {
  void volar() {
    print('Volando');
  }
}

class Pajaro implements Volador {
  @override
  void volar() {
    print('El pájaro está volando');
  }
}
```

El uso de `implements` obliga a una clase a implementar todos los métodos y propiedades definidos en una interfaz o clase abstracta. Esto es útil para asegurar que una clase proporciona una funcionalidad específica.

## Mixins

```dart
mixin Cantante {
  void cantar() {
    print('Cantando');
  }
}

class Persona with Cantante {}

void main() {
  var persona = Persona();
  persona.cantar();
}
```

Los mixins son una forma de compartir código entre múltiples clases. Un mixin es una clase que contiene métodos que pueden ser utilizados por otras clases sin ser una clase padre directa.

## Futures

```dart
Future<String> obtenerNombre() async {
  return 'Juan';
}

void main() {
  obtenerNombre().then((nombre) => print(nombre));
}
```

Un `Future` representa un valor o error que estará disponible en algún momento en el futuro. Los futures son útiles para operaciones asincrónicas como las solicitudes de red.

## Async y Await

```dart
Future<void> mostrarNombre() async {
  String nombre = await obtenerNombre();
  print(nombre);
}

Future<String> obtenerNombre() async {
  return 'Juan';
}
```

Las palabras clave `async` y `await` permiten escribir código asincrónico de manera más secuencial y comprensible. `async` se usa para marcar una función como asincrónica, y `await` se usa para esperar a que un `Future` se complete.

## Try, Catch, Finally

```dart
void main() {
  try {
    int resultado = 10 ~/ 0;
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Operación completada');
  }
}
```

Los bloques `try`, `catch` y `finally` se usan para manejar excepciones en Dart. `try` contiene el código que puede lanzar una excepción, `catch` maneja la excepción y `finally` contiene el código que se ejecutará siempre, sin importar si ocurrió una excepción o no.

## Streams

```dart
Stream<int> contarHastaTres() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
  }
}

void main() {
  contarHastaTres().listen((numero) {
    print(numero);
  });
}
```

Un `Stream` es una secuencia asincrónica de datos. Los streams son útiles para manejar datos que vienen de manera continua, como eventos de usuario o datos de una red. Se pueden consumir usando el método `listen`.

Este README proporciona una visión general de los conceptos fundamentales en Dart, que es crucial para el desarrollo con Flutter.
