// Importa la librería de Material Design para Flutter.
import 'package:flutter/material.dart';

// Función que crea y devuelve un widget de texto con un estilo específico.
// Recibe un String 'texto' como argumento, que será el texto mostrado.
Widget crearTexto(String texto) {
  // Retorna un widget Text con el texto proporcionado y un estilo definido.
  return Text(
    texto, // El texto que se mostrará en el widget.
    style: TextStyle(
      fontSize: 20, // Tamaño de la fuente del texto.
      fontWeight: FontWeight.bold, // Grosor de la fuente del texto.
      color: Colors.blue, // Color del texto.
    ),
  );
}

// Función que construye una columna de widgets.
// Recibe una lista de widgets como argumento.
Widget crearColumna(List<Widget> widgets) {
  // Retorna un widget Column que organiza los widgets verticalmente.
  return Column(
     // Los widgets que se mostrarán en la columna.
    crossAxisAlignment: CrossAxisAlignment.start,
    children: widgets, // Alineación horizontal de los widgets.
  );
}