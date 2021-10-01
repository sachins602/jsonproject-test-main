
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class SearchResultsContainer extends StatefulWidget {
  final String suggestions;
  SearchResultsContainer({Key? key, required this.suggestions}) : super(key: key);

  @override
  _SearchResultsContainerState createState() => _SearchResultsContainerState();
}

class _SearchResultsContainerState extends State<SearchResultsContainer> {
  late String suggestions;
  String? stringResponse;
  Future getIndividualCompanyData() async {
    http.Response response;
    response = await http.get(
        Uri.parse('http://10.0.2.2:5000/company/$suggestions'));
    if(response.statusCode==200){
      setState(() {
        stringResponse = response.body;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width:300,
      child: Text("hello"),
    );
  }
}


// class IndividualCompanyApi {
//   static Future getIndividualCompanyData() {
//     return http.get(Uri.parse("http://10.0.2.2:5000/company/hdl"));
//   }
// }