import 'package:flutter/material.dart';
// Import no utilizado eliminado: 'package:flutter/rendering.dart';
import 'learning.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  /*Comentario con multiples lineas*/
    return NuevoWidget();
  }
}

class NuevoWidget extends StatelessWidget {
  const NuevoWidget({
    super.key,
  });
//Comentario normal, aca finaliza la creacion que comienza desde el override hecho con extract widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Dreaming', // Considera un título más neutro
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 0, 92)),
        useMaterial3: true, // Recomendado para nuevos proyectos Flutter
      ),
      home: const MyHomePage(title: 'Better Dreaming'), // Título cambiado
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
  void _tryPrintSomething() {
    print("Cuenta");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sueños profundos:', // Texto cambiado
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // Se reemplazó el único FloatingActionButton con una fila de botones
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Ajusta la alineación según sea necesario
        children: <Widget>[
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrementar',
            heroTag: 'decrement', // heroTag único
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reiniciar',
            heroTag: 'reset', // heroTag único
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Incrementar',
            heroTag: 'increment', // heroTag único
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _tryPrintSomething,
            tooltip: 'Printear',
            heroTag: 'printer', // heroTag único
            child: const Icon(Icons.account_circle),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Opcional: Ajusta la ubicación del botón
    );
  }
}
