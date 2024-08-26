import 'package:objectbox/objectbox.dart';

import '../customer_table/customer_table_model.dart';

// @Entity()
// class SetAttributeTable {
//   @Id()
//   int id;

//   SetAttributeTable({
//     this.id = 0,
//   });

//   final customerTable = ToOne<CustomerTable>();
//   @Backlink()
//   final setAttributeDataTable = ToMany<SetAttributeDataTable>();
// }

@Entity()
class SetAttributeDataTable {
  @Id()
  int id;
  int attributeId;
  String value;

  SetAttributeDataTable({
    this.id = 0,
    required this.attributeId,
    required this.value,
  });

  final customerTable = ToOne<CustomerTable>();
}
