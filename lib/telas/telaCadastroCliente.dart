import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/colocar_botao.dart';
import 'package:sa_clavison/componentes/colocar_campo_texto.dart';
import 'package:sa_clavison/componentes/colocar_texto.dart';

class TelaCadastroCliente extends StatefulWidget {
  const TelaCadastroCliente({super.key});

  @override
  State<TelaCadastroCliente> createState() => _TelaCadastroClienteState();
}

class _TelaCadastroClienteState extends State<TelaCadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro de Cliente',
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
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Nome:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Senha:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: ColocarTexto(
                texto: 'Endereço:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Estado:',
              )),
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Cidade:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Rua:',
              )),
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Número:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: ColocarTexto(
                texto: 'Contato:',
              )),
            ],
          ),
          Row(
            children: const [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Telefone:',
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Cadastrar',
              )
            ],
          )
        ],
      ),
    );
  }
}
