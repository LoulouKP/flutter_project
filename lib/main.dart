import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Person person = new Person(size: 180);
  print(person.name);
}

class Person {
  String? name;
  int? age;
  String? sex;
  int? size;

  Person({this.name, this.age, this.sex, this.size});
}
Person person1= new Person(name: "Jonathan", age: 21, sex: "M", size: 184 );
Person person2= new Person(name: "Mendel", age: 18, sex: "M", size: 154 );
Person person3= new Person(name: "Sephora", age: 18, sex: "F", size: 124 );
Person person4= new Person(name: "Michkath", age: 19, sex: "F", size: 174 );
Person person5= new Person(name: "Ismael", age: 20, sex: "M", size: 188 );
Person person6= new Person(name: "Peniel", age: 19, sex: "M", size: 154 );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var names=[person1,person2,person3,person4,person5,person6];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mon app"),
          backgroundColor: Color(0xFFB9F6CA),
        ),
        body:  ListView(
            children: [

              ... names.map((e) =>
                  ListTile(
                    leading: CircleAvatar(backgroundImage:  NetworkImage ('https://img.freepik.com/free-photo/rear-view-content-teenage-girl-with-toothy-smile_273609-44948.jpg?t=st=1709821602~exp=1709825202~hmac=2089727639d5f11526abfb6ed853e72240a62a621e0841c4eb957d413bf88987&w=740'),),
                    title: Text(e.name.toString() ),
                    subtitle: Text("Agé(e) de "+e.age.toString()+" ,de sexe "+e.sex.toString()+" et a pour taille "+e.size.toString()+" cm"),
                  )
              ).toList()

            ]

        ),
        bottomNavigationBar:  NavigationBar(
          selectedIndex: 1,

          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'search',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favoris',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.save),
          onPressed: () {  },),
      ),
    );
  }
}