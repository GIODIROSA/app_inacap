import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'utils/colors.dart';


void main() {
  runApp(const TodoListApp());
}


class TodoListApp extends StatelessWidget {
  const TodoListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoList - INACAP',
      debugShowCheckedModeBanner: false, 
      
      // Configuración del tema
      theme: ThemeData(
        // Color principal de la aplicación
        primarySwatch: MaterialColor(
          0xFFE30613,
          const <int, Color>{
            50: Color(0xFFFCE4E6),
            100: Color(0xFFF8BCC0),
            200: Color(0xFFF49096),
            300: Color(0xFFF0646C),
            400: Color(0xFFED424C),
            500: Color(0xFFE30613), 
            600: Color(0xFFE0050F),
            700: Color(0xFFDC040A),
            800: Color(0xFFD80306),
            900: Color(0xFFD00100),
          },
        ),
        
   
        primaryColor: InacapColors.primary,
        
    
        appBarTheme: const AppBarTheme(
          backgroundColor: InacapColors.primary,
          foregroundColor: InacapColors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: InacapColors.white,
          ),
        ),
        
 
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: InacapColors.primary,
            foregroundColor: InacapColors.white,
            elevation: 2,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: InacapColors.greyLight,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: InacapColors.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: InacapColors.error,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
        
   
        colorScheme: ColorScheme.fromSeed(
          seedColor: InacapColors.primary,
          primary: InacapColors.primary,
          secondary: InacapColors.secondary,
          error: InacapColors.error,
          surface: InacapColors.white,
          background: InacapColors.secondary,
        ),
        
   
        useMaterial3: true,
      ),
      
    
      home: const LoginScreen(),
    );
  }
}