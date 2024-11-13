// lib/screens/edit_profile_screen.dart
import 'package:flutter/material.dart';
import '../widgets/base_scaffold.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Editar Perfil',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Editar Nombre de Usuario:'),
            const TextField(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Guardar cambios (futuro)
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
