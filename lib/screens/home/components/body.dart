//importando biblioteca
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  /*classe com o nome Body estende para construi
  o widget para o usuário*/
  @override
  Widget build(BuildContext context) {
    //construtor do widget do usuário
    Size size = MediaQuery.of(context).size;
    //tamanho da tela
    return SingleChildScrollView(
      //returna como widget principal
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //lista de widgets que serão exibidos 
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          //widget personalizado
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          //titulo personalizado que exibe
          RecomendsPlants(),
          //mostra uma lista de coisas recomendadas
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          //titulo do botão
          FeaturedPlants(),
          //destaque
          SizedBox(height: kDefaultPadding),
          //espaçamento
        ],
      ),
    );
  }
}
