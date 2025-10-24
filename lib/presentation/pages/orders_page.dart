import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  String filtroSeleccionado = 'Todo';

  final List<Map<String, dynamic>> pedidos = [
    {
      'id': '876543',
      'fecha': '29 Abril - 01:21 PM',
      'estado': 'En camino',
      'items': 3,
      'precio': 24,
      'color': Colors.blue,
    },
    {
      'id': '876543',
      'fecha': '27 Abril - 04:56 PM',
      'estado': 'Recoger',
      'items': 2,
      'precio': 21,
      'color': Colors.red,
    },
    {
      'id': '876543',
      'fecha': '26 Abril - 04:21 PM',
      'estado': 'Cancelado',
      'items': 1,
      'precio': 9,
      'color': Colors.red,
    },
    {
      'id': '876543',
      'fecha': '22 Abril - 04:21 PM',
      'estado': 'En camino',
      'items': 3,
      'precio': 24,
      'color': Colors.blue,
    },
    {
      'id': '876543',
      'fecha': '21 Abril - 04:54 PM',
      'estado': 'Recoger',
      'items': 2,
      'precio': 21,
      'color': Colors.red,
    },
    {
      'id': '876543',
      'fecha': '18 Abril - 01:16 PM',
      'estado': 'Cancelado',
      'items': 1,
      'precio': 9,
      'color': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
        title: const Text(
          'Pedidos',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Filtros
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _filtroButton('Todo'),
                  const SizedBox(width: 8),
                  _filtroButton('PENDIENTE'),
                  const SizedBox(width: 8),
                  _filtroButton('ESPERA'),
                  const SizedBox(width: 8),
                  _filtroButton('COMPLETADO'),
                ],
              ),
            ),
          ),
          // Lista de pedidos
          Expanded(
            child: ListView.builder(
              itemCount: pedidos.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final pedido = pedidos[index];
                return _tarjetaPedido(pedido);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _filtroButton(String label) {
    bool isSelected = filtroSeleccionado == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          filtroSeleccionado = label;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey[300]!,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[600],
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _tarjetaPedido(Map<String, dynamic> pedido) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/order-detail');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // Barra lateral de color
            Container(
              width: 4,
              height: 120,
              decoration: BoxDecoration(
                color: pedido['color'],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
            // Contenido
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pedido # ${pedido['id']}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '-Bs${pedido['precio']}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      pedido['fecha'],
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pedido['estado'],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Producto X ${pedido['items']}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
