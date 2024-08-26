import 'package:objectbox/objectbox.dart';

import '../address_table/address_table.dart';
import '../attachment_table/attachment_table.dart';
import '../attribute_table/set_attribute_table.dart';

@Entity()
class CustomerTable {
  @Id()
  int id;
  int? customerId;
  String title;
  String firstNameEn;
  String firstNameAr;
  String lastNameEn;
  String lastNameAr;
  String fatherNameEn;
  String fatherNameAr;
  String motherNameEn;
  String motherNameAr;
  String dateOfBirth;
  String placeOfBirth;
  String phoneNumber;
  String mobileNumber;
  @Unique()
  String email;
  bool status;
  int templateId;
  String createdAt;
  String gender;
  bool createdSuccessfully;
  bool attributesSuccessfully;
  bool addressSuccessfully;
  bool attachmentsSuccessfully;

  CustomerTable({
    this.id = 0,
    this.customerId,
    required this.title,
    required this.gender,
    required this.firstNameEn,
    required this.firstNameAr,
    required this.lastNameEn,
    required this.lastNameAr,
    required this.fatherNameEn,
    required this.fatherNameAr,
    required this.motherNameEn,
    required this.motherNameAr,
    required this.dateOfBirth,
    required this.placeOfBirth,
    required this.phoneNumber,
    required this.mobileNumber,
    required this.email,
    required this.status,
    required this.templateId,
    required this.createdAt,
    this.createdSuccessfully = false,
    this.addressSuccessfully = false,
    this.attributesSuccessfully = false,
    this.attachmentsSuccessfully = false,
  });
  final addressTable = ToOne<AddressTable>();
  final setAttributeTable = ToMany<SetAttributeDataTable>();
  final setAttachmentTable = ToMany<SetAttachmentDataTable>();
}
