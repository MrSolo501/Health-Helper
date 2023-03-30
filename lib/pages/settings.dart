import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreenWidget extends StatelessWidget {
  const SettingsScreenWidget({Key? key}) : super(key: key);

  void _onChanged(String text) {
    if (kDebugMode) {
      print('_onChanged: $text');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
          child: TextFormField(
            onChanged: _onChanged,
            maxLength: 3,
            initialValue: '176',
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                      width: 3.0.w, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш рост',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextFormField(
            maxLength: 3,
            initialValue: '68',
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 3.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш вес',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: TextFormField(
            maxLength: 2,
            initialValue: '19',
            readOnly: true,
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              counterText: '',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                      width: 2.0.w, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                      width: 3.0.w, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш возраст',
            ),
          ),
        ),
      ],
    );
  }
}
