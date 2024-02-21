import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_star_gazer/pages/app.dart';

void main() {
  runApp(
    ProviderScope(
      child: GithubStarGazerApp(),
    ),
  );
}
