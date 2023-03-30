import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_helper/pages/home_page.dart';


class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
   final todosList = ToDo.todoList();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white),
      padding:  EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 15.h,
      ),
      width: 320.w,
      height: 560.h,
      child: Column(
        children: [
          Container(
            margin:  EdgeInsets.only(
              top: 10.h,
              bottom: 10.h,
            ),
            child:  Text(
              'Расписание',
              style: TextStyle(
                fontSize: 30.h,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          for (ToDo todoo in todosList)
            ToDoItem(
              todo: todoo,
              onToDoChanged: _handleToDoChange,
            ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}

class ToDo {
  String? id;
  String? todoText;
  String? time;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    required this.time,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Зарядка', time: '8:00-9:00'),
      ToDo(id: '02', todoText: 'Завтрак', time: '9:00-10:30'),
      ToDo(id: '03', todoText: 'Обед', time: '12:00-14:00'),
      ToDo(id: '04', todoText: 'Ужин', time: '16:30-17:30'),
      ToDo(id: '05', todoText: 'Тренировка', time: '18:00-20:00'),
      ToDo(id: '06', todoText: 'Сон', time: '23:00'),
    ];
  }
}

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        contentPadding:
             EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 16.0.w),
       
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.lightGreen,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16.h,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
            height: 14.h,
            width: 80.w,
            child: Text(
              todo.time!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.h),
            )),
      ),
    );
  }
}
