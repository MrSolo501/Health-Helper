
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScheduleWidget extends StatelessWidget {
  ScheduleWidget({
    super.key,
  });
  List<ScheduleItem> schedule = [
    ScheduleItem(
      time: '08:00',
      title: 'Подъём',
      description: 'Time to start the day!',
    ),
    ScheduleItem(
      time: '08:30',
      title: 'Зарядка',
      description: 'Stay fit and healthy.',
    ),
    ScheduleItem(
      time: '09:00',
      title: 'Завтрак',
      description: 'A healthy breakfast fuels the day.',
    ),
    ScheduleItem(
      time: '12:00',
      title: 'Обед',
      description: 'Take a break and refuel.',
    ),
    ScheduleItem(
      time: '18:00',
      title: 'Ужин',
      description: 'A good dinner is a good night\'s sleep.',
    ),
    ScheduleItem(
      time: '19:00',
      title: 'Тренировка',
      description: 'A good dinner is a good night\'s sleep.',
    ),
    ScheduleItem(
      time: '23:00',
      title: 'Сон',
      description: 'A good dinner is a good night\'s sleep.',
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
    //final timeFormat = TimeOfDayFormat.HH_colon_mm;
    final time = TimeOfDay.fromDateTime(now).format(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Сегодня: ${now.day}.${now.month}.${now.year}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 3.h),
        Text(
          'Текущее время: $time',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
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