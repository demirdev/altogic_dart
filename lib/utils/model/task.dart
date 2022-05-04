/**
 * Provides info about the status of a task that is triggered for execution.
 * @export
 * @interface TaskInfo
 */
abstract class TaskInfo {
/**
 * The id of the task
 * @type {string}
 */
  late String taskId;
/**
 * The id of the scheduled task that is triggered
 * @type {string}
 */
  late String scheduledTaskId;
/**
 * The name of the scheduled task that is triggered
 * @type {string}
 */
  late String scheduledTaskName;
/**
 * The task trigger date-time
 * @type {string}
 */
  late String triggeredAt;
/**
 * The task execution start date-time
 * @type {string}
 */
  late String startedAt;
/**
 * The task execution complete date-time
 * @type {string}
 */
  late String completedAt;
/**
 * The status of the task. When the task is firts triggered, it is in `pending` status. When the task is being processed, its status changes to `processing`. If task is successfully completed its status becomes `complete`otherwiese it becomes `errors`.
 * @type {string}
 */
  // "pending" | "processing" | "completed" | "errors";
  late String status;

/**
 * Provides information about the errors occurred during execution of the task
 * @type {object}
 */
  late Object errors;
}
