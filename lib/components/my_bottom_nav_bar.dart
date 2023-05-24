//importando algumas coisas
import 'package:flutter/material.dart';
//contém widgets ligados ao design, ajudará na construção da interface
import 'package:flutter_svg/flutter_svg.dart';
//para exibir imagens em SVG no flutter
import '../constants.dart';
//é um bliblioteca de estilo, cores, estilos e tamanhos para deixar mais separado e facilitar a reutilizar o códido

class MyBottomNavBar extends StatelessWidget {
  /*Classe com seu nome MyBottomNavBar que
  se extende com StatelessWidget vai passar ser um widget
  e não vai poder mexer na tela do usuário*/
  const MyBottomNavBar({
    /*contrutor da classe com o nome MyBottomNavBar*/
    Key key,
    //parâmentro key opcional
  }) : super(key: key);
  //chama o construtor da classe e passa o parâmetro para ele

  @override
  //usado para mostrar que está substituindo um metodo na clase pai
  Widget build(BuildContext context) {
    /*contrutor da interfase, o método obrigatório de um widget
    o parâmentro dentro é usado para acessar as informações*/
    return Container(
      //retornando o container que vai representar a barra de navegação na parte inferior
      padding: EdgeInsets.only(
        /*define o espaçamento do container, 
        EdgeInsets faz o tipo de espaçamento se é para a direita ou esqueda*/
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
        //as direções sendo multíplicados por 2 através da constante kDefaultPadding
      ),
      height: 80,
      //altura
      decoration: BoxDecoration(
        //decoração
        color: Colors.white,
        //cor de fundo
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
            //uma propriedade de desfoque
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
            /*e uma subclasse do container
            que contem o row que contém 3 icones para navegação na barra 
            */
          ),
        ],
      ),
    );
  }
}
