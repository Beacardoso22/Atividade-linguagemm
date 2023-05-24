//importando bibliotecas
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';
//widgets e classes ligados ao design do flutter

class Body extends StatelessWidget {
//classe Body estende a StatelessWidget algo que não
//pode ser mudado
  @override
  //usado quando está modificando algum metodo
  Widget build(BuildContext context) {
    //construtor da interface build obrigatório para dar certo

    Size size = MediaQuery.of(context).size;
    //tamanho da tela
    return SingleChildScrollView(
      //retorna um widget
      //permite a rolagem de conteúdo caso
      //exceda o tamanho da tela
      child: Column(
        //cria uma cola que vai ser empilhada na vertical
        children: <Widget>[
          //mostra um widget
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          //mostra um widget chamado ImageAndIcons
          //Com um titulo Angelica, Rússia
          Row(
            //cria uma linha de widgetsa
            children: <Widget>[
              //mostra um widget
              SizedBox(
                //define um espaço de tamanho personalizado na linha
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  //cria um botão retangular
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  //sem sombras
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      //exibe o texto buy now
                    ),
                  ),
                ),
              ),
              Expanded(
                //cria um botão expansaível
                child: FlatButton(
                  //cria um botão expansível
                  onPressed: () {},
                  child: Text("Description"),
                  //exibe esse texto dentro do botão
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
