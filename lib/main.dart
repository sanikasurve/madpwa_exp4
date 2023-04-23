import 'package:flutter/material.dart';
import 'Books.dart';
void main() {
  runApp(MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Books> books =[
    Books(bname:"Normal People",writer:"Sally Rooney"),
    Books(bname:"One Indian Girl",writer:"Chetan Bhagat"),
    Books(bname:"Atomic Habits",writer:"James Clear"),
  ];

  Widget bookTemplate(bname){
    return Card(

        margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Text(bname.book),
              SizedBox(height: 10.0,),
              Text(bname.author),
            ],
          ),
        )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text ("Books"),
        centerTitle: true,
      ),
      body: Column(
        children: books.map((bname) => bookTemplate(bname)).toList(),
      ),

    );
  }
}


