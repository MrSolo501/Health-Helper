
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'clock_widget.dart';

class ScheduleWidget extends StatelessWidget {
  ScheduleWidget({
    super.key,
  });
  List<ScheduleItem> schedule = [
    ScheduleItem(
      time: '08:00',
      title: 'Подъём',
      description: 'Время начинать день!',
    ),
    ScheduleItem(
      time: '08:30',
      title: 'Зарядка',
      description: 'Оставайся здоровым и в форме',
    ),
    ScheduleItem(
      time: '09:00',
      title: 'Завтрак',
      description: 'Здоровый завтрак - топливо на весь день',
    ),
    ScheduleItem(
      time: '12:00',
      title: 'Обед',
      description: 'Время на небольшой перерыв',
    ),
    ScheduleItem(
      time: '18:00',
      title: 'Ужин',
      description: 'Хороший ужин - залог хорошего сна',
    ),
    ScheduleItem(
      time: '19:00',
      title: 'Тренировка',
      description: 'Будь в своей лучшей форме каждый день',
    ),
    ScheduleItem(
      time: '23:00',
      title: 'Сон',
      description: 'Сон делает нас радостными, а хороший сон - счастливыми',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        _buildHeader(context),
        SizedBox(
          height: 5.w,
        ),
        Column(
          children: List.generate(
            schedule.length,
            (index) => SizedBox(
              child: SizedBox(
                height: 8.h,
                child: ListTile(
                  leading: Text(
                    schedule[index].time,
                  ),
                  title: Text(
                    schedule[index].title,
                  ),
                  subtitle: Text(
                    schedule[index].description,
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 1.h,
          color: Colors.black,
        ),
        SizedBox(height: 3.h,)
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final now = DateTime.now();
    final time = TimeOfDay.fromDateTime(now).format(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Сегодня: ${(now.day<10)? "0${now.day}":"${now.day}"}.${(now.month<10)? "0${now.month}":"${now.month}"}.${now.year}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 3.h),
       ClockWidget(),
      ],
    );
  }
}

class ScheduleItem {
  final String time;
  final String title;
  final String description;

  ScheduleItem(
      {required this.time, required this.title, required this.description});
}