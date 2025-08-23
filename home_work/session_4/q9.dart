// Write a Dart program that formats a price tag string with a currency. Apply string methods such as
// toString, padLeft, and length to format and compare the results.
void main() {
  double price = 45.5;
  String priceStrint = price.toString();
  print(priceStrint);
  String padString = priceStrint.padLeft(7, '5');
  print(padString);

  print(padString.length);

  String finalPrice = '\$' + padString;
  print(finalPrice);
}
