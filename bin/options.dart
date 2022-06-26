import 'dart:io';
import 'dart_final_project.dart';
import 'myabstract.dart';

//============================================================================================================================
//                                                       class -  view user Menu
//============================================================================================================================

class options extends MyAbstract {
//============================================================================================================================
//                                                             Home Page
//============================================================================================================================
  int counter =
      0; //it will count the number of wrong attempts, maximum attempt 3 time

  void homePage() {
    //The first thing when you run it will print these sentences,
    //then it will request from the user to write [next] to show the menu of operations.
    //if you enter the wrong input 3 times then it will stop the system

    print(
        " \n                                                     --------Welcome to Razan & Norah Bookstore--------      \n");

    print(
        "                                      --------you will find all the lovely books that you intrested with--------\n");

    print(
        "                                                            --------hope you injoy--------                      \n");

    print(
        "                                                                       ***   ***                                  ");
    print(
        "                                                                      ***** *****                                 ");
    print(
        "                                                                       *********                                  ");
    print(
        "                                                                         *****                                    ");
    print(
        "                                                                           *                                    \n");

    print("Please type [ Next ] to show the operations menu\n");
    String next = stdin.readLineSync()!;

    if (next.toLowerCase() == "next") {
      viewUserMenu();
      print(
          "____________________________________________________________________________________________________________________\n");
    } else if (counter < 2) {
      ++counter;
      print("\n   INVALID INPUT!!\nPlease try again  J.J");
      print(
          "____________________________________________________________________________________________________________________\n");
      homePage();
    } else {
      print(
          "\n      INVALID OUT OF RANGE. \nWRONG ANSWER TRIED A LOT OF TIMES. o_o\n");

      print(
          "____________________________________________________________________________________________________________________\n");

      exit(0);
    }
  } //end home Page

//============================================================================================================================
//                                                       view user Menu
//============================================================================================================================
  dynamic viewUserMenu() {
    //it displays an operations menu that has 8 choices...
    //it requests the number of operations and then will call the operation that I choose
    //if you enter the wrong input 3 times then it will stop the system

    var menu = [
      "View Books", //1
      'Add book', //2
      'Delete book', //3
      'Modify Book', //4
      'Search of Book that you need', //5
      'My Bag', //6
      'How are we :))', //7
      'Exit' //8
    ];
    print(
        "____________________________________________________________________________________________________________________\n");
    stdout.writeln("\n--------What are you looking for?--------\n");
    stdout.writeln("* Please select [NUMBER] of your operation\n");

    listOfOperation(menu);

    print('\n-----------------------------------------');
    //Scanner input
    int inputnumber = int.parse(stdin.readLineSync()!);
    print('\n-----------------------------------------');

    print(
        "____________________________________________________________________________________________________________________\n");

    if (inputnumber >= 1 && inputnumber <= 8) {
      counter = 0;
      option(inputnumber1: inputnumber);
    } else if (counter < 2) {
      ++counter;
      print("\n   INVALID INPUT!!\nPlease try again  J.J\n");
      viewUserMenu();
    } else {
      print(
          "\n      INVALID OUT OF RANGE. \nWRONG ANSWER TRIED A LOT OF TIMES. o_o\n");

      exit(0);
    }
  } //End view Menu

//============================================================================================================================
//                                                        options
//============================================================================================================================
  int option({required int inputnumber1}) {
    //hear will organize the options process by calling or print..
    while (inputnumber1 <= 8) {
      switch (inputnumber1) {
        case 1:
          print(
              "These are all the books that we have, hope you find the book you want...\n");

          ViewBook();

          print('\n-----------------------------------------\n');
          var listView = ['Back', "Exit"];

          listOfOperation(listView);

          print('\n-----------------------------------------\n');
          int input = int.parse(stdin.readLineSync()!);

          if (input == 1) {
            viewUserMenu();
          } else {
            exit(0);
          }

          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 2:
          addBooks();

          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 3:
          deleteBooks();

          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 4:
          modifyBooks();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 5:
          SearchOfBooks();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 6:
          myBag();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 7:
          print("This is one of the best bookstore in Tuwaiq Academy");
          print("-------------Hope you like everything--------------");
          print("---------------LOVE RAZAN & NORAH <3 --------------\n");

          print('-----------------------------------------');

          var listOfOperation = ['Back', 'Exit'];
          print("\n");
          listOfOperation.forEach((index) {
            print("${listOfOperation.indexOf(index) + 1}. ${index}");
          });
          print('-----------------------------------------');
          String Yes_No = stdin.readLineSync()!;
          int counter1 = 0;
          if (Yes_No.toLowerCase() == "yes" || Yes_No == "1") {
            viewUserMenu();
          } else {
            exit(0);
          }
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 8:
          print("thank you for visit our BookStore come again <3\n");
          print(
              "____________________________________________________________________________________________________________________\n");

          exit(0);
          break;
        //___________________________________________________________
        default:
          print("Please select from the number from menu try again ^~^ !\n");
          print(
              "____________________________________________________________________________________________________________________\n");
          break;
      }
    }
    return 0;
  } //end options

//============================================================================================================================
//                                                        view Book
//============================================================================================================================
  dynamic ViewBook() {
    //Here you will see all information of books in the Bookstore

    listOfOperation(Books);

    print(
        "____________________________________________________________________________________________________________________\n");
  } //end View Book

//============================================================================================================================
//                                                          Add book
//============================================================================================================================
  void addBooks() {
    //Here you can add any book you want and it will be in the list of books
    print(
        "\nHi there, please complete the 5 questions then the book will add automatically to the list of books.\n");

    print("\nPlease write Book Id:");
    print('\n-----------------------------------------\n');
    int id = int.parse(stdin.readLineSync()!);

    print("\nPlease write Book Title:");
    print('\n-----------------------------------------\n');
    String bookTitle = stdin.readLineSync()!;

    print("\nPlease write Author Name:");
    print('\n-----------------------------------------\n');
    String AuthorName = stdin.readLineSync()!;

    print("\nPlease write Price:");
    print('\n-----------------------------------------\n');
    double Price = double.parse(stdin.readLineSync()!);

    print("\nPlease write Quantity:");
    print('\n-----------------------------------------\n');
    int Quantity = int.parse(stdin.readLineSync()!);

    Books.add({
      "Book Id": id,
      "Book Title": bookTitle,
      "Author Name": AuthorName,
      "Price": Price,
      "Quantity": Quantity
    });

    print("\nyour book are add successfully!\n");
    print('\n-----------------------------------------\n');

    var listADD = ['Add more book', 'Back', 'Exit'];

    listOfOperation(listADD);

    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      addBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } //end add Books

//============================================================================================================================
//                                                          Delete book
//============================================================================================================================
  void deleteBooks() {
    //Here you can Delete any book you want and it will be gone from list of books
    print(
        "\nHi there, please write the [NUMBER] then the book will Delete automatically from the list of books.\n");

    ViewBook();
    print('\n-----------------------------------------\n');
    int id = int.parse(stdin.readLineSync()!);

    print("\nAre you sure you want to delete this book");

    var Yes_No = ['Yes', 'No'];
    print('\n-----------------------------------------\n');
    listOfOperation(Yes_No);
    print('\n-----------------------------------------\n');
    String in1 = stdin.readLineSync()!;

    if (in1.toLowerCase() == "yes" || in1 == "1") {
      Books.removeAt(--id);
      print("\nYour book are delete successfully!\n");
      print('\n-----------------------------------------\n');
    }

    var listDelete = ['Delete more book', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(listDelete);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      deleteBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } // end delete Books

//============================================================================================================================
//                                                          modify Books
//============================================================================================================================

  void modifyBooks() {
    //Here you can modify any of the 5 things in books information that will change from the list of books automatically

    print("What kind of book that you want to modify...");
    ViewBook();
    print('\n-----------------------------------------\n');

    int Row = int.parse(stdin.readLineSync()!);

    print("You want to modify...");
    print('\n-----------------------------------------\n');
    var Listmodify = [
      'Book Id',
      "Book Title",
      'Author Name',
      'Price',
      'Quantity'
    ];
    print('\n-----------------------------------------\n');
    listOfOperation(Listmodify);
    print('\n-----------------------------------------\n');

    int Column = int.parse(stdin.readLineSync()!);

    if (Column == 1) {
      print('\n-----------------------------------------\n');
      print("\nThe new Book ID is..");
      print('\n-----------------------------------------\n');
      int newId = int.parse(stdin.readLineSync()!);
      Books[--Row]['Book Id'] = newId;
      //
    } else if (Column == 2) {
      print('\n-----------------------------------------\n');
      print("\nThe new Book Title is..");
      print('\n-----------------------------------------\n');
      String newTitle = stdin.readLineSync()!;
      Books[--Row]["Book Title"] = newTitle;
      //
    } else if (Column == 3) {
      print('\n-----------------------------------------\n');
      print("\nThe new Author Name is..");
      print('\n-----------------------------------------\n');
      String newAuthor = stdin.readLineSync()!;
      Books[--Row]['Author Name'] = newAuthor;
      //
    } else if (Column == 4) {
      print('\n-----------------------------------------\n');
      print("\nThe new Price is..");
      print('\n-----------------------------------------\n');
      double newPrice = double.parse(stdin.readLineSync()!);
      Books[--Row]['Price'] = newPrice;
      //
    } else if (Column == 5) {
      print('\n-----------------------------------------\n');
      print("\nThe new Quantity is..");
      print('\n-----------------------------------------\n');
      int newQuantity = int.parse(stdin.readLineSync()!);
      Books[--Row]['Quantity'] = newQuantity;
    }

    var ListOfmodify = ['Modify more things', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(ListOfmodify);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      modifyBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } // end modify Books

//============================================================================================================================
//                                                            My Bag
//============================================================================================================================

  static List<Map> Bag =
      []; //save the books that were added when someone Search

  void myBag() {
    //here in my bag can be seen the saved books also he can buy it
    var Yes_No = ['Yes', 'No'];

    print('\n-----------------------------------------\n');
    listOfOperation(Bag);
    print('\n-----------------------------------------\n');
    if (Bag.isNotEmpty) {
      print("Are you sure you want to pay for these books?");

      print('\n-----------------------------------------\n');
      listOfOperation(Yes_No);
      print('\n-----------------------------------------\n');
      String pay1 = stdin.readLineSync()!;
      //

      if (pay1.toLowerCase() == 'yes' || pay1 == '1') {
        double x = 0.0;
        int z = 0;
        for (var element in Bag) {
          double y = Bag[z++]['Price'];
          x = x + y;
        }
        print(
            "Thank you for buying from our store <3 \nThe Price is: ${x} RAS");
        print(
            "____________________________________________________________________________________________________________________\n");
      } else {
        print(
            "Hi there, please write the [NUMBER] then the book will Delete automatically from the list of books.\n");

        print('\n-----------------------------------------\n');
        listOfOperation(Bag);
        print('\n-----------------------------------------\n');

        int num = int.parse(stdin.readLineSync()!);

        print("\nAre you sure you want to delete this book?");

        print('\n-----------------------------------------\n');
        listOfOperation(Yes_No);
        print('\n-----------------------------------------\n');
        String num1 = stdin.readLineSync()!;

        if (num1.toLowerCase() == "yes" || num1 == "1") {
          Bag.removeAt(--num);
          print("your book are delete successfully!\n");
        }

        var listDelete = ['My Bag', 'Back', 'Exit'];
        print('\n-----------------------------------------\n');
        listOfOperation(listDelete);
        print('\n-----------------------------------------\n');
        int input = int.parse(stdin.readLineSync()!);

        if (input == 1) {
          myBag();
        } else if (input == 2) {
          viewUserMenu();
        } else {
          exit(0);
        }
      }
    } else {
      print("\nThere are no books in your bag >~<\n");
    }

    var listmyBag = ['Search Of Books', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(listmyBag);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      SearchOfBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } //end my Bag

//============================================================================================================================
//                                                        Search Of Books
//============================================================================================================================
  late int Searchnum;
  void SearchOfBooks() {
    //A specific book is searched through 3 methods, depending on the choice

    var Searchmenu = ['Book Id', "Book Title", 'Author'];
    do {
      stdout.writeln("--------Type Of Search--------\n");
      print('\n-----------------------------------------\n');
      listOfOperation(Searchmenu);
      print('\n-----------------------------------------\n');
      Searchnum = int.parse(stdin.readLineSync()!);

      switch (Searchnum) {
        case 1:
          SearchOfIdBook();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 2:
          SearchOfBookTitle();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        case 3:
          SearchOfBookAuthor();
          print(
              "____________________________________________________________________________________________________________________\n");

          break;
        //___________________________________________________________
        default:
          print("Please select from the number from menu try again ~_~ ! ");
          print(
              "____________________________________________________________________________________________________________________\n");
          break;
      }
    } while (Searchnum < 1 && Searchnum > 3);
  } // End SearchOfBooks
//============================================================================================================================
//                                                    1-  Search by Book ID
//============================================================================================================================

  void SearchOfIdBook() {
    print("\nPlease enter book id...");
    print('\n-----------------------------------------\n');
    int SearchBI = int.parse(stdin.readLineSync()!);

    if (SearchBI >= 0 && SearchBI <= Books.length) {
      print("\nYour Book is: ${Books[--SearchBI]}");
      print(
          "____________________________________________________________________________________________________________________\n");

      print('\n-----------------------------------------\n');
      print("\nDo you want to add it in your bag?\n");
      var Yes_No = ['Yse', 'No'];
      listOfOperation(Yes_No);
      print('\n-----------------------------------------\n');

      String answer = stdin.readLineSync()!;
      if (answer.toLowerCase() == "yes" || answer == "1") {
        Bag.add(Books[SearchBI]);
      }
    }
    var ListSearchOfIdBook = ['Search Of Books', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(ListSearchOfIdBook);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      SearchOfBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } //end Search by Book id

//============================================================================================================================
//                                                    2-  Search by Book Title
//============================================================================================================================

  void SearchOfBookTitle() {
    print("\nPlease enter the title of book...");
    print('\n-----------------------------------------\n');
    String SearchBT = stdin.readLineSync()!;
    int x = 0;
    for (var i = 0; i < Books.length; i++) {
      if (SearchBT == Books[i]["Book Title"]) {
        print("\nYour Book is: ${Books[i]}\n");
        x++;
        print(
            "____________________________________________________________________________________________________________________\n");

        print('\n-----------------------------------------\n');
        print("\nDo you want to add it in your bag?\n");
        var Yes_No = ['Yse', 'No'];
        listOfOperation(Yes_No);
        print('\n-----------------------------------------\n');
        String answer = stdin.readLineSync()!;
        if (answer.toLowerCase() == "yes" || answer == "1") {
          Bag.add(Books[i]);
        } else {
          break;
        }
      }
    }

    if (x == 0) {
      print("\ninvalid input!!");
    }

    var SearchbyBookTitle = ['Search Of Books', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(SearchbyBookTitle);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      SearchOfBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } // end Search by Book Title
//============================================================================================================================
//                                                    3-  Search by Author Name
//============================================================================================================================

  void SearchOfBookAuthor() {
    print("\nPlease enter the Name of AuthorS...");
    print('\n-----------------------------------------\n');
    String SearchAN = stdin.readLineSync()!;
    int x = 0;
    for (var i = 0; i < Books.length; i++) {
      if (SearchAN == Books[i]["Author Name"]) {
        print("\nYour Book is: ${Books[i]}\n");
        x++;
        print(
            "____________________________________________________________________________________________________________________\n");

        print('\n-----------------------------------------\n');
        print("\nDo you want to add it in your bag?\n");
        var Yes_No = ['Yse', 'No'];
        listOfOperation(Yes_No);
        print('\n-----------------------------------------\n');
        String answer = stdin.readLineSync()!;
        if (answer.toLowerCase() == "yes" || answer == "1") {
          Bag.add(Books[i]);
        } else {
          break;
        }
      }
    }

    if (x == 0) {
      print("invalid input!!");
    }

    var SearchbyAuthorName = ['Search Of Books', 'Back', 'Exit'];
    print('\n-----------------------------------------\n');
    listOfOperation(SearchbyAuthorName);
    print('\n-----------------------------------------\n');
    int input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      SearchOfBooks();
    } else if (input == 2) {
      viewUserMenu();
    } else {
      exit(0);
    }
  } // end Search by Author Name

//============================================================================================================================
//                                                        override abstractSS
//============================================================================================================================

  @override
  String listOfOperation(var list) {
    // here will print any list
    list.forEach((index) {
      print("${list.indexOf(index) + 1}. ${index}");
    });
    return " ";
  }
}
