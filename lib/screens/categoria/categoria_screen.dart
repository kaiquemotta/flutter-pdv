import 'package:flutter/material.dart';

class Categoria extends StatefulWidget {
  const Categoria({super.key});

  @override
  State<Categoria> createState() => _CategoriaState();
}

class _CategoriaState extends State<Categoria> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Categorias'),
          ),
          body: ListView(children: <Widget>[

            Center(
                child: Text(
              'Lista de Categorias',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('ID',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Nome',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Data cadastro',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Ações',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Refrigerante')),
                  DataCell(Text('01-12-2022')),
                  DataCell(Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(child: Icon(Icons.info)),
                        WidgetSpan(child: Icon(Icons.edit)),
                        WidgetSpan(child: Icon(Icons.delete)),
                      ],
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Massa')),
                  DataCell(Text('01-12-2022')),
                  DataCell(Text.rich(
                    TextSpan(
                      children: [
                        
                        WidgetSpan(child: Icon(Icons.info),),
                        WidgetSpan(child: Icon(Icons.edit)),
                        WidgetSpan(child: Icon(Icons.delete)),
                      ],
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('Suco')),
                  DataCell(Text('01-12-2022')),
                  DataCell(Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(child: Icon(Icons.info)),
                        WidgetSpan(child: Icon(Icons.edit)),
                        WidgetSpan(child: Icon(Icons.delete)),
                      ],
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text('4')),
                  DataCell(Text('Carne')),
                  DataCell(Text('01-12-2022')),
                  DataCell(Text.rich(
                    TextSpan(
                      children: [
                        
                        WidgetSpan(child: Icon(Icons.info)),
                        WidgetSpan(child: Icon(Icons.edit)),
                        WidgetSpan(child: Icon(Icons.delete)),
                      ],
                    ),
                  )),
                ]),
              ],
            ),
          ])),
    );
  }
}
