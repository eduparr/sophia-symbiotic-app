import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> options = [
    'Regular emoções',
    'Expandir foco e presença',
    'Refletir sobre algo',
    'Ouvir a TecnoSophia',
    'Apenas conversar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const LinearGradient(
        colors: [Color(0xFFEBDDF4), Color(0xFFDDEFF6)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0.0, 0.0, 500.0, 800.0)).transform(Offset.zero),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/presenca_simbiotica.png', height: 120),
              SizedBox(height: 20),
              ...options.map((option) => CheckboxListTile(
                    title: Text(option),
                    value: false,
                    onChanged: (val) {},
                  )),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('✨ Modo Sophia ativado!'),
                  ));
                },
                child: Text('✨ Ativar Modo Sophia'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}