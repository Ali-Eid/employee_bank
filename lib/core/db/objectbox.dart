import 'package:fs_bank/features/address/domain/models/country_model/country_model.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../../features/attributes/domain/models/attributes_model/attributes_model.dart';
import '../../features/attributes/domain/models/set_attributes_model/set_attribute_model.dart';
import '../../objectbox.g.dart';
import 'address_table/address_table.dart';
import 'address_table/country_table.dart';
import 'attachment_table/attachment_table.dart';
import 'attribute_table/attribute_table.dart';
import 'attribute_table/set_attribute_table.dart';
import 'customer_table/customer_table_model.dart';

class ObjectBox {
  late final Store store;
  late Box<CustomerTable> customerBox;
  late Box<AttributeTable> attributeBox;
  late Box<SetAttachmentDataTable> attachmentBox;
  //Static country states
  late Box<CountryTable> countryTable;
  late Box<StateTable> stateTable;

  ObjectBox._create(this.store) {
    customerBox = Box<CustomerTable>(store);
    attributeBox = Box<AttributeTable>(store);
    countryTable = Box<CountryTable>(store);
    stateTable = Box<StateTable>(store);
    attachmentBox = Box<SetAttachmentDataTable>(store);
    // Add any additional setup code, e.g. build queries.
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store =
        await openStore(directory: p.join(docsDir.path, "obx-employee"));
    return ObjectBox._create(store);
  }

  Stream<List<CustomerTable>> getCustomers() {
    final builder = customerBox.query();
    return builder.watch(triggerImmediately: true).map((query) => query.find());
  }

  Stream<List<AttributeTable>> getAttributeTable() {
    final builder = attributeBox.query();
    return builder.watch(triggerImmediately: true).map((query) => query.find());
  }

//-----------------------------Customer-------------------------------------------------

  Future<void> addCustomer(InputCreateCustomerModel customer) async {
    var customerRow = CustomerTable(
        title: customer.title,
        gender: customer.gender,
        firstNameEn: customer.firstName.en,
        firstNameAr: customer.firstName.ar,
        lastNameAr: customer.lastName.ar,
        lastNameEn: customer.lastName.en,
        fatherNameAr: customer.fatherName.ar,
        fatherNameEn: customer.fatherName.en,
        motherNameAr: customer.motherName.ar,
        motherNameEn: customer.motherName.en,
        dateOfBirth: customer.dateOfBirth,
        phoneNumber: customer.phoneNumber ?? "None",
        mobileNumber: customer.mobileNumber,
        email: customer.email ?? "None",
        status: customer.status,
        placeOfBirth: customer.placeOfBirth,
        createdAt: customer.createdAt,
        templateId: customer.templateId);

    customerRow.setAttributeTable.addAll(customer.attributes.map((e) {
      return SetAttributeDataTable(attributeId: e.attributeId, value: e.value);
    }).toList());
    var setAddress = AddressTable(
        countryId: customer.address.countryId,
        stateId: customer.address.stateId ?? 0,
        addressType: customer.address.addressType,
        area: customer.address.area,
        details: customer.address.details,
        isDefault: customer.address.isDefault,
        phoneNumber: customer.address.phoneNumber,
        street: customer.address.street);
    customerRow.addressTable.target = setAddress;
    customerRow.setAttachmentTable.addAll(customer.attachments.map(
      (e) {
        return SetAttachmentDataTable(
            attributeId: e.attributeId, file: e.file, name: e.name);
      },
    ).toList());

    await customerBox.putAsync(customerRow);
  }

  Future<void> removeCustomer(int id) => customerBox.removeAsync(id);

  Future<void> updateCustomer(
      int id, int? customerId, bool createdSuccessfully) async {
    CustomerTable? customerTable = customerBox.get(id);
    if (customerTable != null) {
      customerTable.customerId = customerId;
      customerTable.createdSuccessfully = createdSuccessfully;
      customerBox.put(customerTable);
    }
  }

  Future<void> updateCustomerAttributes(
      int id, bool attributeSuccessfully) async {
    CustomerTable? customerTable = customerBox.get(id);
    if (customerTable != null) {
      customerTable.attributesSuccessfully = attributeSuccessfully;
      customerBox.put(customerTable);
    }
  }

  Future<void> updateCustomerAddress(int id, bool addressSuccessfully) async {
    CustomerTable? customerTable = customerBox.get(id);
    if (customerTable != null) {
      customerTable.addressSuccessfully = addressSuccessfully;
      customerBox.put(customerTable);
    }
  }

  Future<void> updateAttachmentStatus(int id, bool status) async {
    SetAttachmentDataTable? attachmentData = attachmentBox.get(id);
    if (attachmentData != null) {
      attachmentData.isUploaded = status;
      attachmentBox.put(attachmentData);
    }
  }

//--------------------------------------------------------------------------------------

//---------------------------------Attributes-------------------------------------------
  Future<void> addAllAttributes(List<AttributesModel> attributes) async {
    try {
      await attributeBox.putManyAsync(attributes.map(
        (e) {
          final attr =
              AttributeTable(templateId: e.template.id, name: e.template.name);
          attr.attributeDataTable.addAll(e.attributes.map(
            (attrData) {
              return AttributeDataTable(
                  attributeId: attrData.id,
                  label: attrData.label,
                  type: attrData.type?.name ?? "None",
                  value: attrData.value.toString(),
                  attribute_template_id: attrData.attribute_template_id,
                  isActive: attrData.isActive,
                  isRequired: attrData.isRequired);
            },
          ).toList());
          return attr;
        },
      ).toList());
    } catch (e) {}
  }

  // Future<void> addSetAttributes(SetAttributeModel setAttributesModel) async {
  //   final attributeSaved = SetAttributeTable();
  //   attributeSaved.setAttributeDataTable
  //       .addAll(setAttributesModel.attributes.map(
  //     (e) {
  //       return SetAttributeDataTable(
  //           attributeId: e.attributeId, value: e.value);
  //     },
  //   ).toList());
  //   await setAttributeTable.putAsync(attributeSaved);
  // }

//--------------------------------------------------------------------------------------
//------------------------------------Address-------------------------------------------

//--------------------------------------------------------------------------------------
//---------------------------------Countries--------------------------------------------
  Stream<List<CountryTable>> getCountries() {
    final builder = countryTable.query();
    return builder.watch(triggerImmediately: true).map((query) => query.find());
  }

  Future<void> addCountries(List<CountryModel> countries) async {
    await countryTable.putManyAsync(countries.map(
      (e) {
        return CountryTable(
            countryId: e.id,
            code: e.code,
            nameAr: e.name.ar,
            nameEn: e.name.en);
      },
    ).toList());
  }

//--------------------------------------------------------------------------------------
//--------------------------------------States------------------------------------------
  Stream<List<StateTable>> getStates() {
    final builder = stateTable.query();
    return builder.watch(triggerImmediately: true).map((query) => query.find());
  }

  Future<void> addStates(List<CountryModel> states) async {
    await stateTable.putManyAsync(states.map(
      (e) {
        return StateTable(
            countryId: e.countryId,
            stateId: e.id,
            code: e.code,
            nameAr: e.name.ar,
            nameEn: e.name.en);
      },
    ).toList());
  }
//--------------------------------------------------------------------------------------
}
