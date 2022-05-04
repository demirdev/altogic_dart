/**
 * Provides information about the errors happened during execution of the requests
 * @export
 * @interface APIError
 */
abstract class APIError {
/**
 *  HTTP response code in the 100–599 range
 * @type {number}
 */
  late num status;

/**
 * Status text as reported by the server, e.g. "Unauthorized"
 * @type {string}
 */
  late String statusText;

/**
 * Array of error entries that provide detailed information about the errors occured during excution of the request
 * @type {ErrorEntry[]}
 */
  late List<ErrorEntry> items;
}

/**
 * Provides info about an error.
 * @export
 * @interface ErrorEntry
 */
abstract class ErrorEntry {
/**
 * Originator of the error either a client error or an internal server error
 * @type {string}
 */
  late String origin;

/**
 * Specific short code of the error message (e.g., validation_error, content_type_error)
 * @type {string}
 */
  late String code;

/**
 * Short description of the error
 * @type {string}
 */
  late String message;

/**
 * Any additional details about the error. Details is a JSON object and can have a different structure for different error types.
 * @type {object}
 */
  Object? details;
}
