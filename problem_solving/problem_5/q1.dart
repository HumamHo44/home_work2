//Given two strings s and t, return true if t is an anagram of s, and false otherwise.

void main() {
  Solution solution = Solution();
  print(solution.isAnagram('anagram', 'nagaram'));
  print(solution.isAnagram('rat', 'car'));
}

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<String> sortedS = s.split('')..sort();
    List<String> sortedT = t.split('')..sort();

    for (int i = 0; i < sortedS.length; i++) {
      if (sortedS[i] != sortedT[i]) return false;
    }

    return true;
  }
}
