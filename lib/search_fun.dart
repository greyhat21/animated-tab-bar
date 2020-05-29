import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{
  
  final greyhat = [
    "anonymous",
    "baywatch",
    "vulnerability scanner",
    "eot penetration",
    "flutter developer",
    "android tester",
    "web penetration",
    "siffy",
    "darknet",
    "techck",
    "webpen",
    "hacker101",
    "penetration tester",
    "greyhat21",
    "ethical trainer",
    "eot penetration",
    "asp.net",
    "UI UX developer",
    "system administrator",
    "shodan",
    "debian tester",
    "linux administrator",
    "flutter developer",
    "web app pentester",
    "system cracker",
    "animator",
    "3D gamer",
    "theme hacker",
    "exploiting man",
    "linux user",
  ];

   final recentgreyhat = [
     "3D gamer",
     "theme hacker",
     "siffy",
     "system cracker",
     "linux user",
   ];

  @override
  List<Widget> buildActions(BuildContext context) {
      return [IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = '';
      } )];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
       return IconButton(
         icon: AnimatedIcon(
           icon: AnimatedIcons.menu_arrow,
           progress: transitionAnimation,
           ),
           onPressed: () {
             close(context, null);
           });
       
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // show result based on the selection
      throw UnimplementedError();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
     final suggestionList = query.isEmpty?recentgreyhat
     :greyhat.where((g) => g.startsWith(query)).toList();

     return ListView.builder(
       itemBuilder: (context, index) => ListTile(
         leading: Icon(Icons.computer),
         title: RichText(text: TextSpan(
           text: suggestionList[index].substring(0,query.length),
           style: TextStyle(
             color: Colors.black, fontWeight: FontWeight.bold),
         children: [
           TextSpan(
           text: suggestionList[index].substring(query.length),
           style: TextStyle(color: Colors.grey))]  
         ),
         )
       ),
       itemCount: suggestionList.length,
       );
  }
}