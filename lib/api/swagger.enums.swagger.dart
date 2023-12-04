import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum DeviceInfoEntryKind {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  id(0),
  @JsonValue(1)
  host(1),
  @JsonValue(2)
  board(2),
  @JsonValue(3)
  bootloader(3),
  @JsonValue(4)
  brand(4),
  @JsonValue(5)
  device(5),
  @JsonValue(6)
  display(6),
  @JsonValue(7)
  displaymetrics(7),
  @JsonValue(8)
  fingerprint(8),
  @JsonValue(9)
  hardware(9),
  @JsonValue(10)
  isphysical(10),
  @JsonValue(11)
  ostype(11),
  @JsonValue(12)
  manifacturer(12),
  @JsonValue(13)
  model(13),
  @JsonValue(14)
  localizedmodel(14),
  @JsonValue(15)
  product(15),
  @JsonValue(16)
  serialnumber(16),
  @JsonValue(17)
  supported32bitabis(17),
  @JsonValue(18)
  supported64bitabis(18),
  @JsonValue(19)
  supportedabis(19),
  @JsonValue(20)
  systemfeatures(20),
  @JsonValue(21)
  tabs(21),
  @JsonValue(22)
  type(22),
  @JsonValue(23)
  androidversion(23),
  @JsonValue(24)
  iosversion(24),
  @JsonValue(25)
  systemname(25),
  @JsonValue(26)
  systemversion(26),
  @JsonValue(27)
  utsname(27);

  final int? value;

  const DeviceInfoEntryKind(this.value);
}

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
  scroll(5),
  @JsonValue(6)
  exception(6),
  @JsonValue(7)
  navigation(7);

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
