// Write a Dart program that applies discounts to a price. Use nested if/else to apply different
// discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
// Print the final price.
void main() {
  double price = 20.50;
  bool isStudent = true;
  bool hasCoupon = true;
  double threshold = 100.0;

  if (isStudent && hasCoupon) {
    price = price * 0.5;
    print('student + Coupon: 50%');
  } else if (isStudent) {
    price = price * 0.9;
    print('student discount: 10%');
  } else if (hasCoupon) {
    price = price * 0.8;
    print('coupon discount: 20%');
  } else if (price > threshold) {
    price = price * 0.95;
    print('high price discount: 5%');
  } else {
    print('No discount');
  }

  print('Final price: $price');
}
