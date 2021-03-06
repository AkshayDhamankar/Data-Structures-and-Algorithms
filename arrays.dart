import "dart:math";
void main(){
  var myArray = MyArray();
  myArray.push(1);
  myArray.push(2);
  myArray.push("Hello");
  myArray.push("World");
  myArray.push("123");
  print(myArray.pop());
  print(myArray.elementAt(10));
  myArray.deleteItemAt(4);
}

class MyArray {
  int length;
  var data;
  int capacity;
  MyArray(){
    this.length = 0;
    this.capacity = 1;
    this.data = List(this.capacity);
  }

  // push element
  void push(item){
    if(capacity == length){
      capacity = capacity * 2;
      var tempData = List(capacity);
      for(int i = 0 ; i < length ; i++){
        tempData[i] = data[i];
      } 
      this.data = tempData;
    }
    this.data[length] = item;
    length++;
    print(data);
  }

  // get length of array
  int get getLength => this.length;

  // pop element from array
  dynamic pop() {
    if(length == 0){
      return "Empty array";
    }
    var ele = data[length-1];
    data[length-1] = null;
    length--;
    print(data);
    return ele;
  }

  // delete element from array at index
  void deleteItemAt(index){
    if(length == 0 || index > length){
      print("Wrong input");
      return;
    }
    for(int i = index; i < length; i++){
      data[i] = data[i+1];
    }
    data[length-1] = null;
    length--;
    print(data);
  }

  // get element at position
  dynamic elementAt(int index) => index < length ? data[index] : "No Element at this position";

}
