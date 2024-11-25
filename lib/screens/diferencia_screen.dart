import 'package:flutter/material.dart';
import '../widgets/number_input_widget.dart';

class DiferenciaScreen extends StatelessWidget {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diferencia')),
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
                int diferencia = (num1 - num2).abs();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('Diferencia: $diferencia'),
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
