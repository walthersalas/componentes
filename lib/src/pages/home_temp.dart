import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Opcion 1','Opcion 2','Opcion 3','Opcion 4','Opcion 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp...')
        ),
        body: ListView(
          children: _crearItems2()
        ),
    );
  }

 /*  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(title:Text(opt),);
      lista..add( tempWidget )
           ..add( Divider() );  }

    return lista;
  } */

  List<Widget> _crearItems2(){
    
    return opciones.map( (item) {
      return Column(
        children: <Widget>[
          ListTile( 
            title: Text( item + '!'), 
            subtitle: Text( 'descripcion del item ' + item + '.'), 
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
            ),
            Divider()
        ],
      );
    }).toList();    
    
  }



}
