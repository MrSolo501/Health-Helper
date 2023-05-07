import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sizer/sizer.dart';

class WaterTrackerWidget extends StatefulWidget {
  const WaterTrackerWidget({super.key});

  @override
  State<WaterTrackerWidget> createState() => _WaterTrackerWidgetState();
}

class _WaterTrackerWidgetState extends State<WaterTrackerWidget> {
  static const counterKey = 'counter';
  var _water = 0;
  late String data;
  @override
  void initState() {
    final now = DateTime.now();
    data = "${now.day}-${now.month}-${now.year}";

    _initCounter();

    super.initState();
  }

  void _initCounter() async {
    var prefs = await SharedPreferences.getInstance();
    if (data != prefs.getString('data')) {
      prefs.remove(counterKey);
      _setData();
    }
    setState(() => _water = prefs.getInt(counterKey) ?? 0);
  }

  void _incrementCounter() async {
    setState(() {
      _water++;
    });
    await _setCounter();
  }

  Future _setCounter() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(counterKey, _water);
  }

  Future _setData() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('data', data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 5.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(
          20.0.sp,
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'За сегодня ты выпил:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: ' $_water🥛',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold))
            ]),
          ),
          SizedBox(
            height: 1.h,
          ),
          ElevatedButton(
            onPressed: _incrementCounter,
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 10.w)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.lightBlue.shade100),
            ),
            child: Text("+1",
                style: TextStyle(color: Colors.blue, fontSize: 20.sp)),
          ),
        ],
      ),
    );
  }
}
