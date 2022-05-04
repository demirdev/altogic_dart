import 'sort_entry.dart';

/**
 * Defines the structure of a db action that is built by a {@link QueryBuilder}
 * @export
 * @interface DBAction
 */
abstract class DBAction {
/**
 * The filter query expression string
 * @type {string | null}
 */
  String? expression;
/**
 * The list of lookups to make (left outer join) while getting the object from the database
 * @type {([SimpleLookup | ComplexLookup]| null | undefined)}
 */
  dynamic lookups;
/**
 * A positive integer that specifies the page number to paginate query results. Page numbers start from 1.
 * @type {(number | null | undefined)}
 */
  int? page;
/**
 * A positive integer that specifies the max number of objects to return per page
 * @type {(number | null | undefined)}
 */
  int? limit;
/**
 * Keeps the list of field names and sort direction for sorting returned objects
 * @type {([SortEntry] | null | undefined)}
 */
  List<SortEntry>? sort;
/**
 * The list of fields that will be omitted in retrieved objects
 * @type {(string[]| null | undefined)}
 */
  List<String>? omit;

/**
 * The grouping definition of the query builder. If you want to group the query results by values of specific fields, then provide the name of the fields in a string array format e.g., ['field1', 'field2.subField', ...]
 *
 * If you prefer to group the query results by an expression then just provide the expression string.
 *
 * @type {(string | string[] | null | undefined)}
 */
  List<String>? group;
}
