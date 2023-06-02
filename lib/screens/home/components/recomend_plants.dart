import 'package:flutter/material.dart';
//Importa o pacote flutter/material.dart, que contém as classes e widgets do Flutter para construir interfaces de usuário bonitas e responsivas.
import 'package:plant_app/screens/details/details_screen.dart'
//Importa o arquivo details_screen.dart que contém a definição da tela de detalhes do aplicativo.
import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
//Esta é uma classe que estende StatelessWidget, o que significa que é um widget que não mantém estado interno. É um componente que exibe uma lista horizontal de cartões de planta recomendados.
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //O método build é onde a interface de usuário do componente é construída. Ele recebe um objeto BuildContext que fornece informações sobre a árvore de widgets.
    return SingleChildScrollView(
      // É um widget que permite a rolagem de seu único filho quando o espaço disponível não é suficiente para exibi-lo completamente.
      scrollDirection: Axis.horizontal,
      //Define a direção de rolagem para horizontal.
      
      child: Row(
      //É um widget que exibe seus filhos em uma única linha horizontal.
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            // Define o caminho da imagem para exibir no cartão de planta recomendado. A imagem deve estar localizada em assets/images/image_1.png.
            title: "Samantha",
            //Define o título do cartão de planta recomendado como "Samantha".
            country: "Russia",
            //Define o país do cartão de planta recomendado como "Russia".
            price: 440,
            //Define o preço do cartão de planta recomendado como 440.
            press: () {
              //Define uma função anônima para a propriedade press, que é chamada quando o cartão de planta recomendado é pressionado. Essa função usa Navigator.push para navegar para a tela DetailsScreen. Quando o usuário pressiona o cartão, a função press é executada e chama Navigator.push para empurrar a tela DetailsScreen na pilha de navegação.
              Navigator.push(
                context,
                //O context é fornecido como o primeiro argumento para Navigator.push, pois é necessário para a navegação. 
                MaterialPageRoute(
                  // é usado para construir uma nova rota para a tela DetailsScreen.
                  builder: (context) => DetailsScreen(),
                  //é uma função que retorna a tela que deve ser exibida quando a rota é navegada.
                ),
              );
            },
          ),
          RecomendPlantCard(
          //É um widget personalizado que representa um cartão de planta recomendado. É usado para exibir as informações de uma planta recomendada, como imagem, título, país e preço. É colocado dentro de uma Row para exibir vários cartões de planta recomendados.
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
//Esta é uma classe que estende StatelessWidget e define o widget personalizado para um cartão de planta recomendado.
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  // Define as propriedades image, title e country para armazenar as informações de uma planta recomendada.
  final int price;
  //Define a propriedade price para armazenar o preço da planta recomendada.
  final Function press;
  // Define a propriedade press para armazenar uma função que será chamada quando o cartão de planta for pressionado.
  @override
  Widget build(BuildContext context) {
  //O método build é onde a interface de usuário do componente é construída. Ele recebe um objeto BuildContext que fornece informações sobre a árvore de widgets.
    Size size = MediaQuery.of(context).size;
    //Obtém o tamanho da tela usando o objeto MediaQuery e armazena na variável size. Isso é usado para definir a largura do cartão de planta. 
    return Container(
    //É um widget que permite a criação de um contêiner retangular com várias propriedades, como margem, preenchimento, tamanho e decoração.
      margin: EdgeInsets.only(
        //Define as margens do contêiner
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      //Define a largura do contêiner como 40% da largura total da tela.
      child: Column(
        // É um widget que organiza seus filhos em uma única coluna vertical. Neste caso, é usado para colocar a imagem do cartão de planta acima do rodapé.
        children: <Widget>[
          Image.asset(image),
          //Exibe uma imagem com base no caminho da imagem fornecido pela propriedade image.
          GestureDetector(
            // É um widget que detecta gestos, como toques, arrastar e soltar. Neste caso, é usado para envolver o contêiner do cartão de planta e detectar quando ele for pressionado.
            onTap: press,
            //Define a função press para ser chamada quando o cartão de planta for pressionado. A função é fornecida como um parâmetro para o onTap do GestureDetector.
            child: Container(
              //É um contêiner que envolve o texto no rodapé do cartão de planta.
              padding: EdgeInsets.all(kDefaultPadding / 2),
              //Define o preenchimento interno do contêiner, ou seja, o espaçamento entre o texto e as bordas do contêiner.
              decoration: BoxDecoration(
                color: Colors.white,
                //Define a decoração do contêiner, que inclui a cor de fundo, os cantos arredondados e a sombra.
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    // É um widget que exibe texto com formatação rica, ou seja, permite diferentes estilos de texto dentro de um único widget.
                    text: TextSpan(
                      //É um widget que define um fragmento de texto com uma determinada formatação. É usado para definir o título e o país no rodapé do cartão de planta.
                      children: [
                        TextSpan(
                          //exibe o título do cartão de planta em letras maiúsculas toUpperCase e utiliza o estilo de texto button do tema atual do aplicativo Theme.ofcontext.textTheme.button.
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          //O segundo TextSpan exibe o país do cartão de planta em letras maiúsculas e define a cor como kPrimaryColor.withOpacity 0.5, que provavelmente é uma cor do aplicativo com opacidade reduzida.
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  // É um widget que ocupa o espaço restante disponível. É usado para empurrar o preço para a extremidade direita do rodapé do cartão de planta.
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
