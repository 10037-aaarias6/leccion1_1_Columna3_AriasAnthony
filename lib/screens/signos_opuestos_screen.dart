import 'package:flutter/material.dart';
import '../widgets/number_input_widget.dart';

class SignosOpuestosScreen extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signos Opuestos')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            NumberInputWidget(controller: num1Controller, label: 'Número 1'),
            SizedBox(height: 16),
            NumberInputWidget(controller: num2Controller, label: 'Número 2'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                int num1 = int.parse(num1Controller.text);
                int num2 = int.parse(num2Controller.text);
                bool signosOpuestos = (num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0);
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text(signosOpuestos ? 'Signos Opuestos' : 'No tienen signos opuestos'),
                  ),
                );
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
