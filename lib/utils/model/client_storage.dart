/**
 * Client lcoal storage handler definition. By default Atlogic client library uses Window.localStorage of the browser.
 *
 * If you prefer to use a different storage handler besides Window.localStorage or if you are using the Altogic client library at the server (not browser) then you need to provide your storage implementation.
 * This implementation needs to support mainly three methods, getItem, setItem and removeItem
 *
 * @interface ClientStorage
 */
abstract class ClientStorage {
  String? getItem(String key);
  setItem(String key, String value);
  removeItem(String key);
}
