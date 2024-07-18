import 'package:adv_ch_json_parsing/8.1_JSON%20parsing/Provider/provider.dart';
import 'package:adv_ch_json_parsing/8.1_JSON%20parsing/View/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => JSONProvider(),)
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Homepage(),
      
        },
      ),
    );
  }
}

