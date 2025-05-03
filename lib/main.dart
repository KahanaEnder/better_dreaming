import 'package:flutter/material.dart';
// Import no utilizado eliminado: 'package:flutter/rendering.dart';




void main() { //Main
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
      debugShowCheckedModeBanner: false,
      title: 'Better Dreaming', // Considera un título más neutro
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 0, 92)),
        //colorScheme: ColorScheme.dark(),
        colorScheme: ColorScheme.dark(),
        //colorScheme: ColorScheme.light(),
        useMaterial3: true, // Recomendado para nuevos proyectos Flutter
      ),
      //darkTheme: ThemeData.dark(),
      //highContrastTheme: ThemeData.light(),
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
              style: Theme.of(context).textTheme.displayLarge,
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



        FloatingActionButton.small(
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
          onPressed: () => _mostrarDialogo(context,titulo,contenido),
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
