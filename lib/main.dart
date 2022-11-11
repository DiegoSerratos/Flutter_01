import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: () {
            _personas.add(
              Persona('prueba', 'boton', '20164895'),
            );
          },
        ),
        body: ListView.builder(
            itemCount: _personas.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                    _personas[index].name + ' ' + _personas[index].lastname),
                subtitle: Text(_personas[index].cuenta),
                leading: CircleAvatar(
                  child: Text(_personas[index].name.substring(0, 1)),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }),
      ),
    );
  }
}

class Persona {
  String name;
  String lastname;
  String cuenta;
  Persona(this.name, this.lastname, this.cuenta);
}

List<Persona> _personas = [
  Persona('Diego Uriel',' Serratos','20164981'),
  Persona('Valeria',' Ramirez','20177408'),
  Persona('Maria Silvia',' Sernas','20164589'),
  Persona('Julio Cesar',' Serratos','20165984'),
];

