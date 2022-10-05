import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;


  const CustomInputField({
    Key? key, 
    this.labelText, 
    this.hintText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.prefixIcon, 
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false, 

    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: ' ',
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value){
        if( value == null) return 'Este Campo es requerido';
        return value.length < 3? 'Minimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText, 
        hintText: hintText,
        helperText: helperText,
        //counterText: '3 Caracteres', 
        prefixIcon: prefixIcon == null? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null? null : Icon(suffixIcon),
        icon: icon == null? null : Icon(icon),
      ),
    );
  }
}