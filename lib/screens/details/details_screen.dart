//importando bibliotecas
import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  /*classe com o nome DetailsScreen estendendo
  para ter um widget*/
  @override
  Widget build(BuildContext context) {
    //constroi a interface do usuário
    return Scaffold(
      //retorna como estrutura principal
      body: Body(),
      //define o conteúdo principal do scaffold
    );
  }
}
