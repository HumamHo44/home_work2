/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid
Q7
Ask the user to input a list o
*/
void main() {
  print(isValid("()"));
  print(isValid("()[]{}"));
  print(isValid("(]"));
  print(isValid("([)]"));
  print(isValid("{[]}"));
}

bool isValid(String s) {
  List<String> characters = [];
  for (var char in s.split('')) {
    if (char == '(' || char == '{' || char == '[') {
      characters.add(char);
    } else if (char == ')' || char == '}' || char == ']') {
      if (characters.isEmpty) return false;
      String last = characters.removeLast();
      if ((char == ')' && last != '(') ||
          (char == '}' && last != '{') ||
          (char == ']' && last != '[')) {
        return false;
      }
    }
  }
  return characters.isEmpty;
}
