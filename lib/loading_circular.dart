import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';

class LoadingCircular extends StatelessWidget {
  const LoadingCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
      color: AppTheme.primayLight,
    ));
  }
}