import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // Subtle shadow
          BoxShadow(
            color: Colors.grey.shade600,
            offset: const Offset(4, 4),
            blurRadius: 15,
          ),
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(-4, -4),
            blurRadius: 15,
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: child,
    );
  }
}
