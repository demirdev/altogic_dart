/**
 * Defines the structure of sort entry
 * @export
 * @interface SortEntry
 */
abstract class SortEntry {
/**
 * The name of the field that will be used in sorting the returned objects. The field name can be in dot-notation to specify sub-object fields (e.g., field.subField)
 * @type {string}
 */
  late String field;
/**
 * Sort direction
 * @type {string}
 */
// direction = "asc" | "desc";
  late String direction;
}
