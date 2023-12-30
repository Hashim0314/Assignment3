import 'dart:io';
void main(){
  // ANSWER -01
  // print('Enter any number for print Multiplication Table');
  // int number = int.parse(stdin.readLineSync()!);
  // for(var i = 0; i <=10; i++){
  //   print('$number * $i = ${number*i}');
  // }

  //ANSWER -02
  List myList = <int>[1,2,3,4,5,6,7,8,9,10];
  List evenNumber = [];
  for(var i = 0; i<myList.length; i++){
    if(myList[i]%2==0){
     evenNumber.add(myList[i]);     
    }
  }
  print(evenNumber);

  //ANSWER - 03
  for(var loop = 0; loop <= 10; loop +=2){
    print(loop);
  }

  //ANSWER - 04
  List userLogin = [
  {'name' : 'asad' , 'pass' : '12345'},
  {'name' : 'admin' , 'pass' : '1234'},
  {'name' : 'login' , 'pass' : '0000'}
  ];
  bool validUser(String? username , String? Password){
   for(var user in userLogin){
    if(user['name'] == username && user['pass'] == Password){
      return true;
    }
   }
   return false;
  }

  for(var j = 1; j<=3 ; j++){
    print('Enter Username');
    String? username = stdin.readLineSync();
    print('Enter Password');
    String? password = stdin.readLineSync();
    if(validUser(username, password)){
      print('Successfuly Login \n ThankyOu for chossing Uss $username');
      break;
    }
    else {
      print('Invalid User and Password'); 
      print('You Attempt $j times');
    }
  }

  //ANSWER - 05
  print('Enter number for check prime number or not');
  int number = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  if(number <=1){
    isPrime = false;
  }
  else{
    for(int i = 2; i<=number /2; i++){
      if(number %i==0){
        isPrime = false;
        break;
      }
    }
  }
  if(isPrime){
    print('$number is prime number');
  }
  else{
    print('$number is not prime number');
  }
}