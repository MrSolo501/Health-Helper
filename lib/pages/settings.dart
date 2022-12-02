import 'package:flutter/material.dart';

class SettingsScreenWidget extends StatelessWidget {
  const SettingsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
          child: TextFormField(
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 2.0, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 3.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш рост',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextFormField(
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 2.0, color: Color.fromRGBO(106, 153, 78, 1))),
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
            style: const TextStyle(color: Color.fromRGBO(56, 102, 65, 1)),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 2.0, color: Color.fromRGBO(106, 153, 78, 1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      width: 3.0, color: Color.fromRGBO(167, 201, 87, 1))),
              labelText: 'Введите ваш возраст',
            ),
          ),
        ),
      ],
    );
  }
}
