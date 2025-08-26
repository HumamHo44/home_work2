// Create a program with a setting called API_URL that is empty. If it is empty, replace it with
// 'https://example.com'. Print the new value in capital letters.

void main() {
  String api = '';
  if (api.isEmpty) {
    api = 'https://example.com';
  }
  print(api.toUpperCase());
}
