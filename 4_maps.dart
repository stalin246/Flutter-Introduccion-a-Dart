void main() {
  // Crear un Map en Dart utilizando la sintaxis de Map.
  // 'pokemon' es un Map que usa Strings como claves y tiene valores de tipo dinámico.
  
            //clave   valor
    final Map<String, dynamic> pokemon = {
    // Asignación de valores al Map 'pokemon'.
    'name': 'Pikachu',         // Clave 'name' con valor String 'Pikachu'.
    'hp': 100,                 // Clave 'hp' con valor int 100.
    'isAlive': true,           // Clave 'isAlive' con valor booleano true.
    'abilities': <String>['impostor'],  // Clave 'abilities' con una lista de Strings.
    'sprites': {               // Clave 'sprites' con otro Map como valor.
      1: 'pikachu/front.png',  // Anidación de Map: clave int y valor String para la vista frontal.
      2: 'pikachu/back.png'    // Anidación de Map: clave int y valor String para la vista trasera.
    }
  };
  
  // Imprimir el Map completo para ver su estructura y valores.
  print(pokemon);
  
  // Acceder a los valores del Map usando claves y imprimirlos.
  print('Name: ${pokemon['name']}');        // Accede al valor asociado con la clave 'name'.
  print('Hp: ${pokemon['hp']}');            // Accede al valor asociado con la clave 'hp'.
  print('Sprites: ${pokemon['sprites']}');  // Accede al Map anidado asociado con la clave 'sprites'.
  
  // Acceder a valores específicos dentro del Map anidado y imprimirlos.
  print('Front: ${pokemon['sprites'][1]}'); // Accede al sprite frontal.
  print('Back: ${pokemon['sprites'][2]}');  // Accede al sprite trasero.
}
