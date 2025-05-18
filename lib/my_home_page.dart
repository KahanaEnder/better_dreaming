import 'package:flutter/material.dart';
import 'package:better_dreaming/learning.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String titulo = "Sleep Better";
  String contenido = "Try going to the bed earlier than you are used to it";
//Funciones
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
    setState(() {
      _counter = 777;
    });
  }

void _mostrarDialogo(BuildContext context,String titulo, String contenido) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(titulo),
        content: Text(contenido),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Cierra el diálogo
            },
            child: Text('Cerrar'),
          ),
        ],
      );
    },
  );
}




  @override
  Widget build(BuildContext context) {
    var textoComoVariable = Text(
              'Sueños profundos:', // Texto cambiado
              style: Theme.of(context).textTheme.displayMedium,
            );



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              textoComoVariable,
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              crearTexto("texto"),
              crearColumna([Text("data"),Text("data"),Text("data")],),
            ],
          ),
        ),
      ),
      // Se reemplazó el único FloatingActionButton con una fila de botones




      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20.0, 
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
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
            child: const Icon(Icons.print),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Opcional: Ajusta la ubicación del botón



      persistentFooterButtons: [



        FloatingActionButton.large(
          onPressed: () {
            titulo = "Duerme Mejor";
            contenido = "Intenta ir a la cama antes de lo que estas acostumbrado";
            _mostrarDialogo(context, titulo, contenido);
          },
          tooltip: 'Botón chiquito',
          heroTag: 'Small Button',
          backgroundColor: Colors.yellowAccent.shade400,
          foregroundColor: Colors.purple[900],
          autofocus: true,
          hoverColor: Colors.green.shade600,
          shape: OvalBorder(),
          child: const Icon(Icons.donut_small),
        ),



        FloatingActionButton.large(
          onPressed: () => _mostrarDialogo(context,titulo = "Sleep Better",contenido = "Try going to the bed earlier than you are used to it"),
          tooltip: "Botón grande",
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          foregroundColor: Colors.purple.shade900,
          hoverColor: Colors.amber,
          shape: BeveledRectangleBorder(),
          mouseCursor: SystemMouseCursors.text,
          child: const Icon(Icons.donut_large),
        )
      ],
    );
  }
}
