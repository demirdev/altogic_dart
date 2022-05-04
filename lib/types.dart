import 'utils/model/client_storage.dart';
import 'utils/model/user_agent.dart';

/**
 * Represents a basic javascript object with key-value pairs
 * @export
 * @interface KeyValuePair
 */
// export interface KeyValuePair {
// [key: string]: any;
// }
// TODO: js deki karsiligi bu degil gibi
typedef KeyValuePair = Map<String, dynamic>;

/**
 * Provides info about a user.
 * @export
 * @interface User
 */
abstract class User {
/**
 * The unique identifier of the user
 * @type {string}
 */
  late String _id;
/**
 * The authentication provider name, can be either Altogic, Google, Faceboo, Twitter etc.
 * @type {string}
 */
  late String provider;
/**
 * The user id value that is retrieved from the provider after successful user authentication. The format of this field value can be different for each provider. If the provider is Altogic, providerUserId and _id values are the same.
 * @type {string}
 */
  late String providerUserId;
/**
 * Users email address
 * @type {string}
 */
  late String email;
/**
 * Users password, valid only if Altogic is used as the authentication provider.
 * @type {string}
 */
  String? password;
/**
 * Users password, valid only if Altogic is used as the authentication provider. Should be at least 6 characters long.
 * @type {string}
 */
  String? profilePicture;
/**
 * The name of the user
 * @type {string}
 */
  String? name;
/**
 * The last login date and time of the user. For each successful sign-in, this field is updated in the database.
 * @type {string}
 */
  late String lastLoginAt;
/**
 * The sign up date and time of the user
 * @type {string}
 */
  late String signUpAt;
}

/**
 * Keeps session information of a specific user
 * @export
 * @interface Session
 */
abstract class Session {
/**
 * The id of the application end user this session is associated with
 * @type {string}
 */
  late String userId;

/**
 * Unique session token string
 * @type {string}
 */
  late String token;

/**
 * Creation date and time of the session token
 * @type {string}
 */
  late String creationDtm;

/**
 * Access group keys associated with this user session. With access groups you can assign roles to users and their sessions and enabled role based access control to your app endpoints
 * @type {string[]}
 */
  late List<String> accessGroupKeys;

/**
 * The user-agent (device) information of the user's session
 * @type {object}
 */
  late UserAgent userAgent;
}

/**
 * The options that can be passed to the Altogic client instance
 *
 * @export
 * @interface ClientOptions
 */
abstract class ClientOptions {
/**
 * The unique app environment API Key which needs to be created using the Altogic app designer. The `apiKey`is passed in *Authorization Header* when making RESTful API calls to your app endpoints. This key is different than the `clientKey` used when creating an instance of Altogic client library. `clientKey` is primarily used to manage access rigths of the client library whereas `apiKey` is used to manage access to your app endpoints.
 * @type {string}
 */
  String? apiKey;

/**
 * Client storage handler to store user and session data. By default uses Window.localStorage of the browser. If client is not a browser then you need to provide an object with setItem(key:string, data:object), getItem(key:string) and removeItem(key:string) methods to manage user and session data storage.
 * @type Storage
 */
  ClientStorage? localStorage;

/**
 * The sign in page URL to redirect the user when user's session becomes invalid. Altogic client library observes the responses of the requests made to your app backend. If it detects a response with an error code of missing or invalid session token, it can redirect the users to this signin url.
 * @type {string}
 */
  String? signInRedirect;
}
