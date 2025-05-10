import 'package:flutter/material.dart';
import 'package:student_app/data/datasource.dart';
import 'package:student_app/models/student.dart';
import 'package:student_app/widgets/student_card.dart';

class Readpage extends StatefulWidget {
  const Readpage({super.key});

  @override
  State<Readpage> createState() => _ReadpageState();
}

class _ReadpageState extends State<Readpage> {
  late Future<List<Student>> studentDetailsListFuture;

  @override
  void initState() {
    super.initState();
    studentDetailsListFuture = fetchData();
  }

  Future<List<Student>> fetchData() async {
    try {
      List<Student> result = await Database().getStudentDetails();
      print(result[0].name);
      return result;
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read'),
        centerTitle: true,
      ),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return SafeArea(
      child: FutureBuilder(
        future: studentDetailsListFuture,
        builder: (context, AsyncSnapshot<List<Student>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Text('No data available');
          } else {
            return _buildListView(snapshot.data!);
          }
        },
      ),
    );
  }

  _buildListView(List<Student> students) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return StudentCard(
                name: students[index].name,
                id: students[index].id,
                degree: students[index].degree,
              );
            },
          ),
        ),
      ],
    );
  }
}
