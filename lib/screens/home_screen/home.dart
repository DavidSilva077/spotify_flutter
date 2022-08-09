import 'package:flutter/material.dart';
import 'package:sportify_clone/models/category.dart';
import 'package:sportify_clone/models/music.dart';
import 'package:sportify_clone/services/category_service.dart';
import 'package:sportify_clone/services/music_service.dart';



class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  Function _miniPlayer;
  HomePage(this._miniPlayer);

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(category.name,
                style: TextStyle(
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryService.getCategories();
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();

    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                _miniPlayer(music, stop:true);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            music.desc,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicService.getMusic();
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return createMusic(musicList[index]);
            },
            itemCount: musicList.length,
          ),
        ),
      ]),
    );
  }

  Widget createGrid() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: createListOfCategories(),
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10), child: Icon(Icons.settings))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            SizedBox(height: 23,),
            createAppBar('Good evening'),
            createGrid(),
            createMusicList("Podcasts for you"),
            createMusicList("Made for you"),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey.shade300, Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.3])),
      )),
    );
  }
}
