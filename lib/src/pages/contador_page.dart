import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();

  }

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle( fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( 
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body:Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: _estiloTexto),
            Text( '$_conteo' , style: _estiloTexto),
          ],
          )
      ),
      floatingActionButton: _crearBotones()
    );
  }


  //este widget me permite añadir varios botones
  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox( width: 5.0 ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar ),
      ],
    );

  }

  //funcionalidad de los botones
  void _agregar(){
    setState(() {
      _conteo++;
    });
  }

  //esta funcion es la misma que las otras solo que se abrevia de esta manera
  void _sustraer(){
  setState(() => _conteo--);
  }

  void _reset(){
  setState(() {
    _conteo = 0;
  });
  }
  

}

