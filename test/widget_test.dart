// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
//importa o pacote Flutter responsável por fornecer os widgets e funcionalidades básicas de material design.
import 'package:flutter_test/flutter_test.dart';
//importa o pacote Flutter Test, usado para escrever testes de unidade e widget.

import 'package:plant_app/main.dart';
// importa o arquivo main.dart do pacote plant_app, que contém a definição do aplicativo.

void main() {
  //é a função principal que será executada ao iniciar o teste. É aqui que você registra os testes a serem executados.
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    //define um teste de widget chamado 'Counter increments smoke test'. O teste recebe um objeto WidgetTester que permite interagir e testar widgets. O modificador async indica que o teste é assíncrono.
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    //constrói o aplicativo usando o widget MyApp() e aguarda a conclusão da renderização. O método pumpWidget é usado para renderizar a árvore de widgets.

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    // verifica se o texto '0' é encontrado no widget. O método find.text retorna um objeto Finder que pode ser usado para procurar widgets específicos. O método findsOneWidget verifica se o widget é encontrado.
    expect(find.text('1'), findsNothing);
    //verifica se o texto '1' não é encontrado no widget.

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    //simula o toque no ícone de adição (Icons.add) no widget. O método find.byIcon retorna um Finder que localiza um widget pelo ícone.
    await tester.pump();
    //aguarda a conclusão da animação ou da ação desencadeada pelo toque no ícone.
    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    //verifica se o texto '0' não é encontrado no widget.
    expect(find.text('1'), findsOneWidget);
    // verifica se o texto '1' é encontrado no widget, indicando que o contador foi incrementado corretamente.
  });
}
