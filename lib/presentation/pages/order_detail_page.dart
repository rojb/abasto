import 'package:flutter/material.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          '#876543',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Indicator
              _progressIndicator(),
              const SizedBox(height: 32),
              // Order History Title
              const Text(
                'Historial del pedido',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              // Timeline
              _timeline(),
              const SizedBox(height: 32),
              // Notification Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5252),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'ACTIVAR NOTIFICACIÓN',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _progressIndicator() {
    final stages = [
      'Pendiente',
      'Confirmado',
      'Recogido',
      'Enviado',
      'Entregado',
    ];

    return Column(
      children: [
        // Progress Bar
        Row(
          children: List.generate(stages.length, (index) {
            bool isCompleted = index < 3;
            bool isActive = index < 3;

            return Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 3,
                          color: isCompleted
                              ? const Color(0xFFFF5252)
                              : Colors.grey[300],
                        ),
                      ),
                      if (index < stages.length - 1)
                        Expanded(
                          child: Container(
                            height: 3,
                            color: isCompleted
                                ? const Color(0xFFFF5252)
                                : Colors.grey[300],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
        const SizedBox(height: 12),
        // Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(stages.length, (index) {
            bool isActive = index < 3;
            return Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? const Color(0xFFFF5252) : Colors.grey[300],
              ),
            );
          }),
        ),
        const SizedBox(height: 12),
        // Labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: stages
              .map(
                (stage) => Text(
                  stage,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _timeline() {
    final events = [
      {
        'date': '08 mayo 09:43 AM',
        'title': 'Pedido #876543 confirmado, por favor revisa tu cuenta',
      },
      {
        'date': '09 mayo 10:00 AM',
        'title': 'Pedido #876543 recogido, por favor revisa el estatus',
      },
      {'date': '09 mayo 10:34 AM', 'title': 'Pedido #876543 enviado'},
      {
        'date': '10 mayo 08:21 AM',
        'title': 'Pedido #876543 recibido por el destinatario',
      },
    ];

    return Column(
      children: List.generate(events.length, (index) {
        final event = events[index];
        final isLast = index == events.length - 1;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline column
            Column(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFF5252),
                  ),
                ),
                if (!isLast)
                  Container(width: 2, height: 80, color: Colors.grey[300]),
              ],
            ),
            const SizedBox(width: 16),
            // Event details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event['date']!,
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      event['title']!,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (!isLast) const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
