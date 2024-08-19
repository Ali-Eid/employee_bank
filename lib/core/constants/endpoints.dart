class Endpoints {
  //Customer basic info
  static const String CUSTOMER_SERVICES_API = "/customers-service/api";
  static const String CREATE_CUSTOMER = "/dashboard/customers";

  //Attributes
  static const String ATTRIBUTES_API = "/customer-attributes/api";
  static const String ATTRIBUTES_BY_TEMPLATE_ID =
      "/dashboard/admin/templates/attributes/{template_id}";
  static const String ALL_ATTRIBUTES =
      "/dashboard/admin/templates/all_attributes";
  static const String SET_CUSTOMER_ATTRIBUTES =
      "/dashboard/customers-attributes";
  static const String SET_CUSTOMER_ATTACHMENT =
      "/dashboard/customer-attachment";

  //Templates
  static const String TEMPLATES = "/dashboard/admin/templates";

  //Customer address
  static const String ADDRESS = "/customer-addresses/api";
  static const String SET_ADDRESS = "/dashboard/addresses";
  static const String COUNTIRES = "/app/countries";
  static const String STATES = "/app/states";
}
