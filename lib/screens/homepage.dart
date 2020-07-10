import 'package:flutter/material.dart';
import 'configuracoes.dart';
import 'curriculos.dart';
import 'servicos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var paginaSelecionada = 0;
  var _paginas = List<Widget>();

  @override
  void initState() {
    _paginas.add(Servicos());
    _paginas.add(Curriculos());
    _paginas.add(Configuracoes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manda Trampo'),
      ),
      body: IndexedStack(
        index: paginaSelecionada,
        children: _paginas,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaSelecionada,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Serviços'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'CV',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(
              'Configurações',
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            paginaSelecionada = index;
          });
        },
      ),
    );
  }
}
