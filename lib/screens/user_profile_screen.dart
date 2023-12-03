import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_app_clone/constants/Constants.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, isScrolled) {
                return [
                  SliverAppBar(
                    // pinned: true,
                    // toolbarHeight: 40.0,
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                        child: Icon(Icons.menu),
                      )
                    ],
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(20.0),
                      child: Container(
                        height: 14.0,
                        decoration: BoxDecoration(
                          color: darkGray,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                          ),
                        ),
                      ),
                    ),
                    backgroundColor: darkGray,
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        'assets/images/item1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: _getHeaderProfile(),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 64.0),
                            child: Text(
                              'برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین دوره مکتبخونه و برنامه نویس سابق زرین پال تخصص برنامه‌نویسی یعنی اینده و تاثیر گذاری آموزش رایگان 👇',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SM',
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icon_share.png',
                                width: 18.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'yek.link/Amirahmad',
                                style: TextStyle(
                                    color: niceBlue,
                                    fontFamily: 'GB',
                                    fontSize: 16.0),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/developer.png'),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'developer',
                                    style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GB',
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/location.png'),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Iran',
                                    style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GB',
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '23',
                                    style: TextStyle(
                                      color: white,
                                      fontFamily: 'GB',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Posts',
                                    style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GM',
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '16.2K',
                                    style: TextStyle(
                                      color: white,
                                      fontFamily: 'GB',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GM',
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '280',
                                    style: TextStyle(
                                      color: white,
                                      fontFamily: 'GB',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GM',
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 16.0),
                            ],
                          ),
                          SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: fuchsiaFelicity,
                                    minimumSize: Size(180, 45),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      fontFamily: 'GB',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: white,
                                    minimumSize: Size(180, 45),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    side: BorderSide(
                                      width: 2.0,
                                      color: white,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Message',
                                    style: TextStyle(
                                      fontFamily: 'GB',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 32.0),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: _storyList(),
                  ),
                  SliverPersistentHeader(
                    delegate: TabBarDelegate(
                      TabBar(
                        labelPadding: EdgeInsets.symmetric(vertical: 10.0),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 16.0,
                        ),
                        indicatorColor: fuchsiaFelicity,
                        indicatorWeight: 3.0,
                        indicatorPadding:
                            EdgeInsets.symmetric(horizontal: 15.0),
                        tabs: [
                          Image.asset(
                            'assets/images/icon_tab_posts.png',
                            height: 20.0,
                          ),
                          Image.asset(
                            'assets/images/icon_save.png',
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    floating: true,
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(padding: EdgeInsets.only(top: 10.0)),
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
                                    image: AssetImage(
                                        'assets/images/item$index.png'),
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
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(2, 2),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverPadding(padding: EdgeInsets.only(top: 10.0)),
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
                                    image: AssetImage(
                                        'assets/images/item$index.png'),
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
                              QuiltedGridTile(2, 2),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: fuchsiaFelicity,
                  ),
                  borderRadius: BorderRadius.circular(17.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 0.0,
                      color: darkGray,
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'علیرضا کریمی نژاد برنامه‌نویس فلاتر',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SM',
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'AlirezaKariminejaDL',
                    style: TextStyle(
                      color: whiteLight,
                      fontFamily: 'SM',
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ],
          ),
          Image.asset('assets/images/icon_profile_edit.png')
        ],
      ),
    );
  }

  Widget _storyList() {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: _addStory(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: _storyItem(),
                );
        },
      ),
    );
  }

  Widget _addStory() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(2.0),
          width: 65.0,
          height: 65.0,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(17.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: darkGray,
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage('assets/images/icon_plus.png'),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        SizedBox(
          width: 65.0,
          child: Text(
            'amirahmadadibi',
            style: TextStyle(color: white),
            textAlign: TextAlign.left,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  Widget _storyItem() {
    return Column(
      children: [
        DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 2.0,
          color: fuchsiaFelicity,
          radius: Radius.circular(17.0),
          padding: EdgeInsets.all(3.0),
          dashPattern: [50, 10],
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                color: darkGray,
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        SizedBox(
          width: 65.0,
          child: Text(
            'amirahmadadibi',
            style: TextStyle(color: white),
            textAlign: TextAlign.left,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  TabBarDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: darkGray,
      child: _tabBar,
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage('assets/images/item4.png'), fit: BoxFit.cover),
    //   ),
    // );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
