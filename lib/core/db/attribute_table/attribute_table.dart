import 'package:objectbox/objectbox.dart';

import '../../bases/enums/input_type.dart';

@Entity()
class AttributeTable {
  @Id()
  int id;
  @Unique()
  int templateId;
  String name;
  AttributeTable({this.id = 0, required this.templateId, required this.name});
  @Backlink()
  final attributeDataTable = ToMany<AttributeDataTable>();
}

@Entity()
class AttributeDataTable {
  @Id()
  int id;
  int attributeId;
  String label;
  String type;
  String value;
  int attribute_template_id;
  bool isRequired;
  bool isActive;
  AttributeDataTable(
      {this.id = 0,
      required this.attributeId,
      required this.label,
      required this.type,
      required this.value,
      required this.attribute_template_id,
      required this.isActive,
      required this.isRequired});
  final attributeTable = ToOne<AttributeTable>();
}
