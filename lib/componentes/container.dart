import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ColocarContainer extends StatefulWidget {
  const ColocarContainer({super.key});

  @override
  State<ColocarContainer> createState() => _ColocarContainerState();
}

class _ColocarContainerState extends State<ColocarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
             width: 260,
             height: 230,
             decoration: BoxDecoration(
               border: Border.all(color: const Color.fromARGB(255, 194, 193, 193), width: 1.0),
               borderRadius: BorderRadius.circular(5.0),
             ),
             child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            width: 250,
                            height: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('/imgs/imagem1.jpg'),
                                fit: BoxFit.fill
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
                          child: Row(
                            children: const [
                              Text('Descrição: Insira uma descrição aqui!'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
                          child: Row(
                            children: const [
                              Text('Preço: Insira o preço aqui!'),
                            ],
                          ),
                        ),
                      ],
                    ),
           );
  }
}