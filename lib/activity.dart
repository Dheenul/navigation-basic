// // // class Todo {
// // //   int userid;
// // //   String title;
// // //   String description;
// // //   Todo({
// // //     required this.userid,
// // //     required this.title,
// // //     required this.description
// // //   })

// // // }
// // // ignore_for_file: public_member_api_docs, sort_constructors_first
// // import 'dart:async';

// // import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// enum example{
//   dheen,
//   ravi,
//   jhon
// }
// class Todo {
//   int userid;
//   String title;
//   String description;
//   Todo({
//     required this.userid,
//     required this.title,
//     required this.description,
//   });
// }

// void main() {

//   Todo todo = Todo(userid: 1, title: 'title', description: 'description');
//   List<Todo> collectionOfTodos = [
//     Todo(userid: 1, title: "title", description: "description"),
//     Todo(userid: 1, title: "qwerty", description: "qwerg"),
//     Todo(
//         userid: 1,
//         title: "12345678ijhgfdew",
//         description: "wedfghjhgfdewertghj"),
//     Todo(userid: 2, title: "title", description: "description"),
//     Todo(userid: 2, title: "qwerty", description: "qwerg"),
//     Todo(
//         userid: 2,
//         title: "12345678ijhgfdew",
//         description: "wedfghjhgfdewertghj"),
//   ];
//   for (int i = 0; i < collectionOfTodos.length; i++) {
//     if (collectionOfTodos[i].userid == 1) {
//       print(collectionOfTodos[i].title);
//     }
//   }
//   print(example.values);
//   print(collectionOfTodos.where((element) => element.userid == 1));
//   // print(collectionOfTodos.where((element) {
//   //   if (element.userid == 1) {
//   //     print(element.title);
//   //   }
//   // }));
//   // collectionOfTodos.where((element) => );
//   // print("Print todo's title of user having id as '1' ");
//   // print(collectionOfTodos);
// }
// // import 'package:navigation/extension.dart';

// // class Class1 {
// //   int a = 10;
// // }

// // extension Ex1 on int {
// //   method() {
// //     print(this);
// //   }
// // }

// // void main(List<String> args) {
// //   Class1 class1 = Class1();
// //   int a = 10;
// //   a.method();
// // }
class Todo {
  int userid;
  String title;
  String description;
  Todo({
    required this.userid,
    required this.title,
    required this.description,
  });
}

void main() {
  Todo todo = Todo(userid: 1, title: 'title', description: 'description');
  List<Todo> collectionOfTodos = [
    Todo(userid: 1, title: "title", description: "description"),
    Todo(userid: 1, title: "qwerty", description: "qwerg"),
    Todo(
        userid: 1,
        title: "12345678ijhgfdew",
        description: "wedfghjhgfdewertghj"),
    Todo(userid: 2, title: "title", description: "description"),
    Todo(userid: 2, title: "qwerty", description: "qwerg"),
    Todo(
        userid: 2,
        title: "12345678ijhgfdew",
        description: "wedfghjhgfdewertghj"),
  ];
//   for (int i = 0; i < collectionOfTodos.length; i++) {
//     if (collectionOfTodos[i].userid == 1) {
//       print(collectionOfTodos[i].title);
//     }
//   }
  collectionOfTodos.forEach((element) {
    if (element.userid == 1) {
      print(element.title);
    }
    // return element.userid == 1;
  });
//   collectionOfTodos.where((element)=>element.userid == 1? print(element.title):)
  // print(collectionOfTodos.where((element) {
  //   if (element.userid == 1) {
  //     print(element.title);
  //   }
  // }));
  // collectionOfTodos.where((element) => );
  // print("Print todo's title of user having id as '1' ");
  // print(collectionOfTodos);
}
