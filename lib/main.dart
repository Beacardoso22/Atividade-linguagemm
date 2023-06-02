import 'package:flutter/material.dart';
//Importa o pacote Flutter Material, que contém classes e widgets para a criação de interfaces de usuário.
import 'package:plant_app/constants.dart';
//Importa um arquivo chamado constants.dart, que contém constantes utilizadas no aplicativo.
import 'package:plant_app/screens/home/home_screen.dart';
// Importa um arquivo chamado home_screen.dart, que contém a definição da tela inicial.

void main() {
  // A função principal que é executada quando o aplicativo é iniciado.
  runApp(MyApp());
  //Executa o método runApp para iniciar o aplicativo, passando uma instância de MyApp como o widget raiz.
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //Define uma classe chamada MyApp que herda de StatelessWidget, que é um widget imutável.
  @override
  Widget build(BuildContext context) {
    //Sobrescreve o método build, que constrói a árvore de widgets do aplicativo.
    return MaterialApp(
      // É um widget fornecido pelo pacote Flutter Material que configura o aplicativo com a estrutura básica de Material Design.
      debugShowCheckedModeBanner: false,
      //Define se o banner de modo de depuração deve ser exibido no canto superior direito do aplicativo. Nesse caso, está definido como falso para desativar o banner.
      title: 'Plant App',
      //Define o título do aplicativo.
      theme: ThemeData(
        //Define o tema do aplicativo, como as cores de fundo, cor principal, esquema de cores do texto, entre outros.
        scaffoldBackgroundColor: kBackgroundColor,
        //Define a cor de fundo do Scaffold, que é o widget básico para a estrutura de layout das telas. kBackgroundColor é uma constante definida no arquivo constants.dart e representa a cor de fundo desejada para o aplicativo.
        primaryColor: kPrimaryColor,
        //Define a cor primária do tema do aplicativo. kPrimaryColor é uma constante definida no arquivo constants.dart e representa a cor principal desejada para o aplicativo.
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        //Define o esquema de cores do texto do tema do aplicativo. Theme.of(context).textTheme retorna o esquema de cores de texto padrão do tema atual, e apply(bodyColor: kTextColor) aplica a cor kTextColor (uma constante definida no arquivo constants.dart) como a cor do corpo do texto em todo o aplicativo.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //Define a densidade visual do layout do aplicativo. VisualDensity.adaptivePlatformDensity é uma constante que ajusta a densidade visual de acordo com a plataforma em que o aplicativo está sendo executado, proporcionando uma aparência consistente em diferentes dispositivos e tamanhos de tela.
      ),
      home: HomeScreen(),
      //Define o tema do aplicativo, como as cores de fundo, cor principal, esquema de cores do texto, entre outros.
    );
  }
}
