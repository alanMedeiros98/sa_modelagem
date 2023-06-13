import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/colocar_botao.dart';
import 'package:sa_clavison/componentes/colocar_campo_texto.dart';
import 'package:sa_clavison/componentes/container1.dart';

class TelaCadastroReserva1 extends StatefulWidget {
  const TelaCadastroReserva1({super.key});

  @override
  State<TelaCadastroReserva1> createState() => _TelaCadastroReserva1State();
}

class _TelaCadastroReserva1State extends State<TelaCadastroReserva1> {
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
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 500,
                  height: 300,
                  decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('/imgs/imagem1.jpg'),
                                  fit: BoxFit.fill
                                ),
                              ),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(child: ContainerCadastro1()),
              Expanded(child: ContainerCadastro1()),
              Expanded(child: ContainerCadastro1()),
              Expanded(child: ContainerCadastro1()),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Expanded(child: Text('Descrição: aqui você coloca a descrição do quarto!')),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Expanded(child: Text('Status: aqui vai aparecer o status do quarto se ele está dísponivel ou indisponivel')),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Expanded(child: Text('Preço: aqui vai o preço do quarto!')),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(child: CampoDeTexto(controlador: null, msgVal: 'teste', texto: 'Data de Entrada',)),
              Expanded(child: CampoDeTexto(controlador: null, msgVal: 'teste', texto: 'Data de Saída',)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Botao(corFonte: Colors.white, corFundo: Colors.green, funcao: (){}, texto: 'Reservar',),
            ],
          ),
        ],
      ),
    );
  }
}