import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../modelos/status.dart';

class RadioStatus extends StatefulWidget {
  Status? controller;
  RadioStatus({super.key, this.controller});

  @override
  State<RadioStatus> createState() => _RadioStatusState();
}

class _RadioStatusState extends State<RadioStatus> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('Cancelada'),
            leading: Radio<Status>(
              value: Status.CANCELADA,
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
            title: const Text('Ativada'),
            leading: Radio<Status>(
              value: Status.ATIVADA,
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
            title: const Text('Pendente'),
            leading: Radio<Status>(
              value: Status.PENDENTE,
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