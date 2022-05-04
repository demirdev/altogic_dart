/**
 * Defines the options for an object read operation
 * @export
 * @interface GetOptions
 */
abstract class GetOptions {
/**
 * Specify whether to cache the retrieved object using its id as the cache key or not. If the object is cached and the timeout has expired, the cached object will automatically be removed from the cache.
 * @type {string}
 */
// | "nocache"
// | "noexpiry"
// | "30sec"
// | "1min"
// | "2mins"
// | "5mins"
// | "10mins"
// | "15mins"
// | "30mins"
// | "1hour"
// | "6hours"
// | "12hours"
// | "1day"
// | "1week"
// | "1month"
// | "6months"
// | "1year";
  late String cache;
}

/**
 * Defines the options for an object create operation
 * @export
 * @interface CreateOptions
 */
abstract class CreateOptions {
/**
 * Specify whether to cache the created object using its id as the cache key or not. If the object is cached and the timeout has expired, the cached object will automatically be removed from the cache.
 * @type {string}
 */
  late String cache;
// | "nocache"
// | "noexpiry"
// | "30sec"
// | "1min"
// | "2mins"
// | "5mins"
// | "10mins"
// | "15mins"
// | "30mins"
// | "1hour"
// | "6hours"
// | "12hours"
// | "1day"
// | "1week"
// | "1month"
// | "6months"
// | "1year";
}

/**
 * Defines the options for an object set operation
 * @export
 * @interface SetOptions
 */
abstract class SetOptions {
/**
 * Specify whether to cache the set object using its id as the cache key or not. If the object is cached and the timeout has expired, the cached object will automatically be removed from the cache.
 * @type {string}
 */
  late String cache;
// | "nocache"
// | "noexpiry"
// | "30sec"
// | "1min"
// | "2mins"
// | "5mins"
// | "10mins"
// | "15mins"
// | "30mins"
// | "1hour"
// | "6hours"
// | "12hours"
// | "1day"
// | "1week"
// | "1month"
// | "6months"
// | "1year";

/**
 * When you create a submodel object (a child object of a top-level object), you can specify whether to return the newly created child object or the updated top-level object.
 * @type {boolean}
 */
  late bool returnTop;
}

/**
 * Defines the options for an object append operation
 * @export
 * @interface AppendOptions
 */
abstract class AppendOptions {
/**
 * Specify whether to cache the appended object using its id as the cache key or not. If the object is cached and the timeout has expired, the cached object will automatically be removed from the cache.
 * @type {string}
 */
  late String cache;
// | "nocache"
// | "noexpiry"
// | "30sec"
// | "1min"
// | "2mins"
// | "5mins"
// | "10mins"
// | "15mins"
// | "30mins"
// | "1hour"
// | "6hours"
// | "12hours"
// | "1day"
// | "1week"
// | "1month"
// | "6months"
// | "1year";

/**
 * When you create a submodel object (a child object of a top-level object), you can specify whether to return the newly created child object or the updated top-level object.
 * @type {boolean}
 */
  late bool returnTop;
}

/**
 * Defines the options for an object delete operation
 * @export
 * @interface DeleteOptions
 */
abstract class DeleteOptions {
/**
 * Specify whether to remove deleted object from cache using deleted object id as the cache key.
 * @type {string}
 */
  late bool removeFromCache;

/**
 * In case if you delete a submodel object (a child object of a top-level object), you can specify whether to return the updated top-level object.
 * @type {boolean}
 */
  late bool returnTop;
}

/**
 * Defines the options for an object update operation
 * @export
 * @interface UpdateOptions
 */
abstract class UpdateOptions {
/**
 * Specify whether to cache the updated object using its id as the cache key or not. If the object is cached and the timeout has expired, the cached object will automatically be removed from the cache.
 * @type {string}
 */
  late String cache;
// | "nocache"
// | "noexpiry"
// | "30sec"
// | "1min"
// | "2mins"
// | "5mins"
// | "10mins"
// | "15mins"
// | "30mins"
// | "1hour"
// | "6hours"
// | "12hours"
// | "1day"
// | "1week"
// | "1month"
// | "6months"
// | "1year";

/**
 * In case if you update a submodel object (a child object of a top-level object), you can specify whether to return the newly updated child object or the updated top-level object.
 * @type {boolean}
 */
  late bool returnTop;
}
