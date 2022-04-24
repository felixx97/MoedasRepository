import 'package:flutter/material.dart';
import 'package:flutter_application_5_cripto/repositories/moeda_repository.dart';

class MoedasPage extends StatelessWidget {
  MoedasPage({Key? key}) : super(key: key);

  final tabela = MoedaRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cripto Moedas"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: Image.asset(tabela[moeda].icone),
            title: Text(tabela[moeda].nome),
            trailing: Text(tabela[moeda].preco.toString()),
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
