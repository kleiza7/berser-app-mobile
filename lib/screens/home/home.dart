import 'package:berser_app_mobile/apis/api.dart';
import 'package:berser_app_mobile/models/project.dart';
import 'package:berser_app_mobile/screens/detailsPage/detailsPage.dart';

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/projectCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Show Your Projects"),
          centerTitle: true,
          backgroundColor: bgColor,
        ),
        body: Container(
          decoration: BoxDecoration(gradient: kPrimaryGradient),
          child: FutureBuilder(
              future: Api.fetchProjects(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        Project project = snapshot.data[index];

                        return ProjectCard(
                            size: size,
                            project: project,
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(project: project))));
                      });
                } else if (snapshot.hasError) {
                  return Text("${snapshot.hasError}");
                }
                return Center(child: CircularProgressIndicator());
              }),
        ));
  }
}
