import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'login_screen.dart';


class WelcomeScreen extends StatelessWidget {
  final String userEmail;

  const WelcomeScreen({
    Key? key,
    required this.userEmail,
  }) : super(key: key);


  void _logout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'TodoList',
          style: TextStyle(
            color: InacapColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: InacapColors.primary,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, 
        actions: [
     
          IconButton(
            onPressed: () => _logout(context),
            icon: const Icon(
              Icons.logout,
              color: InacapColors.white,
            ),
            tooltip: 'Cerrar Sesión',
          ),
        ],
      ),
      
      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              InacapColors.primary,
              InacapColors.white,
            ],
            stops: [0.0, 0.3],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Ícono de bienvenida
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: InacapColors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.check_circle_outline,
                    size: 80,
                    color: InacapColors.success,
                  ),
                ),
                
                const SizedBox(height: 32),
                
            
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: InacapColors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '¡Bienvenido al TodoList!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: InacapColors.primary,
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      Text(
                        'Hola $userEmail',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: InacapColors.textPrimary,
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      const Text(
                        'Has iniciado sesión exitosamente en tu aplicación de gestión de tareas.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: InacapColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 40),
                
            
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: InacapColors.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Funcionalidades disponibles:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: InacapColors.textPrimary,
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Lista de funcionalidades
                      _buildFeatureItem(
                        Icons.add_task,
                        'Crear nuevas tareas',
                      ),
                      _buildFeatureItem(
                        Icons.list_alt,
                        'Gestionar lista de pendientes',
                      ),
                      _buildFeatureItem(
                        Icons.check_circle,
                        'Marcar tareas como completadas',
                      ),
                      _buildFeatureItem(
                        Icons.schedule,
                        'Organizar por prioridades',
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 32),
                
 
                SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí irían las funcionalidades del TodoList
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('¡Funcionalidad del TodoList por implementar!'),
                          backgroundColor: InacapColors.primary,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: InacapColors.primary,
                      foregroundColor: InacapColors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Comenzar a usar TodoList',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 24),
                
              
                Text(
                  'Evaluación Sumativa N°1 - Aplicaciones Móviles para IoT\nINACAP Puente Alto',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: InacapColors.textSecondary.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildFeatureItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            icon,
            color: InacapColors.primary,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: InacapColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}