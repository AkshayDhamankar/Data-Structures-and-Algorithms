import "dart:math";
void main(){
  String reverseString(str){
    if(str == null  || str is! String || str.length < 1){
      return  "Enter proper string to reverse";
    }

    List strList = List(str.length);

    int pos = 0;
    for(int i = str.length - 1;i >= 0;i--){
      strList[pos] = str[i];
      pos += 1;
    }

    return strList.join();
  }
// Using built in method
  String reverseString2(String s) {
  return s.split('').reversed.join();
}


  print(reverseString("Hello World!"));
  print(reverseString2("Hello World! 2"));
  print(reverseString(null));
  print(reverseString(""));
  print(reverseString(123));
}