import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Octavio',
      'last_name' : 'Diaz',
      'email'     : 'odiazg01@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 10),
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre de Usuario', textCapitalization: TextCapitalization.words, formProperty: 'first_name', formValues: formValues, icon: Icons.perm_identity,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', textCapitalization: TextCapitalization.words, formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30),


                DropdownButtonFormField<String>(
                  //value: 'Admin ',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser'),),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr.Developer', child: Text('Jr.Developer'),),
                  ], 
                  onChanged: (value){
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode()); //para quitar el teclado!!!
                    if (! myFormKey.currentState!.validate()){
                      print('Formulario no Valido');
                      return;
                    }
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
