import 'package:flutter/material.dart';
import 'package:health_helper/pages/home_page.dart';
import 'package:sizer/sizer.dart';


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
      width: 50.w,
      height: 100.h,
      decoration: BoxDecoration(
        
          border: Border.all(
            color: Colors.green,
            width: 0.5.w,
          ),
          borderRadius: BorderRadius.circular(20.0.sp),
          color: Colors.white),
      //padding:  EdgeInsets.all(13.sp),
      
      child: Column(
        children: [
          
          Text(
            'Расписание',
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5.h,),
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
      
      //margin: EdgeInsets.only(bottom: 13.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(20.0.sp),
        color: Colors.white,
      ),
      child: SizedBox(
        width: 80.w,
        child: ListTile(
          
          onTap: () {
            onToDoChanged(todo);
          },
          //contentPadding:
               //EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 14.0.w),
         
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
          trailing: SizedBox(
              
              width: 30.w,
              child: Text(
                todo.time!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              )),
        ),
      ),
    );
  }
}
