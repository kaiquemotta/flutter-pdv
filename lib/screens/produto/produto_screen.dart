import 'package:flutter/material.dart';

class ProdutoScreen extends StatefulWidget {
  const ProdutoScreen({super.key});

  @override
  State<ProdutoScreen> createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Produtos'),
          ),
          body: LayoutBuilder(builder: (context, constrains) {
            final bool isMobile = constrains.maxWidth < 600;

            return ListView(children: <Widget>[
              Center(
                  child: Text(
                'Lista de Produtos',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5.4),
                    child: FilledButton.tonal(
                        onPressed: () {}, child: const Text('Adicionar + 1')),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: DataTable(
                  horizontalMargin: 8,
                  columnSpacing: 0,
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
                      DataCell(
                        Text('1'),
                      ),
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
                            WidgetSpan(
                              child: Icon(Icons.info),
                            ),
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
              ),
            ]);
          })
    );
  }
}
