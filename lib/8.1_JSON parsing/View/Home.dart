import 'package:adv_ch_json_parsing/8.1_JSON%20parsing/Provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    JSONProvider jsonProvider = Provider.of<JSONProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('JSON DATA',style: TextStyle(color: Colors.white,fontSize: 36),),
      ),
        body: SizedBox(
      height: h * 1,
      width: w * 1,
      child: ListView.builder(
        itemCount: jsonProvider.photolist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(

              backgroundImage:
                  NetworkImage('${jsonProvider.photolist[index].url}'),

            ),
            title: Text('${jsonProvider.photolist[index].title}'),
          );
        },
      ),
    ));
  }
}
