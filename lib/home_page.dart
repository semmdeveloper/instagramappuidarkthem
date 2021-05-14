import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdpinstagramui/post_page.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage =0;
var _pages =[
  PostPage(),
  PostPage(),
  PostPage(),
  PostPage(),
  PostPage(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      title: Text('Instagram',style: TextStyle(color: Colors.white),),
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Feather.camera,color: Colors.white,),
            onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Feather.tv,color: Colors.white,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(FontAwesome.send_o),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });

        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Feather.home,color: Colors.white,),
            title: Text('Post'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search,color: Colors.white,),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square,color: Colors.white,),
            title: Text('upload'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart,color: Colors.white,),
            title: Text('Likes'),
          ),  BottomNavigationBarItem(
            icon: Icon(Feather.user,color: Colors.white,),
            title: Text('Account'),
          ),

        ],
      ),
    );
  }
}
