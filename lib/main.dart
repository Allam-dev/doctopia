import 'package:doctopia/core/di/dependency_injection.dart';
import 'package:doctopia/core/routing/app_router.dart';
import 'package:doctopia/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  Future.wait([
    initGetIt(),
  ]);

  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
