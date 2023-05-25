import 'package:flutter/material.dart';
//Importa o pacote flutter/material.dart, que contém as classes e widgets do Flutter para construir interfaces de usuário.

import '../../../constants.dart';
// Importa um arquivo chamado constants.dart localizado duas pastas acima do local atual. Provavelmente, este arquivo contém constantes ou variáveis globais utilizadas no aplicativo.

class TitleAndPrice extends StatelessWidget {
//Define uma classe chamada TitleAndPrice que estende StatelessWidget, ou seja, é um widget imutável que não possui estado interno.
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);
  //O construtor da classe TitleAndPrice recebe as seguintes variáveis como argumentos opcionais: title (título), country (país) e price (preço). O parâmetro Key key é usado para identificar de forma única o widget.

  final String title, country;
  //Declaração de variáveis finais (imutáveis) do tipo String chamadas title e country.
  final int price;
  //Declaração de uma variável final (imutável) do tipo int chamada price.

  @override
  Widget build(BuildContext context) {
  //A função build é obrigatória em todos os widgets do Flutter. Ela constrói a árvore de widgets que compõem a interface do usuário. Recebe um objeto BuildContext como argumento e retorna um widget.
    return Padding(
  //É um widget que envolve outros widgets e adiciona preenchimento em torno deles.
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      //Define um preenchimento simétrico horizontal usando a constante kDefaultPadding do arquivo constants.dart. O preenchimento será aplicado nas laterais esquerda e direita.
      child: Row(
      //É um widget que organiza seus filhos em uma linha horizontal.
        children: <Widget>[
          RichText(
          //É um widget que exibe texto com estilos diferentes dentro dele.
            text: TextSpan(
              children: [
                TextSpan(
                //É uma classe que define um trecho de texto com um estilo específico dentro de um RichText.
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      // Acessa o estilo de texto com a chave headline4 definido no tema atual.
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                      //Um método que retorna uma cópia do estilo de texto com as alterações especificadas. Aqui, a cor do texto é definida como kTextColor e o peso da fonte como FontWeight.bold
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                  // Define o peso da fonte como 300.
                  fontSize: 20,
                  //Define o tamanho da fonte como 20.
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w300,
                  // Define o peso da fonte como 300.
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          //É um widget flexível que ocupa o espaço disponível restante na linha.
          Text(
          "\$$price",
            //O símbolo $ é precedido por outra barra invertida para ser exibido literalmente como um caractere. Isso é usado para exibir o valor da variável price no formato de uma string.
            style: Theme.of(context)
            //É um widget que fornece um tema para seus descendentes. O tema define a aparência visual de um aplicativo.
            .textTheme
            .headline5
            //Acessa o estilo de texto com a chave headline5 definido no tema atual.
            .copyWith(color: kPrimaryColor),
            //Um método que retorna uma cópia do estilo de texto com as alterações especificadas. Aqui, a cor do texto é definida como kTextColor e o peso da fonte como 
          )
        ],
      ),
    );
  }
}
