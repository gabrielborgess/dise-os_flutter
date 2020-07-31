import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final estiloTitlulo=TextStyle(fontSize:18.0,fontWeight: FontWeight.bold );
final estiloSubTitlulo=TextStyle(fontSize:13.0,color: Colors.grey );

class BasicoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _Imagen(),
            _CuadroPuntuacion(),
            _acciones(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
            _Texto(),
          ],
        ),
      )
    );
  }




Widget _CuadroPuntuacion(){
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: <Widget>[
                Text('Oeschinen Lake Campground',style: estiloTitlulo,),
                SizedBox(height: 7.0,),
                Text('Kandersteg, Switzerland',style: estiloSubTitlulo,),
              ],
            ),
          ),
          Icon(Icons.star,color: Colors.red,size: 30.0,),
          Text('41',style: TextStyle(fontSize: 15.0),)
        ],
      ),
    ),
  );
}

Widget _Imagen(){
  return Container(
    width: double.infinity,
    child: Image(
      fit: BoxFit.cover,
      height: 300.0,
      image: NetworkImage('https://i.pinimg.com/originals/3e/2a/f6/3e2af664e061013a3d05aa99fa20c1d4.jpg'),
    ),
  );

}


Widget _acciones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _Boton(Icons.call,'CALL'),
      _Boton(Icons.near_me,'ROUTE'),
      _Boton(Icons.share,'SHARE')

    ],
  );
}

Widget _Boton(IconData icono,String texto){
  return Column(
    children: <Widget>[
      Icon(icono,color: Colors.blue,),
      SizedBox(height: 15.0,),
      Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue),)
    ],
  );
}

  Widget _Texto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 30.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting '
              'industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          textAlign:TextAlign.justify,
        ),
      ),
    );
  }

}
