import 'package:flutter/material.dart';

void main() {
  runApp(const AplicacaoBancaria());
}

class AplicacaoBancaria extends StatelessWidget {
  const AplicacaoBancaria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Contas'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Conta Corrente'),
              subtitle: Text('Saldo disponível: R\$ 1.250,00'),
              textColor: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.savings),
              title: Text('Conta Poupança'),
              subtitle: Text('Saldo disponível: R\$ 5.000,00'),
              textColor: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Cartão de Crédito'),
              subtitle: Text('Limite disponível: R\$ 1.000,00'),
              textColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
