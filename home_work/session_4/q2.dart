// Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
// 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
void main() {
  Map<String, String> countryCodes = {'Egypt': 'EG'};

  countryCodes['Qatar'] = 'QA';
  print(countryCodes);
  print(countryCodes..keys.length);

  if (countryCodes.containsValue('JO')) {
    print('Jordan is here');
  } else {
    print('Jordan missing');
  }
}
