import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/container.dart';

class TelaCadastroReserva extends StatefulWidget {
  const TelaCadastroReserva({super.key});

  @override
  State<TelaCadastroReserva> createState() => _TelaCadastroReservaState();
}

class _TelaCadastroReservaState extends State<TelaCadastroReserva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quartos para Reserva', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, right: 10, left: 10),
                child: Expanded(child: ColocarContainer()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                child: Text('1'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                child: Text('2'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                child: Text('3'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                child: Text('4'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                child: Text('5'),
              )
            ],
          ),
        ],
      ),
    );
  }
}