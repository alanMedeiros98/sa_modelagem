import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/colocar_botao.dart';
import 'package:sa_clavison/componentes/colocar_campo_texto.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela de Login',
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
            children: [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Usuário.',
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: CampoDeTexto(
                controlador: null,
                msgVal: 'teste',
                texto: 'Senha.',
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'login',
              ),
              Botao(
                corFonte: Colors.white,
                corFundo: Colors.green,
                funcao: () {},
                texto: 'Cadastro',
              )
            ],
          )
        ],
      ),
    );
  }
}
