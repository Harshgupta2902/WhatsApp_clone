import 'dart:io';

import 'package:flutter/material.dart';

class ProgressCancelBtn extends StatelessWidget {
  const ProgressCancelBtn({
    super.key,
    required this.onTap,
    this.overlayColor,
    this.progressValue,
  });

  final VoidCallback onTap;
  final double? progressValue;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: overlayColor,
              shape: BoxShape.circle,
            ),
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              value: progressValue,
              strokeWidth: 3.0,
            ),
          ),
          Icon(
            Platform.isAndroid ? Icons.close_rounded : Icons.stop_rounded,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}