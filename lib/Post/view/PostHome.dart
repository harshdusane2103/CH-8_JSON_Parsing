import 'package:adv_ch_json_parsing/Post/Provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
class HomeScreenPost extends StatelessWidget {
  const HomeScreenPost({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider=Provider.of<PostProvider>(context);
    return Scaffold(

  appBar: AppBar(
    backgroundColor: Colors.blue,
    centerTitle: true,
    title: Text('POST JSON-DATA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  ),
      body: SingleChildScrollView(
        child: Column(

            children: [
              ...List.generate(postProvider.postModal.posts.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(


                      height: 420,
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
                            Text('ID :'+'${postProvider.postModal.posts[index].id}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            Text('Title :'+'${postProvider.postModal.posts[index].title}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                          ReadMoreText(
                          postProvider.postModal.posts[index].body,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Colors.pink,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.purple),
                        ),
                            Text('Tags :'+'${postProvider.postModal.posts[index].tags}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                            Text('Likes :'+'${postProvider.postModal.posts[index].reaction.likes}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                            Text('Dislike:'+'${postProvider.postModal.posts[index].reaction.dislikes}',style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),

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
