//
//
import 'dart:io';

import 'options.dart';

List<Map> Books = [];

//============================================================================================================================
//                                                        Main
//============================================================================================================================
void main() {
  //ADD some books in list
  //the important thing to run the program and all operations into the main .
  Books.add({
    "Book Id": 1,
    "Book Title": "Start with why",
    "Author Name": "Simon Sinek",
    "Price": 80.0,
    "Quantity": 13
  });

  Books.add({
    "Book Id": 2,
    "Book Title": "But how do it know",
    "Author Name": "J.Clark Scott",
    "Price": 59.9,
    "Quantity": 22
  });

  Books.add({
    "Book Id": 3,
    "Book Title": "Clean Code",
    "Author Name": " Robert Cecil Martin",
    "Price": 50.0,
    "Quantity": 5
  });

  Books.add({
    "Book Id": 4,
    "Book Title": "Zero to One",
    "Author Name": "Peter Thiel",
    "Price": 45.0,
    "Quantity": 12
  });

  Books.add({
    "Book Id": 5,
    "Book Title": "You don't know JS",
    "Author Name": "Kyle Simpson",
    "Price": 39.9,
    "Quantity": 9
  });

  //call
  var homePage = options();
  homePage.homePage();
} //end main




