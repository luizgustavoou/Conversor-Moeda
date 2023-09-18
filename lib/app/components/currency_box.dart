import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(
                  iconEnabledColor: Colors.amber,
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  value: 'a',
                  items: [
                    DropdownMenuItem(value: 'a', child: Text('Real')),
                    DropdownMenuItem(value: 'b', child: Text('Dolar'))
                  ],
                  onChanged: (value) {}),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
                onChanged: (text) {},
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))))),
      ],
    );
  }
}
