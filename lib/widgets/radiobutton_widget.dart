import 'package:flutter/material.dart';


enum Gender { male, female }

class radio extends StatefulWidget {

  const radio({Key? key}) : super(key: key);

  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radio> {
  Gender? _Gen = Gender.male;


  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio<Gender>(
            value: Gender.male,
            groupValue: _Gen,
            onChanged: (Gender? value) {
              setState(() {
                _Gen = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio<Gender>(
            value: Gender.female,
            groupValue: _Gen,
            onChanged: (Gender? value) {
              setState(() {
                _Gen = value;
              });
            },
          ),
        ),
      ],

    );
  }
}
