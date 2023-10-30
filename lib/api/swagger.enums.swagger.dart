import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum EventKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  text(0),
  @JsonValue(1)
  state(1),
  @JsonValue(2)
  network(2),
  @JsonValue(3)
  storage(3),
  @JsonValue(4)
  tap(4),
  @JsonValue(5)
  exception(5);

  final int? value;

  const EventKind(this.value);
}

enum NetworkPayloadKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  formdata(0),
  @JsonValue(1)
  json(1),
  @JsonValue(2)
  custom(2);

  final int? value;

  const NetworkPayloadKind(this.value);
}
