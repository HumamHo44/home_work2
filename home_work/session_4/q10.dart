// Write a Dart program that reads environment variables from a map. If a value is null, replace it with
// a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
// conditions.
void main() {
  Map<String, String?> envVars = {
    'appname': 'MyApp',
    'version': null,
    'env': 'production',
    'debug': null,
  };

  String version = envVars['version'] ?? '2';
  String debug = envVars['debug'] ?? 'error';

  print(version.toUpperCase());
  print(debug.toUpperCase());

  if (version.toLowerCase() == 'version') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
