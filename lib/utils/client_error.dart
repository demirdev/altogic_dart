/**
 * Class to create and throw instances of client errors during runtime.
 * @export
 * @class ClientError
 * @extends {Error}
 */
class ClientError extends Error {
  /**
   * Originator of the error either a client error or an internal server error
   * @type {String}
   */
  late String origin;

  /**
   * Specific short code of the error message (e.g., validation_error, content_type_error)
   * @type {String}
   */

  late String code;

  /**
   * Short description of the error
   * @type {String}
   */
  late String message;

  /**
   * Any additional details about the error. Details is a JSON object and can have a different structure for different error types.
   * @type {object}
   */
  Object? details;

  /**
   * Creates an instance of ClientError.
   * @param {String} code Specific short code of the error message
   * @param {String} message Short description of the error
   * @param {object} [details] Any additional details about the error
   */
  ClientError(String code, String message, [Object? details]) {
    // : super(message)
    this.origin = "client_error";
    this.code = code;
    this.message = message;
    this.details = details;
  }
}
