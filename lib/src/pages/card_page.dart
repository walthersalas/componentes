import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    final msg =
        'Esto es lo que queria mostrarles para que lo vean y tengan una idea de como es lo que quiero que vean';

    return Card(
        elevation: 20.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text(msg),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Aceptar'),
              onPressed: () {},
            ),
          ])
        ]));
  }

  Widget _cardTipo2() {
    final texto = 'Globos aerostáticos de colores que vuelan sobre una plantación de té al atardecer.';
    final url = 'https://previews.123rf.com/images/artpritsadee/artpritsadee1608/artpritsadee160800084/63353326-globos-aerost%C3%A1ticos-de-colores-que-vuelan-sobre-el-paisaje-plantaci%C3%B3n-de-t%C3%A9-al-atardecer-.jpg';
    final imagen = 'assets/jar-loading.gif';
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(url),
            placeholder: AssetImage(imagen),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //
          Container(
              padding: EdgeInsets.all(10.0), child: Text(texto))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), 
          color: Colors.white30,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)
            )
          ]
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0), 
        child: card,
      ),
    );
  }
}
