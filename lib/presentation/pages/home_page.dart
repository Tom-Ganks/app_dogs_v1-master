import 'package:app_dogs/presentation/pages/Dogs/dog_page.dart';
import 'package:app_dogs/presentation/pages/pessoas/pessoa_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestão de testes e clientes'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          // Cabeçalho do drawer
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal.shade300,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(''),
                ),
                SizedBox(height: 10),
                Text(
                  'Bem-Vindo',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          // Menu para a página de Dogs
          ListTile(
            leading: const Icon(Icons.pets, color: Colors.teal),
            title: const Text('Dogs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DogPage()),
              );
            },
          ),
          // Menu para a página dos Clientes
          ListTile(
              leading: const Icon(Icons.people, color: Colors.teal),
              title: const Text('Pessoas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PessoaPage()),
                );
              })
        ]),
      ),
    );
  }
}
