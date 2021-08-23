enum CameraType {
  FHAZ,
  RHA,
  MAST,
  CHEMCAM,
  MAHLI,
  MARDI,
  NAVCAM,
  PANCAM,
  MINITES,
}

const CameraTypeEnumMap = {
  CameraType.FHAZ: 'fhaz',
  CameraType.RHA: 'rha',
  CameraType.MAST: 'mast',
  CameraType.CHEMCAM: 'chemcam',
  CameraType.MAHLI: 'mahli',
  CameraType.MARDI: 'mardi',
  CameraType.NAVCAM: 'navcam',
  CameraType.PANCAM: 'pancam',
  CameraType.MINITES: 'minites'
};

extension CameraTypeName on CameraType {
  String get name => CameraTypeEnumMap[this]!;
}
