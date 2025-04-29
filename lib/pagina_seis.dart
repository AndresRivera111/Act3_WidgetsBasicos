import 'package:flutter/material.dart';
import 'dart:ui'; // Necesario para ImageFilter

// Convertido a StatelessWidget ya que no maneja estado interno
class PantallaSeis extends StatelessWidget {
  // Añadido const al constructor
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retornar el Scaffold como widget principal de la pantalla
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          // Añadido const
          'WIDGET 5', // Considera si este título es el correcto
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffb81c1c), // Añadido const
        titleTextStyle:
            const TextStyle(color: Colors.white, fontSize: 20), // Añadido const
      ),
      // El body contendrá la estructura principal
      body: Stack(
        // Usamos Stack para poner el fondo detrás del contenido principal
        children: <Widget>[
          // 1. Capa de fondo: Texto verde
          // Asegúrate de que el texto cubra el área deseada.
          // Podría ser necesario ajustar el estilo o usar OverflowBox si es necesario.
          Positioned.fill(
            // Para asegurar que el texto intente llenar el Stack
            child: Text(
              '0' *
                  10000, // Considera alternativas si el rendimiento es un problema
              style: const TextStyle(
                // Añadido const
                color: Colors.green,
                fontSize: 10, // Ajusta según sea necesario
                // Puede que necesites ajustar overflow o wrap
              ),
              overflow: TextOverflow
                  .clip, // Evita que el texto se desborde visualmente de forma extraña
            ),
          ),

          // 2. Capa de contenido principal: Blur Box y Botón, centrados
          Center(
            // Usamos Column para organizar el Blur Box y el Botón verticalmente
            child: Column(
              // Centra los elementos de la columna verticalmente en el espacio disponible
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Contenedor con efecto Blur
                ClipRect(
                  // ClipRect es necesario para que BackdropFilter funcione correctamente
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4.0,
                      sigmaY: 4.0,
                    ),
                    // Contenedor que define el área del BackdropFilter
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 250,
                      // Puedes añadir un color semi-transparente para ver mejor el área del blur
                      // color: Colors.white.withOpacity(0.1),
                      child: const Text('Blur'), // Añadido const
                    ),
                  ),
                ),

                // Espacio vertical entre el Blur Box y el Botón
                const SizedBox(height: 30), // Añadido const

                // Botón para regresar
                ElevatedButton(
                  onPressed: () {
                    // Navegación para volver a la pantalla anterior
                    Navigator.pop(context);
                  },
                  child: const Text('Regresar'), // Añadido const
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
