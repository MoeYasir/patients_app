import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class DoctorTab extends StatefulWidget {
  const DoctorTab({Key? key}) : super(key: key);

  @override
  State<DoctorTab> createState() => _DoctorTabState();
}

class _DoctorTabState extends State<DoctorTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
        title: Text(
          'All Doctors :',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              shadowColor: Colors.black,
              child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FutureBuilder(
                      future: Future.wait([getR(), getRe()]),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasData) {
                            return Column(
                              children: [
                                Center(
                                    child: Text(
                                  snapshot.data[1][0]['username'].toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                ))
                              ],
                            );
                          } else {
                            return Text('No Data available!');
                          }
                        } else {
                          return CircularProgressIndicator();
                        }
                      })),
            ),
          )
        ],
      ),
    );
  }

  Future getR() async {
    // final List<ParseObject>allObjects = ArrayList<ParseObject>();
    // final ParseQuery parseQuery = new ParseQuery("UserDetails");
    // parseQuery.setLimit(1000);
    // parseQuery.findInBackground(getAllObjects());
    //

    QueryBuilder queryBuilder =
        QueryBuilder<ParseObject>(ParseObject('DoctorDetails'))
          ..orderByDescending('createdAt');
    queryBuilder.setLimit(10000);
    var response = await queryBuilder.query();
    return response.result;
  }

  Future getRe() async {
    // final List<ParseObject>allObjects = ArrayList<ParseObject>();
    // final ParseQuery parseQuery = new ParseQuery("UserDetails");
    // parseQuery.setLimit(1000);
    // parseQuery.findInBackground(getAllObjects());
    //

    QueryBuilder queryBuilder = QueryBuilder<ParseObject>(ParseObject('_User'))
      ..orderByDescending('createdAt');
    queryBuilder.setLimit(10000);
    var response = await queryBuilder.query();
    return response.result;
  }
}
