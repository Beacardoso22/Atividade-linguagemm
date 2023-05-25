//importando bibliotecas
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
//classe com o nome ImageAndIcons que se extende
//mostrando  um widget  
  const ImageAndIcons({
    //contrutor
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  //declara uma variavel size

  @override
  Widget build(BuildContext context) {
    //constroi a interface do usuário
    return Padding(
      //return o widget

      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      //cria um objeto
      child: SizedBox(
        //define um espaço
        height: size.height * 0.8,
        //define a altura 
        child: Row(
          //cria uma linha quando contem dois widget
          children: <Widget>[
            Expanded(
              //expande para preencher o espaço
              child: Padding(
                padding:
                //preencimento lateral
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                    //espaço vazio
                child: Column(
                  //conteúdo principal
                  children: <Widget>[
                    //uma lista de widgets que serão colocados dentro da coluna
                    Align(
                      //alinha o widget
                      alignment: Alignment.topLeft,
                      //alinhamento
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                            //define preenchimento na horizontal
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    //widget que preenche o espaço disponível
                    IconCard(icon: "assets/icons/sun.svg"),
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
                    //icones personalizados
                  ],
                ),
              ),
            ),
            Container(
              //decoração do fundo
              height: size.height * 0.8,
              //define altura
              width: size.width * 0.75,
              //alrgura
              decoration: BoxDecoration(
                //estilo da decoração do container
                borderRadius: BorderRadius.only(
                  //cantos arredondados
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  //define sombra
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  //define a imagem de fundo
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
                //imagem para preencher o container
              ),
            ),
          ],
        ),
      ),
    );
  }
}
