import 'package:flutter/material.dart';

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('Boa Noite Prof!'),
              backgroundColor: Colors.deepPurple,
              action: SnackBarAction(
                label: 'OKAYYY',
                textColor: Colors.white,
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Mostrar SnackBar Personalida'),
        ),
      ),
    );
  }
}
