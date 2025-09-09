// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

void main() {
  List<int> nums = [1, 2, 3, 1];

  print(Solution().containsDuplicate(nums));
  List<int> nums2 = [1, 2, 3, 4];

  print(Solution().containsDuplicate(nums2));

  List<int> nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];

  print(Solution().containsDuplicate(nums3));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> seenNumbers = {};
    for (var numbers in nums) {
      if (seenNumbers.contains(numbers)) {
        return true;
      }
      seenNumbers.add(numbers);
    }
    return false;
  }
}
