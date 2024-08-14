import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  /// push named
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  /// push replacement named
  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  /// push named and remove until
  void pushNamedAndRemoveUntil(String routeName,
      {required RoutePredicate predicate, Object? arguments}) {
    Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, arguments: arguments, predicate);
  }

  /// pop
  void pop() {
    Navigator.of(this).pop();
  }
}

// string null or empty
extension StringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

// list null or empty
extension ListExtension<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

// map
extension MapExtension<K, V> on Map<K, V>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
