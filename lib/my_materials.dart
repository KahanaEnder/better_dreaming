import 'package:better_dreaming/my_home_page.dart';
import 'package:flutter/material.dart';

class MyMaterials extends StatelessWidget {
  const MyMaterials({
    super.key,
  });

//Comentario normal, aca finaliza la creacion que comienza desde el override hecho con extract widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Better Dreaming', 
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(),
        useMaterial3: true, // Recomendado para nuevos proyectos Flutter
      ),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Better Dreaming',
        ), // Título cambiado
    );
  }
}
