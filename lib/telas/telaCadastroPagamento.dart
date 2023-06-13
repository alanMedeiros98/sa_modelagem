import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/colocar_botao.dart';
import '../componentes/colocar_campo_texto.dart';
import '../componentes/colocar_texto.dart';

class TelaCadastroPagamento extends StatefulWidget {
  const TelaCadastroPagamento({super.key});

  @override
  State<TelaCadastroPagamento> createState() => _TelaCadastroPagamentoState();
}

class _TelaCadastroPagamentoState extends State<TelaCadastroPagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Pagamento', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: const [
              Expanded(child: CampoDeTexto(controlador: null, msgVal: 'teste', texto: 'Nome:',)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Botao(corFonte: Colors.white, corFundo: Colors.green, funcao: (){}, texto: 'Cadastrar',)
            ],
          )
        ],
      ),
    );
  }
}