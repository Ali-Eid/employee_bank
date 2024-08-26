import 'package:objectbox/objectbox.dart';

import '../customer_table/customer_table_model.dart';

// @Entity()
// class SetAttachmentTable {
//   @Id()
//   int id;

//   SetAttachmentTable({
//     this.id = 0,
//   });

//   final customerTable = ToOne<CustomerTable>();
//   @Backlink()
//   final setAttachmentDataTable = ToMany<SetAttachmentDataTable>();
// }

@Entity()
class SetAttachmentDataTable {
  @Id()
  int id;
  int attributeId;
  String file;
  String name;
  bool isUploaded;
  bool hasError;

  SetAttachmentDataTable({
    this.id = 0,
    required this.attributeId,
    required this.file,
    required this.name,
    this.isUploaded = false,
    this.hasError = false,
  });

  final customerTable = ToOne<CustomerTable>();
}
