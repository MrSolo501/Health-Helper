import 'package:flutter/material.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Зарядка',
      'Завтрак',
      'Обед',
      'Тренировка',
      'Ужин',
      'Сон'
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
          height: 50,
          child: Center(
              child: Text(
            '${entries[index]}',
            style: TextStyle(fontSize: 20),
          )),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
