void main() {
  String input = 'level'; 
  if (isPalindrome(input)) {
    print('"$input" is a palindrome.');
  } else {
    print('"$input" is not a palindrome.');
  }
}

bool isPalindrome(String str) {
  String cleanedStr = str.replaceAll(' ', '').toLowerCase();
  String reversedStr = cleanedStr.split('').reversed.join('');
  return cleanedStr == reversedStr;
}
