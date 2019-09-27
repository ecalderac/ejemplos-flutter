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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //el codigo puede ir dentro o afuera de la funcion set state da lo mismo
          //La funcion setstate sirve para q el widget se redibuje, si la sacmos seguira funcionando pero hayq  actualizar con hot reload acada rato
          setState(() {
            _conteo++;
          });

        },
      ),
    );
  }


}

