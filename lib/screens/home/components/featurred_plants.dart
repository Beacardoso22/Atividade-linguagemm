
import 'package:flutter/material.dart';

import '../../../constants.dart';
//Biblioteacs necessárias do flutter

class FeaturedPlants extends StatelessWidget {
  /*classe com o nome FeaturedPlants que se estende
para cria um widget imutavel*/
  const FeaturedPlants({
    //contrutor da classe FeaturedPlants
    Key key,
    //parâmetro opcional
  }) : super(key: key);
  //chama o construtor da classe

  @override
  Widget build(BuildContext context) {
    //metodo build controi a hierarquia de widgets
    return SingleChildScrollView(
      //retorna os widgets, é um widget que permite a rolagem do conteúdo
      scrollDirection: Axis.horizontal,
      //rolagem na horizontal
      child: Row(
        //organiza os widget
        children: <Widget>[
          //lista de widget que serão colocados dentro do row
          FeaturePlantCard(
            //widget personalizado
            image: "assets/images/bottom_img_1.png",
            //local onde está a imagem
            press: () {},
            //função de callback vazia que será chamada
          ),
          FeaturePlantCard(
            //define a imagem que será exibida
            image: "assets/images/bottom_img_2.png",
            press: () {},
            ////define a função de callback vazia , será chamanda quando acontecer uma ação com ela
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  //classe com o nome FeaturePlantCard que se extende
  //para um widget imutavel
  const FeaturePlantCard({
    //contrutor da calsse FeaturePlantCard
    Key key,
    //parâmetro opcional
    this.image,
    this.press,
  }) : super(key: key);
  //chama o construtor da classe
  final String image;
  //declara a variavel image(caminho da imagem)
  final Function press;
  //declara a variavel press(que tem a função de callback)

  @override
  Widget build(BuildContext context) {
    //criando um widget imutavel
    Size size = MediaQuery.of(context).size;
    //dimensões da tela
    return GestureDetector(
      //usado para ter interação
      onTap: press,
      //configura a funação callback
      child: Container(
        //um widget que define uma caixa retangular
        margin: EdgeInsets.only(
          //define as margens do container
          left: kDefaultPadding,
          //margem a esquerda
          top: kDefaultPadding / 2,
          //margem na parte inferior
          bottom: kDefaultPadding / 2,
          //uma constante definida em outro lugar do código
        ),
        width: size.width * 0.8,
        //largura
        height: 185,
        //altura
        decoration: BoxDecoration(
          //decoração do container
          borderRadius: BorderRadius.circular(10),
          //borda arredondaad
          image: DecorationImage(
            //imagem definida como DecorationImage
            fit: BoxFit.cover,
            //configura a imagem de fundo
            //imagem deve ser ajustada para preencher completamente o container
            image: AssetImage(image),
            //define que a será usada como fundo do container
          ),
        ),
      ),
    );
  }
}
