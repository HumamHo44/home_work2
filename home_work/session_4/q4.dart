// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length.
void main() {
  Map<String, String> phoneNumber = {};
  String? phone = phoneNumber['phone'];
  if (phone == null) {
    print('phone number is null');
  }
  phoneNumber['phone'] = "05555555";
  print(phoneNumber.length);
}
