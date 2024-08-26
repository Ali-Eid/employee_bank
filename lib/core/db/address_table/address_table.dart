import 'package:objectbox/objectbox.dart';

import '../customer_table/customer_table_model.dart';

@Entity()
class AddressTable {
  @Id()
  int id;
  int countryId;
  int stateId;
  String area;
  String street;
  String details;
  String phoneNumber;
  String addressType;
  bool isDefault;

  AddressTable({
    this.id = 0,
    required this.countryId,
    required this.stateId,
    required this.area,
    required this.street,
    required this.details,
    required this.phoneNumber,
    required this.addressType,
    required this.isDefault,
  });

  final customerTable = ToOne<CustomerTable>();
}
