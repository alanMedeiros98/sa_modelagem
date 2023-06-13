import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/radioStatus.dart';
import 'package:sa_clavison/modelos/status.dart';

import '../componentes/colocar_botao.dart';
import '../componentes/colocar_campo_texto.dart';
import '../componentes/radio.dart';

class TelaConsultaReserva extends StatefulWidget {
  const TelaConsultaReserva({super.key});

  @override
  State<TelaConsultaReserva> createState() => _TelaConsultaReservaState();
}

class _TelaConsultaReservaState extends State<TelaConsultaReserva> {
  @override
  Widget build(BuildContext context) {
    Status stController = Status.ATIVADA;
    RadioStatus radio = RadioStatus(controller: stController);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consulta de Reserva',
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
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'ID Reserva',
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Data Inicial',
              )),
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Data Final',
              )),
            ],
          ),
          radio,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Consultar',
              )),
              Expanded(
                  child: Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Consultar todos',
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 1000,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
