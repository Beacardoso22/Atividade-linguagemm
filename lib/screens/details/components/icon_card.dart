//importando bibliotecas
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  /*classe chamada IconCard se estender indicando 
  que é um widget*/
  const IconCard({
  //construtor IconCard que recebe um parâmetro icon
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;
  //declara uma variável icon

  @override
  Widget build(BuildContext context) {
//controi a interface do usuário para o widget
    Size size = MediaQuery.of(context).size;
    //tamanho da tela
    return Container(
      //retunr o widget raiz
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      //define margem
      padding: EdgeInsets.all(kDefaultPadding / 2),
      //preenchimento interno
      height: 62,
      //altura
      width: 62,
      //largura
      decoration: BoxDecoration(
        //define a aparência do container
        color: kBackgroundColor,
        //cor de fundo
        borderRadius: BorderRadius.circular(6),
        //borda circular
        boxShadow: [
          //lista de sombras para colocar no container
          BoxShadow(
            //sombra
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            //sombra
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),

      //exibe o icone
    );
  }
}
