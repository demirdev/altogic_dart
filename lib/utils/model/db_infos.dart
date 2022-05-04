/**
 * Defines the structure of the response of a multi-object update operation in the database
 * @export
 * @interface UpdateInfo
 */
abstract class UpdateInfo {
/**
 * Total number of objects that matched to the filter query
 * @type {number}
 */
  late num totalMatch;
/**
 * Number of objects updated
 * @type {number}
 */
  late num updated;
}

/**
 * Defines the structure of the response of a multi-object delete operation in the database
 * @export
 * @interface UpdateInfo
 */
abstract class DeleteInfo {
/**
 * Total number of objects that matched to the filter query
 * @type {number}
 */
  late num totalMatch;
/**
 * Number of objects deleted
 * @type {number}
 */
  late num deleted;
}
