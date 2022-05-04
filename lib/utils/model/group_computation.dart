/**
 * Defines the structure of grouped object computations. Basically, it provides aggregate calculation instructions to {@link QueryBuilder.compute} method
 * @export
 * @interface GroupComputation
 */
abstract class GroupComputation {
/**
 * The name of the computation which will be reported in the result of {@link QueryBuilder.compute} method execution. If you are defining more than one group computation, then their names need to be unique.
 * @type {string}
 */
  late String name;
/**
 *  Defines the type of the computation
 * - **count:** Counts the number of objects in each group
 * - **countif:** Counts the number of objects in each group based on the result of the specified expression. If the expression evaluates to true then they are counted otherwise not.
 * - **sum:** Sums the evaluated expression values for each group member. The expression needs to return an integer or decimal value.
 * - **avg:** Averages the evaluated expression values for the overall group. The expression needs to return an integer or decimal value.
 * - **min:** Calculates the minimum value of the evaluated expression for the overall group. The expression needs to return an integer or decimal value.
 * - **max:** Calculates the maximum value of the evaluated expression for the overall group. The expression needs to return an integer or decimal value.
 *
 * @type {('count' | 'countif' | 'sum' | 'avg' | 'min' | 'max')}
 * @memberof GroupComputation
 */
// type= "count" | "countif" | "sum" | "avg" | "min" | "max";
  late String type;
/**
 * The computation expression string. Except **count**, expression string is required for all other computation types.
 * @type {string}
 * @memberof GroupComputation
 */
  late String expression;
}
