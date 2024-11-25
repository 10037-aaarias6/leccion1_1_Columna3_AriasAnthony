import 'package:flutter/material.dart';
import 'screens/signos_opuestos_screen.dart';
import 'screens/diferencia_screen.dart';
import 'screens/orden_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leccion 1.1',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signos-opuestos': (context) => SignosOpuestosScreen(),
        '/diferencia': (context) => DiferenciaScreen(),
        '/orden': (context) => OrdenScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leccion 1.1 - Anthony Arias - Columna 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/signos-opuestos'),
              child: Text('Calcular Signos Opuestos'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/diferencia'),
              child: Text('Ver Diferencia'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/orden'),
              child: Text('Ver Orden'),
            ),
          ],
        ),
      ),
    );
  }
}
