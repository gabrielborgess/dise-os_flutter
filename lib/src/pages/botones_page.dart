import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          _Scroll(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        fixedColor: Colors.pinkAccent,
        unselectedItemColor:Color.fromRGBO(116, 117, 152, 1.0) ,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today),
          ),BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart),
          ),BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
    );
  }

  Widget _background() {
    final gradiente= Container(
      width: double.infinity,//Ocupa toda la pantalla
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(53, 53, 103, 1),
            Color.fromRGBO(36, 38, 59, 1),
          ]
        ),
      ),
    );

    final _cajaRosa=Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient:LinearGradient(
              colors: [
                Color.fromRGBO(252, 73, 191, 1.0),
              Color.fromRGBO(245, 136, 173, 1.0),
              ]
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );



    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          //Posicionar elementos en coordenadas especificas
            top: -100.0,
            child: _cajaRosa
        )
      ],
    );
  }

  Widget _Scroll() {
    return SingleChildScrollView(
      //Permite deslizarme hacia abajo
      child: Column(
        children: <Widget>[
          _titulos(),
          _botonesRedondeados(),

        ],
      ),
    );
  }

  Widget _titulos() {
    final titulo=TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold);
    final subtitulo=TextStyle(fontSize: 18.0,color: Colors.white);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',style: titulo,),
            SizedBox(height: 10.0,),
            Text('Classify this transtaction into particular category',style: subtitulo,)
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados() {

    return Table(
      children: [
        TableRow(
          children:[
            _BotonRedondo(Colors.blue,Icons.border_all,'General'),
            _BotonRedondo(Colors.deepOrange,Icons.directions_bus,'Bus'),
          ]
        ),TableRow(
          children:[
          _BotonRedondo(Colors.blue,Icons.video_library,'Entretenimient'),
          _BotonRedondo(Colors.purpleAccent,Icons.insert_drive_file,'File'),
          ]),
    TableRow(
          children:[
          _BotonRedondo(Colors.pink,Icons.accessibility_new,'Test'),
           _BotonRedondo(Colors.purpleAccent,Icons.directions_bus,'Bus'),
          ]
        ),TableRow(
          children:[
          _BotonRedondo(Colors.yellow,Icons.border_all,'General'),
           _BotonRedondo(Colors.purpleAccent,Icons.directions_bus,'Bus'),
          ]
        ),
      ],
    );
    
  }

  Widget _BotonRedondo(Color color, IconData icon,String texto) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(color: Color.fromRGBO(62, 66, 107, 0.7), borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 15.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon,color:Colors.white, size: 30.0,),
              ),
              Text(
                  '$texto',
                style: TextStyle(color:color),
              ),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
      ),
    );
  }
}
