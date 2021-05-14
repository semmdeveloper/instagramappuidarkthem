import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdpinstagramui/model/post_model.dart';

import 'model/story_model.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<Story> _stories =[
    Story('assets/images/1.jpg',"jazmin"),
    Story('assets/images/11.jpg',"yasmin"),
    Story('assets/images/33.jpg',"farah"),
    Story('assets/images/1.jpg',"farah"),
    Story('assets/images/11.jpg',"farah"),
    Story('assets/images/1.jpg',"farah"),
    Story('assets/images/11.jpg',"farah"),


  ];
  List <Post> _posts =[
Post(
  userName: "susanna  ",
  userImage: "assets/images/1.jpg",
  PostImage: "assets/images/11.jpg",
  caption: "Ubderground fith is modelling and in the cap",

),
    Post(
      userName: "henry",
      userImage: "assets/images/33.jpg",
      PostImage: "assets/images/33.jpg",
      caption: "ubderground fith is modelling and in the cap",

    ),
    Post(
      userName: "andre",
      userImage: "assets/images/1.jpg",
      PostImage: "assets/images/ww.jpg",
      caption: "Ubderground fith is modelling and in the cap",

    )

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              //stories
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Stories',style: TextStyle(color: Colors.white,fontSize: 14
                    ),),
                    Text('Watch all ',style: TextStyle(color: Colors.white,fontSize: 14),)

                  ],
                ),
              ),
              //stories
              Container(
                width:MediaQuery.of(context).size.width ,
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children:  _stories.map((story)  {
                    return _itemOfStory(story);

                  }).toList()
                ),
              ),
              //postlist
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _posts.length,
                  itemBuilder: (ctx, i){
                    return itemOfPost(_posts [i]);

                  },
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  Widget _itemOfStory(Story story){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(width: 3,color: Colors.white,
            )
          ),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),

            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(story.name,style: TextStyle(color: Colors.white),)
      ],
    );


  }
  Widget itemOfPost(Post post){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          //post
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.userImage ),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(post.userName,style: TextStyle(color: Colors.white),)
                  ],
                ),
                IconButton(
                  icon: Icon(SimpleLineIcons.options,color: Colors.white,),
                  onPressed: (){},
                )

              ],
            ),
          ),
          FadeInImage(
            width: MediaQuery.of(context).size.width,
            image: AssetImage(post.PostImage),
            placeholder: AssetImage('assets/images/placeholder.png'),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 IconButton(
                   icon: Icon(FontAwesome.heart_o,color: Colors.white,),
                   onPressed: (){},
                 ),
                 IconButton(
                   icon: Icon(FontAwesome.comment_o,color: Colors.white,),
                   onPressed: (){},
                 ),
                 IconButton(
                   icon: Icon(FontAwesome.send_o,color: Colors.white,),
                   onPressed: (){},
                 ),
               ],
             ),
             IconButton(
               icon: Icon(FontAwesome.bookmark_o,color: Colors.white,),
               onPressed: (){},
             ),


           ],
         ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:"Liked by ",style: TextStyle(color: Colors.white)
                  ),
                  TextSpan(
                      text:"Sigmund ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text:"Yassmen ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ), TextSpan(
                      text:"Diana ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ), TextSpan(
                      text:"and ",style: TextStyle(color: Colors.white)
                  ),
                  TextSpan(
                      text:"1344 ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text:"others",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                  //postdata




                ]
              ),
            ),
          ),

          //caption
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:"Susanna " ,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)
                  ),
                  TextSpan(
                      text: "${post.caption}",
                      style: TextStyle(color: Colors.white)
                  ),
                ]
              )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.topLeft,
            child: Text("2021 April",textAlign: TextAlign.start,style: TextStyle(color: Colors.grey[600]),),
          )

        ],
      ),

    );
  }
}
