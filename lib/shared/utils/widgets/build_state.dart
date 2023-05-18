import 'package:flutter/material.dart';

class BuildStateError extends StatelessWidget {
  final String message;
  const BuildStateError({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}

class BuildStateEmpty extends StatelessWidget {
  final String message;
  const BuildStateEmpty({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}

class BuildStateLoading extends StatelessWidget {
  const BuildStateLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
