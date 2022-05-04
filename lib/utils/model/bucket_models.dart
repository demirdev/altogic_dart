/**
 * Defines the structure how to get app buckets
 * @export
 * @interface BucketListOptions
 */
abstract class BucketListOptions {
/**
 * A positive integer that specifies the page number to paginate bucket results. Page numbers start from 1.
 * @type {(number | null | undefined)}
 */
  num? page;
/**
 * A positive integer that specifies the max number of buckets to return per page
 * @type {(number | null | undefined)}
 */
  num? limit;
/**
 * Specifies the field name and sort direction for sorting returned buckets
 * @type {(BucketSortEntry | null | undefined)}
 */
  BucketSortEntry? sort;
/**
 * Flag to specify whether to return the count and pagination information such as total number of buckets, page number and page size
 * @type {boolean}
 */
  late bool returnCountInfo;
}

/**
 * Defines the structure of a bucket sort entry
 * @export
 * @interface BucketSortEntry
 */
abstract class BucketSortEntry {
/**
 * The name of the bucket field that will be used in sorting the returned objects
 * @type {string}
 */
// : "name" | "isPublic" | "createdAt" | "updatedAt";
  late String field;
/**
 * Sort direction
 * @type {string}
 */
// : "asc" | "desc";
  late String direction;
}

/**
 * Defines the structure how to get the files of a bucket
 * @export
 * @interface FileListOptions
 */
abstract class FileListOptions {
/**
 * A positive integer that specifies the page number to paginate file results. Page numbers start from 1.
 * @type {(number | null | undefined)}
 */
  num? page;
/**
 * A positive integer that specifies the max number of files to return per page
 * @type {(number | null | undefined)}
 */
  num? limit;
/**
 * Specifies the field name and sort direction for sorting returned files
 * @type {(FileSortEntry | null | undefined)}
 */
  late FileSortEntry? sort;
/**
 * Flag to specify whether to return the count and pagination information such as total number of files, page number and page size
 * @type {boolean}
 */
  late bool returnCountInfo;
}

/**
 * Defines the structure of a file sort entry
 * @export
 * @interface FileSortEntry
 */
abstract class FileSortEntry {
/**
 * The name of the file field that will be used in sorting the returned objects
 * @type {string}
 */
// | "bucketId"
// | "fileName"
// | "size"
// | "encoding"
// | "mimeType"
// | "isPublic"
// | "publicPath"
// | "uploadedAt"
// | "updatedAt";
  late String field;
/**
 * Sort direction
 * @type {string}
 */
// : "asc" | "desc";
  late String direction;
}

/**
 * Defines the options available that can be set during file upload
 * @export
 * @interface FileUploadOptions
 */
abstract class FileUploadOptions {
/**
 * The `Content-Type` header value. This value needs to be specified if using a `fileBody` that is neither `Blob` nor `File` nor `FormData`, otherwise will default to `text/plain;charset=UTF-8`.
 * @type {string}
 */
  late String contentType;
/**
 * Specifies whether file is publicy accessible or not. Defaults to the bucket's privacy setting if not specified.
 * @type {boolean}
 */
  late bool isPublic;
/**
 * Specifies whether to create the bucket while uploading the file. If a bucket with the provided name does not exists and if `createBucket` is marked as true then creates a new bucket. Defaults to false.
 * @type {boolean}
 */
  late bool createBucket;
/**
 * Callback function to call during file upload.
 *
 * **For the moment, this method can only be used in clients where `XMLHttpRequest` object is available (e.g., browsers).**
 * @param uploaded Total bytes uploaded
 * @param total Total size of file in bytes
 * @param percentComplete Percent uploaded (an integer between 0-100), basicly `uploaded/total` rounded to the nearest integer
 */
  dynamic onProgress(num uploaded, num total, num percentComplete);
}
