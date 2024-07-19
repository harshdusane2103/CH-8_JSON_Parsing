import 'package:adv_ch_json_parsing/User_JSON/Provider/userprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Userprovider userprovider = Provider.of<Userprovider>(context);


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('USER JSON DATA', style: TextStyle(color: Colors.white),),
        ),

        // body: ListView.builder(itemCount: userprovider.Userlist.length,
        // itemBuilder: (context, index) =>ListTile(
        //   title: Text('${userprovider.Userlist[index].name}'),
        //   subtitle: Text('${userprovider.Userlist[index].company.name}'),
        //   leading: Text('${userprovider.Userlist[index].id}'),
        //   trailing: Text('${userprovider.Userlist[index].address.city}   ${userprovider.Userlist[index].address.geo.lat}'),
        // ),),

        body: SingleChildScrollView(
          child: Column(

              children: [
                ...List.generate(userprovider.Userlist.length, (index) =>
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(


                        height: 330,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red.shade100),
                          color: Colors.blue.shade50,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('USER ID :' + '${userprovider.Userlist[index]
                                  .id}', style: TextStyle(
                                  color: Colors.black, fontSize: 16),),


                              Text('NAME : ' + '${userprovider.Userlist[index]
                                  .name}', style: TextStyle(
                                  color: Colors.black, fontSize: 16),),

                              Text('USER NAME : ' +
                                  '${userprovider.Userlist[index].username}',
                                style: TextStyle(color: Colors.black),),
                              Text('E-MAIL : ' +
                                  '${userprovider.Userlist[index].email}',
                                style: TextStyle(color: Colors.black),),
                              Text('ADDRESS :' + '', style: TextStyle(
                                  color: Colors.black, fontSize: 16),),


                              Text('${userprovider.Userlist[index].address.suite}'+','
                                  +'${userprovider.Userlist[index].address.street}'+',' +'${userprovider.Userlist[index].address.city}',style: TextStyle(color: Colors.black,fontSize: 16),),

                                Text('${userprovider.Userlist[index].address.zipcode}', style: TextStyle(color: Colors.black),),
                                Text('GEO:', style: TextStyle(color: Colors.black),),
                                Text('LAT :'+'${userprovider.Userlist[index].address.geo.lat}', style: TextStyle(color: Colors.black),),
                                Text('LAG :'+'${userprovider.Userlist[index].address.geo.lng}', style: TextStyle(color: Colors.black),),
                              Text('COMPANY :', style: TextStyle(color: Colors.black),),
                              Text('NAME :'+'${userprovider.Userlist[index].company.name}', style: TextStyle(color: Colors.black),),
                              Text('BS :'+'${userprovider.Userlist[index].company.bs}', style: TextStyle(color: Colors.black),),
                              Text('CATCHPHRASHE :'+'${userprovider.Userlist[index].company.catchPhrase}', style: TextStyle(color: Colors.black),),

                            ],
                          ),
                        ),
                      ),
                    ),
                )
              ]

          ),
        )

    );
  }
}
