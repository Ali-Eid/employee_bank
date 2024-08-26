import 'package:objectbox/objectbox.dart';

@Entity()
class CountryTable {
  @Id()
  int id;
  @Unique()
  int countryId;
  String code;
  String nameEn;
  String nameAr;
  CountryTable(
      {this.id = 0,
      required this.countryId,
      required this.code,
      required this.nameAr,
      required this.nameEn});
}

@Entity()
class StateTable {
  @Id()
  int id;
  @Unique()
  int stateId;
  String code;
  String nameEn;
  String nameAr;
  int countryId;
  StateTable(
      {this.id = 0,
      required this.stateId,
      required this.countryId,
      required this.code,
      required this.nameAr,
      required this.nameEn});
}
