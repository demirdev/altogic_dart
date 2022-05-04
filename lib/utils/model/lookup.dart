/**
 * Defines the structure of a simple lookup
 * @export
 * @interface SimpleLookup
 */
abstract class SimpleLookup {
/**
 * The name of the object reference field of the model that will be looked up. Only the immediate fields of the model can be used in simple lookups. If you would like to look up for a sub-object field then you need to use that respective sub-model as the reference point of your lookups. The simple lookup basically runs the following query: `this.field == lookup._id`, meaning joins the looked up model with the current one by matching the value of the field with the _id of the looked up model.
 * @type {string}
 */
  late String field;
}

/**
 * Defines the structure of a complex lookup
 * @export
 * @interface ComplexLookup
 */
abstract class ComplexLookup {
/**
 * The name of the lookup. This will become a field of the retrieved object which will hold the looked up value. The specified name needs to be **unique** among the fields of the model.
 * @type {string}
 */
  late String name;
/**
 * The name of the target model which will be joined with the current model
 * @type {string}
 */
  late String modelName;
/**
 * The query expression that will be used in joining the models
 * @type {string}
 */
  late String query;
}
