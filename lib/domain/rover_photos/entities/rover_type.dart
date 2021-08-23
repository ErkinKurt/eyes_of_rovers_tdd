enum RoverType {
  Curiosity,
  Opportunity,
  Spirit,
}

const RoverTypeEnumMap = {
  RoverType.Curiosity: 'curiosity',
  RoverType.Opportunity: 'opportunity',
  RoverType.Spirit: 'spirit',
};

extension RoverTypeName on RoverType {
  String get name => RoverTypeEnumMap[this]!;
}
