import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        body: SafeArea(
          child: _searchContents(),
        ),
      ),
    );
  }

  Widget _searchContents() {
    // return Column(
    //   children: [
    //     _searchBox(),
    //     SizedBox(height: 10.0),
    //     _hashtagsList(),
    //     SizedBox(height: 20.0),
    //     _quiltedGridItems(),
    //   ],
    // );
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: _searchBox(),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 10.0)),
        SliverToBoxAdapter(
          child: _hashtagsList(),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 20.0)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: lightGray,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/item$index.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              childCount: 30,
            ),
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(2, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _quiltedGridItems() {
    return GridView.custom(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: lightGray,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('assets/images/item$index.png'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        childCount: 30,
      ),
    );
  }

  Widget _hashtagsList() {
    return SizedBox(
      height: 28.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: lightGray,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    child: Text(
                      'Hashtag ' + index.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GB',
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _searchBox() {
    return Container(
      margin: EdgeInsets.all(15.0),
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: lightGray,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  Image.asset('assets/images/icon_search.png'),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            Image.asset('assets/images/icon_scan.png')
          ],
        ),
      ),
    );
  }
}
