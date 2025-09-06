import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/validators.dart';
import '../widgets/custom_text_field.dart';
import 'welcome_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  

  bool _isLoading = false;

  @override
  void dispose() {
    
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  Future<void> _handleLogin() async {
 
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

     
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(
              userEmail: _emailController.text,
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          'TodoList - Login',
          style: TextStyle(
            color: InacapColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: InacapColors.primary,
        elevation: 0,
        centerTitle: true,
      ),
      
      body: Container(
    
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              InacapColors.secondary,
              InacapColors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo INACAP
                  Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: InacapColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/logo3_inacap.png',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                        
                          return const Icon(
                            Icons.school,
                            size: 60,
                            color: InacapColors.primary,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  const Text(
                    'Bienvenido a TodoList',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: InacapColors.textPrimary,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  const Text(
                    'Ingresa tus credenciales para continuar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: InacapColors.textSecondary,
                    ),
                  ),
                  
                  const SizedBox(height: 40),
                  
               
                  CustomTextField(
                    label: 'Correo Electrónico',
                    hint: 'ejemplo@correo.com',
                    controller: _emailController,
                    validator: Validators.validateEmail,
                    prefixIcon: Icons.email_outlined,
                  ),
                  
                  const SizedBox(height: 20),
                  
               
                  CustomTextField(
                    label: 'Contraseña',
                    hint: 'Mínimo 6 caracteres',
                    controller: _passwordController,
                    isPassword: true,
                    validator: Validators.validatePassword,
                    prefixIcon: Icons.lock_outlined,
                  ),
                  
                  const SizedBox(height: 32),
                  
                
                  SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : _handleLogin,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: InacapColors.primary,
                        foregroundColor: InacapColors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        disabledBackgroundColor: InacapColors.greyLight,
                      ),
                      child: _isLoading
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  InacapColors.white,
                                ),
                              ),
                            )
                          : const Text(
                              'Iniciar Sesión',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
           
                  Text(
                    'Desarrollado para INACAP',
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
      ),
    );
  }
}