import 'package:flutter/material.dart';
//mportação do pacote flutter/material.dart, que contém as classes necessárias para criar a interface do usuário em Flutter.

import '../../../constants.dart';
//Importação de um arquivo chamado constants.dart que deve estar localizado em um diretório dois níveis acima do diretório atual. Esse arquivo provavelmente contém constantes utilizadas no aplicativo.

class TitleWithMoreBtn extends StatelessWidget {
  //Declaração da classe TitleWithMoreBtn, que é um widget sem estado (stateless) que será utilizado para exibir um título com um botão "More" ao lado. Esse widget recebe dois parâmetros obrigatórios: title (o título a ser exibido) e press (a função a ser executada quando o botão for pressionado).
  const TitleWithMoreBtn({
  // O construtor da classe TitleWithMoreBtn que define as propriedades key, title e press como parâmetros nomeados opcionais. A chamada a super(key: key) invoca o construtor da classe pai (superclasse) StatelessWidget.
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
  //O método build é obrigatório em todos os widgets do Flutter. Aqui é onde a interface do usuário é construída, retornando uma árvore de widgets que define a aparência e o comportamento do widget.
    return Padding(
    //É um widget que adiciona um espaçamento ao redor do seu único filho. Nesse caso, o filho é um Row que contém outros widgets.
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        //É um widget que organiza seus filhos em uma linha horizontal. Ele contém outros widgets, como TitleWithCustomUnderline, Spacer e FlatButton.
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          //É um widget personalizado que exibe um título com uma linha personalizada embaixo. Ele recebe um parâmetro obrigatório text (o texto do título).
          Spacer(),
          //É um widget flexível que expande para preencher o espaço disponível. Nesse caso, o Spacer() é utilizado para ocupar o espaço restante entre o TitleWithCustomUnderline e o botão "More".
          FlatButton(
            //É um widget de botão retangular que pode ser pressionado. Ele é utilizado para exibir o botão "More" ao lado do título. 
            shape: RoundedRectangleBorder(
              //Define a forma do botão, neste caso, um retângulo com bordas arredondadas. Utiliza o RoundedRectangleBorder com um BorderRadius.circular(20) para definir o raio dos cantos.
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            //Define a cor de fundo do botão, utilizando a cor kPrimaryColor (provavelmente definida em constants.dart).
            onPressed: press,
            //A função a ser executada quando o botão é pressionado. Utiliza o valor do parâmetro press recebido pelo construtor.
            child: Text(
              //O conteúdo do botão, neste caso, um Text com o texto "More". O estilo do texto é definido para ter uma cor branca.
              "More",
              style: TextStyle(color: Colors.white),
              //é usada para definir o estilo do texto dentro do botão "More". 
              //Define a cor do texto como branca, utilizando a cor Colors.white. Isso significa que o texto "More" será exibido em branco.
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  //Declaração da classe TitleWithCustomUnderline, que é um widget sem estado (stateless) utilizado para exibir um título com uma linha personalizada embaixo.
  const TitleWithCustomUnderline({
    //O construtor da classe TitleWithCustomUnderline define os parâmetros key e text como parâmetros nomeados opcionais. Ele usa a sintaxe de inicialização rápida (:) para atribuir os valores recebidos aos respectivos campos da classe. A chamada super(key: key) invoca o construtor da classe pai (superclasse) StatelessWidget.
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  // Declaração do campo text, que é do tipo String e armazena o texto do título a ser exibido. O campo é marcado como final, o que significa que seu valor não pode ser alterado após a inicialização.

  @override
  Widget build(BuildContext context) {
    return Container(
      //É um widget genérico que pode conter outros widgets e personalizar seu próprio layout. Nesse caso, o Container é usado para definir a altura do título e empilhar o texto com a linha personalizada.
      height: 24,
      //Define a altura do Container como 24 pixels.
      child: Stack(
        //O Container contém um Stack, que é um widget que empilha seus filhos um em cima do outro. Nesse caso, o Stack tem dois filhos: o Padding com o Text do título e o Positioned com a linha personalizada.
        children: <Widget>[
          Padding(
            // É um widget que adiciona um espaçamento interno ao seu filho. Nesse caso, o filho é o Text do título.
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            //Define um espaçamento à esquerda para o Text do título. O valor do espaçamento é obtido de uma constante chamada kDefaultPadding e dividido por 4.
            child: Text(
              // É um widget que exibe um texto na interface do usuário.
              text,
              //Recebe o texto a ser exibido, que é o valor do campo text do widget TitleWithCustomUnderline.
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // Define o estilo do texto do título. O tamanho da fonte é definido como 20 e o peso da fonte como negrito (FontWeight.bold).
            ),
          ),
          Positioned(
            //É um widget que posiciona seu filho em uma posição específica dentro do Stack.
            bottom: 0,
            //Define que o Container dentro do Positioned ocupará todo o espaço horizontal disponível e ficará posicionado na parte inferior.
            left: 0,
            right: 0,
            child: Container(
             // O Positioned contém um Container que representa a linha personalizada.
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              //Define uma margem à direita para o Container da linha. O valor da margem é obtido de uma constante chamada kDefaultPadding e dividido por 4.
              height: 7,
              //Define a altura da linha como 7 pixels.
              color: kPrimaryColor.withOpacity(0.2),
              //Define a cor da linha como uma versão com 20% de opacidade da cor kPrimaryColor (provavelmente definida em constants.dart).
            ),
          )
        ],
      ),
    );
  }
}
