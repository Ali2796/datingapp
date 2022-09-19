class ModelQualificationAndActivities {
  late String _qualification;
  late String _occupationSector;
  late String _jobTitle;
  late String _annualIncome;
  late String _creativity;
  late String _sports;
  late String _smoke;
  late String _starSign;

  ModelQualificationAndActivities({

    String? qualification,
    String? occupationSector,
    String? jobTitle,
    String? annualIncome,
    String? creativity,
    String? sports,
    String? smoke,
    String? starSign,
  });


  String get qualification => _qualification;

  set qualification(String value) {
    _qualification = value;
  }

  static const String qualificationKey='qualificationKey';
  static const String occupationSectorKey='occupationSector';
  static const String jobTitleKey='jobTitle';
  static const String annualIncomeKey='annualIncome';
  static const String creativityKey='creativity';
  static const String sportsKey='sports';
  static const String smokeKey='smoke';
  static const String starSignKey='starSign';

  Map<String, dynamic> toMap(){
    return{
      qualificationKey:_qualification,
      occupationSectorKey:_occupationSector,
      jobTitleKey:_jobTitle,
      annualIncomeKey:_annualIncome,
      creativityKey:_creativity,
      sportsKey:_sports,
      smokeKey:_smoke,
      starSignKey:_starSign

    };
  }

  factory ModelQualificationAndActivities.fromMap(Map<String, dynamic> map){
    return ModelQualificationAndActivities(
  qualification: map[qualificationKey],
  occupationSector: map[occupationSectorKey],
  jobTitle: map[jobTitleKey],
  annualIncome: map[annualIncomeKey],
  creativity: map[creativityKey],
  sports: map[sportsKey],
  smoke: map[smokeKey],
  starSign: map[starSignKey]);
  }

  String get occupationSector => _occupationSector;

  String get starSign => _starSign;

  set starSign(String value) {
    _starSign = value;
  }

  String get smoke => _smoke;

  set smoke(String value) {
    _smoke = value;
  }

  String get sports => _sports;

  set sports(String value) {
    _sports = value;
  }

  String get creativity => _creativity;

  set creativity(String value) {
    _creativity = value;
  }

  String get annualIncome => _annualIncome;

  set annualIncome(String value) {
    _annualIncome = value;
  }

  String get jobTitle => _jobTitle;

  set jobTitle(String value) {
    _jobTitle = value;
  }

  set occupationSector(String value) {
    _occupationSector = value;
  }
}
