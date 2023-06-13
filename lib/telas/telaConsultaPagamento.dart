import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/colocar_botao.dart';
import '../componentes/colocar_campo_texto.dart';

class TelaConsultaPagamento extends StatefulWidget {
  const TelaConsultaPagamento({super.key});

  @override
  State<TelaConsultaPagamento> createState() => _TelaConsultaPagamentoState();
}

class _TelaConsultaPagamentoState extends State<TelaConsultaPagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consulta de Pagamento',
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
                texto: 'ID Pagamento',
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Consultar por id',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Excluir',
              ),
              Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Alterar',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
