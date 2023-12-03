import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';
import 'package:instagram_app_clone/model/enums/activity_type_enum.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});
  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        body: SafeArea(
          child: Column(
            children: [
              _tabBarItems(),
              _tabBarViewContents(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabBarViewContents() {
    return Flexible(
      child: TabBarView(
        controller: _tabController,
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'New',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.like, listChildCount: 4),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.followBack, listChildCount: 2),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'This Week',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.following, listChildCount: 4),
            ],
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'This Week',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.following, listChildCount: 4),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'New',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.like, listChildCount: 4),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 15.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              _getRowActivity(ActivityType.followBack, listChildCount: 2),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getRowActivity(ActivityType status, {int listChildCount = 3}) {
    return SliverPadding(
      padding: EdgeInsets.all(15.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 6.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            color: fuchsiaFelicity,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'alirezaKriminejad',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'GB',
                                      fontSize: 12.0),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Started following',
                                  style: TextStyle(
                                    color: whiteLight,
                                    fontFamily: 'GB',
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                      color: whiteLight,
                                      fontFamily: 'GB',
                                      fontSize: 12.0),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '3 min',
                                  style: TextStyle(
                                    color: whiteLight,
                                    fontFamily: 'GB',
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                _getStatus(status)
              ],
            ),
          );
        }, childCount: listChildCount),
      ),
    );
  }

  Widget _getStatus(ActivityType status) {
    switch (status) {
      case ActivityType.followBack:
        return ElevatedButton(
          onPressed: () {},
          child: Text('follow'),
          style: ElevatedButton.styleFrom(backgroundColor: fuchsiaFelicity),
        );
      case ActivityType.following:
        return Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('assets/images/add_post_2.jpg'),
            ),
          ),
        );
      case ActivityType.like:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
          ),
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(width: 2.0, color: Colors.white)),
        );
      default:
        return ElevatedButton(
          onPressed: () {},
          child: Text('follow'),
          style: ElevatedButton.styleFrom(backgroundColor: fuchsiaFelicity),
        );
    }
  }

  Widget _tabBarItems() {
    return Container(
      height: 60.0,
      color: darkGray,
      child: TabBar(
        controller: _tabController,
        labelStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'GB',
          fontSize: 16.0,
        ),
        indicatorColor: fuchsiaFelicity,
        indicatorWeight: 3.0,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 15.0),
        tabs: [
          Tab(
            text: 'Followings',
          ),
          Tab(
            text: 'You',
          ),
        ],
      ),
    );
  }
}
