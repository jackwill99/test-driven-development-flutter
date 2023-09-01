import 'package:equatable/equatable.dart';

// Business object
abstract class Promo extends Equatable {
  final String eventName;
  final String poster;
  final int duration;

  const Promo({
    required this.eventName,
    required this.poster,
    required this.duration,
  });

  @override
  List<Object?> get props => [eventName, poster, duration];
}
