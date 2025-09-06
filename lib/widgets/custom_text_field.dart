import 'package:flutter/material.dart';
import '../utils/colors.dart';


class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.isPassword = false,
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: InacapColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        
     
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          validator: validator,
          style: const TextStyle(
            fontSize: 16,
            color: InacapColors.textPrimary,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: InacapColors.textSecondary,
              fontSize: 14,
            ),
            prefixIcon: prefixIcon != null 
              ? Icon(prefixIcon, color: InacapColors.primary) 
              : null,
            
      
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: InacapColors.greyLight,
                width: 1,
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
                width: 1,
              ),
            ),
            
         
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: InacapColors.error,
                width: 2,
              ),
            ),
            
            // Relleno interno
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
      ],
    );
  }
}