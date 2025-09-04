// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama"));
}

bool isPalindrome(String s) {
  // Convert the text to lowercase and keep only letters and numbers
  String cleaned = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  // Compare the text with its inverse
  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;
}
