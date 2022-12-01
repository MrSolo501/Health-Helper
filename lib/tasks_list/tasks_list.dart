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
    var col = Colors.green;

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)), color: col),
          height: 50,
          child: Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.incomplete_circle_sharp,
                    color: Colors.red,
                  ),
                  label: Text('')),
              Padding(padding: EdgeInsets.fromLTRB(80,0, 50, 0),
              child: Text(
                '${entries[index]}',
                style: TextStyle(fontSize: 25),
              )),
            ],
          ),
        );
        //child: Center(child: Text('Entry ${entries[index]}'))
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
