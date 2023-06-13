import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/colocar_botao.dart';
import 'package:sa_clavison/componentes/colocar_campo_texto.dart';

class TelaCadastroQuarto extends StatefulWidget {
  const TelaCadastroQuarto({super.key});

  @override
  State<TelaCadastroQuarto> createState() => _TelaCadastroQuartoState();
}

class _TelaCadastroQuartoState extends State<TelaCadastroQuarto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Quarto', 
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
            children: const [
              Expanded(child: CampoDeTexto(controlador: null, msgVal: 'teste', texto: 'Descrição:',)),
              Expanded(child: CampoDeTexto(controlador: null, msgVal: 'teste', texto: 'Preço:',))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Botao(corFonte: Colors.white, corFundo: Colors.green, funcao: (){}, texto: 'Cadastrar Quarto'),
            ],
          ),
        ],
      ),
    );
  }
}