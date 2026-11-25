import 'package:flutter/material.dart';

//Desenvolva um aplicativo simples de gerenciamento de tarefas.

//O aplicativo deve permitir:

//Cadastro de novas tarefas (campo de texto e botão para adicionar).

//Exibição da lista de tarefas cadastradas (pode ser ListView ou equivalente).

//O layout é livre, desde que o aplicativo seja funcional.

void main() {
  runApp(app1());
}
class app1 extends StatefulWidget {
  app1({super.key});
  @override
  State<app1> createState() => _app1State();
}

class _app1State extends State<app1> {
  TextEditingController controller1 =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gerenciador de Tareas'),
          foregroundColor: Colors.brown,
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                  labelText: 'Digite su Tarea',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ListView.builder(
                  itemCount: 0, 
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller1.text),
                    );
                  },
                );
              },
              child: 
              Text('Agregar Tarea'),
            ),
          ],
        )
      ),
    );
  }
}