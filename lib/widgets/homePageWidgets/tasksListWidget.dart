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
    return Positioned(
      
      top: MediaQuery.of(context).size.height / 29.h,
      left: MediaQuery.of(context).size.width / 12.w,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(20.0.sp),
            color: Colors.white),
        padding:  EdgeInsets.all(13.sp),
        width: 320.w,
        height: 580.h,
        child: Column(
          children: [
            
            Container(
              
              child:  Text(
                'Расписание',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              
            ),
            SizedBox(height: 10.h,),
            for (ToDo todoo in todosList)
              ToDoItem(
                todo: todoo,
                onToDoChanged: _handleToDoChange,
              ),
          ],
        ),
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
      ToDo(id: '01', todoText: 'Подъём', time: '07:00'),
      ToDo(id: '02', todoText: 'Зарядка', time: '07:20'),
      ToDo(id: '03', todoText: 'Завтрак', time: '07:40'),
      ToDo(id: '04', todoText: 'Обед', time: '13:30'),
      ToDo(id: '05', todoText: 'Ужин', time: '19:00'),
      ToDo(id: '06', todoText: 'Тренировка', time: '20:00'),
      ToDo(id: '07', todoText: 'Сон', time: '23:00'),
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
      margin: EdgeInsets.only(bottom: 13),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(20.0.sp),
        color: Colors.white,
      ),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        contentPadding:
             EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 14.0.w),
       
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.lightGreen,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
            
            width: 70.w,
            child: Text(
              todo.time!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            )),
      ),
    );
  }
}
