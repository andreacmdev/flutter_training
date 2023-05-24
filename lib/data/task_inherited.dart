import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget{
  TaskInherited ({
    Key? key,
    required Widget child,
  }) : super (key: key, child: child);

  final List<Task> taskList = [
     Task('Aprender Flutter', 'assets/images/dash.png', 3),
          Task('Andar de Bike', 'assets/images/bike.webp', 2),
          Task('Meditar', 'assets/images/meditar.jpeg', 5),
          Task('Ler', 'assets/images/livro.jpg', 4),
          Task('Jogar','assets/images/jogar.jpg',1),
  ];

  void newTask(String nome, String foto, int dificuldade){
    taskList.add(Task(nome, foto, dificuldade));
  }

static TaskInherited of(BuildContext context){
  final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<>();
  assert (result != null, 'No TaskInherited found in context');
  return result!;
}

@override
bool updateShouldNotify (TaskInherited old) {
  return ;
}
}