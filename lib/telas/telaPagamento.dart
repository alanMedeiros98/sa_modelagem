import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sa_clavison/componentes/colocar_botao.dart';
import 'package:sa_clavison/componentes/colocar_campo_texto.dart';
import 'package:sa_clavison/componentes/radio.dart';
import 'package:sa_clavison/modelos/bandeira.dart';

class TelaPagamento extends StatefulWidget {
  const TelaPagamento({super.key});

  @override
  State<TelaPagamento> createState() => _TelaPagamentoState();
}

class _TelaPagamentoState extends State<TelaPagamento> {
  @override
  Widget build(BuildContext context) {
    Bandeira cbController = Bandeira.MASTERCARD;
    RadioButton radio = RadioButton(controller: cbController);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento', 
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
                padding: EdgeInsets.only(top: 15.0),
                child: Text('Cliente: xxxxxxx',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Código Reserva: xxxxxxx',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: CampoDeTexto(
                  controlador: null,
                  msgVal: 'teste',
                  texto: 'Número do cartão.',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: CampoDeTexto(
                  controlador: null,
                  msgVal: 'teste',
                  texto: 'Nome do Titular.',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: CampoDeTexto(
                  controlador: null,
                  msgVal: 'teste',
                  texto: 'Número do cartão.',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: CampoDeTexto(
                  controlador: null,
                  msgVal: 'teste',
                  texto: 'Validade do cartão.',
                ),
              ),
              Expanded(
                child: CampoDeTexto(
                  controlador: null,
                  msgVal: 'teste',
                  texto: 'CVV.',
                ),
              ),
            ],
          ),
          radio,
          //SizedBox(width: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Botao(corFonte: Colors.yellow, corFundo: Colors.red, funcao: (){}, texto: 'Gerar Boleto',)),
              Expanded(child: Botao(corFonte: Colors.yellow, corFundo: Colors.red, funcao: (){}, texto: 'Gerar QR Code Pix',)),
              Expanded(child: Botao(corFonte: Colors.white, corFundo: Colors.green, funcao: (){}, texto: 'Pagar via cartão de crédito',))
            ],
          )
        ],
      ),
    );
  }
}