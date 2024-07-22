//
// import 'package:adv_ch_json_parsing/Post/Provider/post_provider.dart';
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class HomeScreenPost extends StatelessWidget {
//   const HomeScreenPost({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     PostProvider postProvider=Provider.of<PostProvider>(context);
//     return Scaffold(appBar: AppBar(
//       backgroundColor: Colors.blue,
//       centerTitle: true,
//       title: Text('POST JSON DATA', style: TextStyle(color: Colors.white),),
//     ),
//
//         body: ListView.builder(itemCount: postProvider.postModal.posts.length,
//         itemBuilder: (context, index) =>ListTile(
//         title: Text('${postProvider.postModal.posts[index].title}'),
//     subtitle: Text('${postProvider.postModal.posts[index].views}'),
//     leading: Text('${postProvider.postModal.posts[index].id}'),
//     trailing: Text('${postProvider.postModal.posts[index].reaction.likes}   ${postProvider.postModal.posts[index].reaction.dislikes}'),
//         ),),
//
//         // body: SingleChildScrollView(
//         //   child: Column(
//         //
//         //       children: [
//         //         ...List.generate(postProvider.postModal.posts., (index) =>
//         //             Padding(
//         //               padding: const EdgeInsets.all(12.0),
//         //               child: Container(
//         //
//         //
//         //                 height: 330,
//         //                 width: 380,
//         //                 decoration: BoxDecoration(
//         //                   borderRadius: BorderRadius.circular(10),
//         //                   border: Border.all(color: Colors.red.shade100),
//         //                   color: Colors.blue.shade50,
//         //                 ),
//         //                 child: Padding(
//         //                   padding: const EdgeInsets.all(8.0),
//         //                   child: Column(
//         //                     crossAxisAlignment: CrossAxisAlignment.start,
//         //                     children: [
//         //                       Text('USER ID :' + '${userprovider.Userlist[index]
//         //                           .id}', style: TextStyle(
//         //                           color: Colors.black, fontSize: 16),),
//         //
//         //
//         //                       Text('NAME : ' + '${userprovider.Userlist[index]
//         //                           .name}', style: TextStyle(
//         //                           color: Colors.black, fontSize: 16),),
//         //
//         //                       Text('USER NAME : ' +
//         //                           '${userprovider.Userlist[index].username}',
//         //                         style: TextStyle(color: Colors.black),),
//         //                       Text('E-MAIL : ' +
//         //                           '${userprovider.Userlist[index].email}',
//         //                         style: TextStyle(color: Colors.black),),
//         //                       Text('ADDRESS :' + '', style: TextStyle(
//         //                           color: Colors.black, fontSize: 16),),
//         //
//         //
//         //                       Text('${userprovider.Userlist[index].address.suite}'+','
//         //                           +'${userprovider.Userlist[index].address.street}'+',' +'${userprovider.Userlist[index].address.city}',style: TextStyle(color: Colors.black,fontSize: 16),),
//         //
//         //                       Text('${userprovider.Userlist[index].address.zipcode}', style: TextStyle(color: Colors.black),),
//         //                       Text('GEO:', style: TextStyle(color: Colors.black),),
//         //                       Text('LAT :'+'${userprovider.Userlist[index].address.geo.lat}', style: TextStyle(color: Colors.black),),
//         //                       Text('LAG :'+'${userprovider.Userlist[index].address.geo.lng}', style: TextStyle(color: Colors.black),),
//         //                       Text('COMPANY :', style: TextStyle(color: Colors.black),),
//         //                       Text('NAME :'+'${userprovider.Userlist[index].company.name}', style: TextStyle(color: Colors.black),),
//         //                       Text('BS :'+'${userprovider.Userlist[index].company.bs}', style: TextStyle(color: Colors.black),),
//         //                       Text('CATCHPHRASHE :'+'${userprovider.Userlist[index].company.catchPhrase}', style: TextStyle(color: Colors.black),),
//         //
//         //                     ],
//         //                   ),
//         //                 ),
//         //               ),
//         //             ),
//         //         )
//         //       ]
//         //
//         //   ),
//         // )
//
//     );
//
//
//
//
//   }
// }

import 'package:adv_ch_json_parsing/Post/Provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreenPost extends StatelessWidget {
  const HomeScreenPost({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('POST JSON DATA', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: postProvider.postModal.posts.length,
        itemBuilder: (context, index) {
          final post = postProvider.postModal.posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text('${post.views} views'),
            leading: Text('${post.id}'),
            trailing: Text('${post.reaction.likes} likes  ${post.reaction.dislikes} dislikes'),
          );
        },
      ),
    );
  }
}
