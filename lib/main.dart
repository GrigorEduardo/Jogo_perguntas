import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  int pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuação': 10},
        {'texto': 'Vermelho', 'pontuação': 5},
        {'texto': 'Verde', 'pontuação': 3},
        {'texto': 'Branco', 'pontuação': 1},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
       {'texto': 'Leão','pontuação': 10},
       {'texto': 'Coelho', 'pontuação': 5},
       {'texto': 'Cobra','pontuação': 3},
       {'texto': 'Elefante','pontuação': 1},
      ]
    },
    {
      'texto': 'Qual é a sua profissão favorita?',
      'respostas': [
        {'texto': 'Programação','pontuação': 10},
       {'texto': 'Design', 'pontuação': 5},
       {'texto': 'Jogador','pontuação': 3},
       {'texto': 'Médico','pontuação': 1},
      ]
    }
  ];
  void _resposta( int pontuacao) {
    setState(() {
      perguntaSelecionada++;
      pontuacaoTotal += pontuacao;
    });

  
  }

  void _reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Perguntas')),
            backgroundColor: Colors.blue,
            shadowColor: Colors.black,
            elevation: 20.5,
            
          ),
          body: temPerguntaSelecionada
              ? Quest(
                  perguntas: _perguntas,
                  perguntaSelecionada: perguntaSelecionada,
                  quandoResponder: _resposta,
                )
              : Result(pontuacaoTotal, _reiniciarQuestionario)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
