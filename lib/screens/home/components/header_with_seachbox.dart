import 'package:flutter/material.dart';
//importa o pacote principal do Flutter, que fornece os componentes e funcionalidades básicas para construir interfaces de usuário.

import 'package:flutter_svg/flutter_svg.dart';
//está sendo importado o pacote flutter_svg, que é usado para exibir imagens SVG no Flutter.

import '../../../constants.dart';
//importa um arquivo de constantes localizado em um diretório superior.

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
// É uma subclasse de StatelessWidget, o que significa que é um widget cuja renderização não depende de um estado interno.

    Key key,
    @required this.size,
    //Possui um construtor que recebe um parâmetro obrigatório size do tipo Size.
   //Sobrescreve o método build para construir a interface do widget.
  }) : super(key: key);

  final Size size;
 //Parâmetros do construtor da classe, que são usados para especificar uma chave única para o widget e o tamanho do widget, respectivamente.
  @override
  Widget build(BuildContext context) {
  //Sobrescreve o método build da classe StatelessWidget para construir a interface do widget.
    return Container(
    //É um widget que fornece um recipiente retangular flexível. Ele contém outros widgets e define suas propriedades, como margem e altura.
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      //Define a margem do container, com uma margem inferior de kDefaultPadding * 2.5.
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        // É um widget que empilha seus filhos um em cima do outro. Neste caso, é usado para empilhar outros widgets no container.
        children: <Widget>[
          Container(
            //É um container que define a aparência do cabeçalho. Ele tem uma cor de fundo kPrimaryColor e bordas arredondadas na parte inferior.

            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            //Define o preenchimento interno do container.
            height: size.height * 0.2 - 27,
            //Define a altura do container como 80% da altura total do cabeçalho.
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              //É um widget que organiza seus filhos em uma linha horizontal. Neste caso, é usado para alinhar os elementos de texto e imagem no cabeçalho.
              children: <Widget>[
                Text(
                  'Hi Uishopy!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                //Exibe um texto "Hi Uishopy!" com o estilo do tema atual.
                Spacer(),
                //É um widget flexível que preenche o espaço disponível entre os outros widgets na linha.
                Image.asset("assets/images/logo.png")
                //Exibe uma imagem do arquivo de origem "assets/images/logo.png".
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            //cordenadas
            left: 0,
            //cordenadas
            right: 0,
            //cordenadas
            child: Container(
              //widget que envolve o conteúdo da caixa de pesquisa
              //É um container posicionado na parte inferior do cabeçalho, usado para criar a caixa de pesquisa.
              alignment: Alignment.center,
              // Define a posição do container como centralizada.
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              // Definem as margens interna e externa do container.
              height: 54,
              //Define a altura do container como 54 pixels.
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  //define a sombra do container
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                //define o conteúdo do container
                children: <Widget>[
                  Expanded(
                    //usado para ocupar o espaço restante no row
                    child: TextField(
                      //permite digitar texto
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          //estilo do texto
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
