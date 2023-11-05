import 'package:json_annotation/json_annotation.dart';

enum AppMode { release, debug }

enum DeviceType { phone, tablet }

@JsonEnum(valueField: 'platform')
enum AppPlatform {
  @JsonValue(1)
  web,
  @JsonValue(2)
  android,
  @JsonValue(3)
  ios,
  @JsonValue(4)
  other,
}
