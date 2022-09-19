class ModelPersonalInfo {
  late String _gender;
  late int _age;
  late String _province;
  late String _city;
  late String _name;
  late String _height;
  late String _materialStatus;
  late String _children;
  late String _religion;
  late String _section;
  late String _caste;

  // ModelPersonalInfo();

  ModelPersonalInfo({
     String? gender,
     int? age,
     String? province,
     String? city,
     String? name,
     String? height,
     String? materialStatus,
     String? children,
     String? religion,
     String? section,
     String? caste,
  });


  static const String ageKey = 'age';
  static const String genderKey = 'gender';
  static const String provinceKey = 'province';
  static const String cityKey = 'city';
  static const String nameKey = 'name';
  static const String heightKey = 'height';
  static const String materialStatusKey = 'materialStatus';
  static const String childrenKey = 'children';
  static const String religionKey = 'religion';

  static const String sectionKey = 'section';
  static const String castKey = 'caste';

  Map<String, dynamic> toMap() {
    return {
      ageKey: _age,
      genderKey: _gender,
      provinceKey: _province,
      cityKey: _city,
      nameKey: _name,
      heightKey: _height,
      materialStatusKey: _materialStatus,
      childrenKey: _children,
      religionKey: _religion,
      sectionKey: _section,
      castKey: _caste
    };
  }

  factory ModelPersonalInfo.fromMap(Map<String, dynamic> map) {
    return ModelPersonalInfo(
        age: map[ageKey],
        gender: map[genderKey],
        province: map[provinceKey],
        city: map[cityKey],
        name: map[nameKey],
        height: map[heightKey],
        materialStatus: map[materialStatusKey],
        children: map[childrenKey],
        religion: map[religionKey],
        section: map[sectionKey],
        caste: map[castKey]);
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get province => _province;

  set province(String value) {
    _province = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get height => _height;

  set height(String value) {
    _height = value;
  }

  String get materialStatus => _materialStatus;

  set materialStatus(String value) {
    _materialStatus = value;
  }

  String get children => _children;

  set children(String value) {
    _children = value;
  }

  String get religion => _religion;

  set religion(String value) {
    _religion = value;
  }

  String get section => _section;

  set section(String value) {
    _section = value;
  }

  String get caste => _caste;

  set caste(String value) {
    _caste = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

}
