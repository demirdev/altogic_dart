/**
 * Defines the structure of a field update
 * @export
 * @interface FieldUpdate
 */
abstract class FieldUpdate {
/**
 * The name of the field whose value will be updated. The field name can be in dot-notation to specify sub-object fields (e.g., field.subField). Please note that only sub-model object fields can be accessed through the dot-notation. You cannot create an update instruction for an object-list field through the dot-notation.
 * @type {string}
 */
  late String field;

/**
 * Defines how the field will be updated.
 * - **set:** Sets (overwrites) the value of a field. Applicable on all fields, except system managed `_id`, `_parent`, `createdAt`, `updatedAt` fields.
 * - **unset:** Clears the value of a field. Applicable on all fields, except system managed `_id`, `_parent`, `createdAt`, `updatedAt` fields.
 * - **increment:** Increments the value of a numeric field by the specified amount. Applicable only for integer and decimal fields.
 * - **decrement:** Decrements the value of a numeric field by the specified amount. Applicable only for integer and decimal fields.
 * - **min:** Assigns the minimum of the specified value or the field value. If the specified value is less than the current field value, sets the field value to the specificied value, otherwise does not make any changes. Applicable only for integer and decimal fields.
 * - **max:** Assigns the maximum of the specified value or the field value. If the specified value is greater than the current field value, sets the field value to the specificied value, otherwise does not make any changes. Applicable only for integer and decimal fields.
 * - **multiply:** Multiplies the current value of the field with the specified amount and sets the field value to teh multiplication result. Applicable only for integer and decimal fields.
 * - **pull:** Removes the specified value from a basic values list. Applicable only for basic values list fields.
 * - **push:** Adds the specified value to a basic values list. Applicable only for basic values list fields.
 * - **pop:** Removes the last element from a basic values list. Applicable only for basic values list fields.
 * - **shift:** Removes the first element from a basic values list. Applicable only for basic values list fields.
 * @type {('set'
 *       | 'unset'
 *       | 'increment'
 *       | 'decrement'
 *       | 'min'
 *       | 'max'
 *       | 'multiply'
 *       | 'pull'
 *       | 'push'
 *       | 'pop'
 *       | 'shift')}
 */
  late String updateType;
// | "set"
// | "unset"
// | "increment"
// | "decrement"
// | "min"
// | "max"
// | "multiply"
// | "pull"
// | "push"
// | "pop"
// | "shift";

/**
 * The value that will be used during the field update. Depending on the update type the value will have different meaning.
 * - **set:** The new value to set
 * - **unset:** Not applicable, value is not needed
 * - **increment:** The icrement amount
 * - **decrement:** The decrement amount
 * - **min:** The min amount to compare against current field value
 * - **max:** The max amount to compare against current field value
 * - **multiply:** The multiplication amount
 * - **pull:** Basic value list item to remove
 * - **push:** Basic value list item to add
 * - **pop:** Not applicable, value is not needed
 * - **shift:** Not applicable, value is not needed
 * @type {*}
 */
  late dynamic value;
}
