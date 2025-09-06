
class Validators {
  

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese su correo electrónico';
    }
    
    // Validación básica: debe contener "@"
    if (!value.contains('@')) {
      return 'El correo debe contener "@"';
    }
    

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Ingrese un correo electrónico válido';
    }
    
    return null; 
  }
  

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese su contraseña';
    }
    
    // Validación de longitud mínima: 6 caracteres
    if (value.length < 6) {
      return 'La contraseña debe tener al menos 6 caracteres';
    }
    
    return null; 
  }
}