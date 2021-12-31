// ignore_for_file: avoid_print

import 'dart:math';
import 'dart:io';

class Game{
  int? _answer;
  int count = 0;
  static List<int> myList = [];

  Game({int? maxRandom=100}){
    var r = Random();
    _answer = r.nextInt(maxRandom!)+1;
  }

  int doGuess(int num){
    count++;
    if(num > _answer!){
      return 1;
    }else if(num < _answer!){
      return -1;
    }else {
      return 0;
    }
  }

  bool again(){
    while(true) {
      myList.add(count);
      stdout.write(' Play Again? (y/n) : ');
      String? input2 = stdin.readLineSync();

      if(input2 == 'y' || input2 == 'Y') {
        return true;
      }else if(input2 == 'n' || input2 == 'N'){
        return false;
      }
    }
  }
}
