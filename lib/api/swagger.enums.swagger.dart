import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum DeviceOS {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  ios(0),
  @JsonValue(1)
  android(1);

  final int? value;

  const DeviceOS(this.value);
}
