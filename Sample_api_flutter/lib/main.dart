import 'package:flutter/material.dart';
import 'package:flutter_simple_api_integration/person.dart';
import 'package:flutter_simple_api_integration/people_api.dart';
import 'package:flutter_simple_api_integration/details.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Api',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Api Integration')),
        body: new PeopleWidget(),
      ),
    );
  }
}

class PeopleWidget extends StatefulWidget {
  @override
  _PeopleWidgetState createState() => _PeopleWidgetState();

}

class _PeopleWidgetState extends State<PeopleWidget> {

  PeopleApi _api = new PeopleApi();
  List<Person> _people;

  @override
  void initState() {
    super.initState();
    getPerson();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _people == null
          ? CircularProgressIndicator()
          : ListView.builder(
          itemCount: _people.length,
          itemBuilder: (BuildContext context, int index) {
            Person person = _people[index];

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => new DetailsPeople(person))
                );
              },
              child: ListTile (
                title: Text("${person.name}"),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  backgroundImage: NetworkImage("${person.urlImage}"),
                ),
              ),
            );
          }
      ),
    );
  }

  void getPerson() async {
    _people = await _api.loadJsonFromApi();
    setState(() {});
  }
}