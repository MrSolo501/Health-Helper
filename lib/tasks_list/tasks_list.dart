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
    var col = Colors.white70;

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
              IconButton(
                color: Colors.white70,
                iconSize: 23,
                icon: Icon(Icons.check_box_outline_blank,color: Colors.lightBlueAccent,),
                onPressed: () {

                },
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(80, 0, 50, 0),
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
