// lib/screens/edit_profile_screen.dart
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Editar Nombre de Usuario:'),
            TextField(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí se puede agregar la funcionalidad de guardado en el futuro
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
