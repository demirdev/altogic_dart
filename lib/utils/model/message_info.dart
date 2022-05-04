/**
 * Provides info about the status of a message that is submitted to a queue.
 * @export
 * @interface MessageInfo
 */
abstract class MessageInfo {
/**
 * The id of the message
 * @type {string}
 */
  late String messageId;
/**
 * The id of the queue this message is submitted to
 * @type {string}
 */
  late String queueId;
/**
 * The name of the queue this message is submitted to
 * @type {string}
 */
  late String queueName;
/**
 * The message submit date-time
 * @type {string}
 */
  late String submittedAt;
/**
 * The message processing start date-time
 * @type {string}
 */
  late String startedAt;
/**
 * The message processing complete date-time
 * @type {string}
 */
  late String completedAt;
/**
 * The status of the message. When the message is submitted to the queue, it is in `pending` status. When the message is being processed, its status changes to `processing`. If message is successfully completed its status becomes `complete`otherwiese it becomes `errors`.
 * @type {string}
 */
//status = "pending" | "processing" | "completed" | "errors"
  late String status;

/**
 * Provides information about the errors occurred during processing of the message
 * @type {object}
 */
  late Object errors;
}
