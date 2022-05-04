abstract class UserAgent implements UserAgentItem {
  UserAgentItem get device;
  UserAgentItem get os;

  @override
  Map<String, dynamic> asMap() {
    return {
      'family': family,
      'major': major,
      'minor': minor,
      'patch': patch,
      'device': device.asMap(),
      'os': os.asMap(),
    };
  }
}

abstract class UserAgentItem {
  late String family;
  late String major;
  late String minor;
  late String patch;

  Map<String, dynamic> asMap() {
    return {
      'family': family,
      'major': major,
      'minor': minor,
      'patch': patch,
    };
  }
}
