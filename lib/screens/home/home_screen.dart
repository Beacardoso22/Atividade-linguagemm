import 'package:flutter/material.dart';
//Biblioteca padrão do Flutter que contém os widgets básicos de UI.
import 'package:flutter_svg/svg.dart';
//Pacote utilizado para renderizar imagens SVG no Flutter.
import 'package:plant_app/components/my_bottom_nav_bar.dart';
//Importa um componente personalizado de uma barra de navegação inferior.
import 'package:plant_app/screens/home/components/body.dart';
//Importa o componente Body que representa o conteúdo principal da tela inicial.

class HomeScreen extends StatelessWidget {
  //Indica que essa classe não tem estado interno, ou seja, não pode ser alterada após a sua construção.
  @override
  Widget build(BuildContext context) {
    // É o método obrigatório que cria a estrutura da tela, retornando um widget.
    return Scaffold(
      //É um widget que fornece a estrutura básica para uma tela do Flutter, incluindo AppBar, body e bottomNavigationBar.
      appBar: buildAppBar(),
      //É um widget que representa a barra superior da tela.
      body: Body(),
      //É um componente personalizado importado do arquivo 'body.dart', que representa o conteúdo principal da tela inicial.
      bottomNavigationBar: MyBottomNavBar(),
      //É um componente personalizado importado do arquivo 'my_bottom_nav_bar.dart', que representa a barra de navegação inferior.
    );
  }

  AppBar buildAppBar() {
    //
    return AppBar(
      //
      elevation: 0,
      // Define a elevação da barra, neste caso, definida como 0 para não ter sombra.
      leading: IconButton(
        //Define um widget que fica no lado esquerdo da AppBar, neste caso, um IconButton com um ícone de menu.
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        //Define o ícone do botão como um arquivo SVG localizado em "assets/icons/menu.svg". O pacote flutter_svg é importado no início do código para permitir o uso de arquivos SVG.
        onPressed: () {},
        //Define o que acontece quando o botão é pressionado. Neste caso, uma função vazia () {} é fornecida, o que significa que nada acontecerá quando o botão for pressionado.
      ),
    );
  }
}
