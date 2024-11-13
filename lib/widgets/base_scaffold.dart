// lib/widgets/base_scaffold.dart
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const BaseScaffold({super.key, required this.body, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 49, 140, 231),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey.shade100, // Fondo blanco suave para el Drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.tealAccent.shade700], // Degradado de azul a verde agua
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/avatar.png'), // Cambia esto con tu imagen de perfil
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Usuario',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'usuario@ejemplo.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_outline, color: Colors.blueGrey),
                title: const Text('Perfil', style: TextStyle(color: Colors.blueGrey)),
                onTap: () {
                  Navigator.pushNamed(context, '/edit_profile');
                },
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined, color: Colors.blueGrey),
                title: const Text('Inicio', style: TextStyle(color: Colors.blueGrey)),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              ListTile(
                leading: const Icon(Icons.search_outlined, color: Colors.blueGrey),
                title: const Text('Buscar', style: TextStyle(color: Colors.blueGrey)),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_outlined, color: Colors.blueGrey),
                title: const Text('Notificaciones', style: TextStyle(color: Colors.blueGrey)),
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              Divider(color: Colors.grey.shade400), // Divisor gris suave
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.redAccent),
                title: const Text('Cerrar sesión', style: TextStyle(color: Colors.redAccent)),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}
