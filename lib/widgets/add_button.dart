import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final bool isAdded;
  final VoidCallback? onPressed;

  const AddButton({super.key, required this.isAdded, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      constraints: const BoxConstraints(minWidth: 80),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isAdded ? Colors.green[50] : Colors.blue[600],
          foregroundColor: isAdded ? Colors.green[700] : Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isAdded
                ? BorderSide(color: Colors.green[200]!, width: 1)
                : BorderSide.none,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isAdded) ...[
              Icon(Icons.check, size: 16, color: Colors.green[700]),
              const SizedBox(width: 4),
            ],
            Text(
              isAdded ? 'Added' : 'Add',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isAdded ? Colors.green[700] : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
