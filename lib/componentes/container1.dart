import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContainerCadastro1 extends StatefulWidget {
  const ContainerCadastro1({super.key});

  @override
  State<ContainerCadastro1> createState() => _ContainerCadastro1State();
}

class _ContainerCadastro1State extends State<ContainerCadastro1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('/imgs/imagem1.jpg'),
                                  fit: BoxFit.fill
                                ),
                              ),
                ),
              );
  }
}