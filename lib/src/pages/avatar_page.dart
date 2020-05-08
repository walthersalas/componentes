import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Avatar'),
        actions: <Widget>[          
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTIwNjA4NjM0MTk3MjE0NzMy/stan-lee-21101093-1-402.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),  
      body:    Center(
        child:FadeInImage(
          image: NetworkImage('https://media.metrolatam.com/2019/07/24/stanlee-81c12a5bdc6a425c462a011af6d51267-1200x600.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'), 
          
          fadeInDuration: Duration(milliseconds:200),)

      ),
    );
  }
}