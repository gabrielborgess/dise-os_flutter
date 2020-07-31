import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }


  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
            child: Text('Bienvenidos',style: TextStyle(fontSize:20.0),),
          ),
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => null,
        ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }


  Widget _imagenFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/xd.png'),
          fit: BoxFit.cover,
        )
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    DateTime date = DateTime.now();
    final dia = DateFormat('EEEE').format(date);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estiloTexto,),
          Text(dia.toString(), style: estiloTexto,),
          Expanded(
            //El expanded estira el widget
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }


}


