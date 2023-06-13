import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/modelos/bandeira.dart';

class RadioButton extends StatefulWidget {
  Bandeira? controller;
  RadioButton({super.key, this.controller});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('MasterCard'),
            leading: Radio<Bandeira>(
              value: Bandeira.MASTERCARD,
              groupValue: widget.controller,
              onChanged: (value) {
                setState(() {
                  widget.controller = value!;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Elo'),
            leading: Radio<Bandeira>(
              value: Bandeira.ELO,
              groupValue: widget.controller,
              onChanged: (value) {
                setState(() {
                  widget.controller = value!;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Visa'),
            leading: Radio<Bandeira>(
              value: Bandeira.VISA,
              groupValue: widget.controller,
              onChanged: (value) {
                setState(() {
                  widget.controller = value!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}