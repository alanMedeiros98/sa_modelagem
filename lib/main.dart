import 'package:flutter/material.dart';
import 'package:sa_clavison/telas/telaCadastroCliente.dart';
import 'package:sa_clavison/telas/telaCadastroPagamento.dart';
import 'package:sa_clavison/telas/telaCadastroQuarto.dart';
import 'package:sa_clavison/telas/telaCadastroReserva.dart';
import 'package:sa_clavison/telas/telaCadastroReserva1.dart';
import 'package:sa_clavison/telas/telaConsultaCliente.dart';
import 'package:sa_clavison/telas/telaConsultaPagamento.dart';
import 'package:sa_clavison/telas/telaConsultaQuarto.dart';
import 'package:sa_clavison/telas/telaConsultaReserva.dart';
import 'package:sa_clavison/telas/telaLogin.dart';
import 'package:sa_clavison/telas/telaMenu.dart';
import 'package:sa_clavison/telas/telaPagamento.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/telaMenu',
      routes: {
        '/telaCadastroCliente': (context) => TelaCadastroCliente(),
        '/telaCadastroQuarto': (context) => TelaCadastroQuarto(),
        '/telaCadastroReserva': (context) => TelaCadastroReserva(),
        '/telaCadastroReserva1': (context) => TelaCadastroReserva1(),
        '/telaPagamento': (context) => TelaPagamento(),
        '/telaConsultaCliente': (context) => TelaConsultaCliente(),
        '/telaConsultaPagamento': (context) => TelaConsultaPagamento(),
        '/telaConsultaQuarto': (context) => TelaConsultaQuarto(),
        '/telaConsultaReserva': (context) => TelaConsultaReserva(),
        '/telaCadastroPagamento': (context) => TelaCadastroPagamento(),
        '/telaLogin': (context) => TelaLogin(),
        '/telaMenu': (context) => TelaMenu(),
      },
    );
  }
}
