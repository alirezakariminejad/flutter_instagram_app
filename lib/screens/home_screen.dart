import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:instagram_app_clone/screens/share_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        appBar: AppBar(
          backgroundColor: darkGray,
          elevation: 0,
          centerTitle: false,
          title: Container(
            height: 25.0,
            width: 102.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/moodinger_logo.png'),
              ),
            ),
          ),
          actions: [
            Image.asset('assets/images/icon_direct.png'),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: DraggableScrollableSheet(
                          initialChildSize: 0.4,
                          minChildSize: 0.2,
                          maxChildSize: 0.7,
                          builder: (context, scrollController) {
                            return ShareBottomSheet(
                              controller: scrollController,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
                child: Text('Show Modal bottom sheet'),
              ),
            ),
            SliverToBoxAdapter(
              child: _storyList(),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: 9,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      _postHeader(),
                      SizedBox(height: 15.0),
                      _postContent(),
                      SizedBox(height: 30.0),
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget _storyList() {
    return SizedBox(
      height: 100.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
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

  Widget _postsList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _post();
      },
    );
  }

  Widget _post() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          _postHeader(),
          SizedBox(height: 15.0),
          _postContent(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _postContent() {
    return Container(
      width: double.infinity,
      height: 430.0,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 400.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage('assets/images/post_cover.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 15.0,
            right: 15.0,
            child: Image.asset('assets/images/icon_video.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.5),
                          Color.fromRGBO(255, 255, 255, 0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_hart.png'),
                            SizedBox(width: 5.0),
                            Text(
                              '2.6K',
                              style: TextStyle(
                                color: white,
                                fontFamily: 'GB',
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_comments.png'),
                            SizedBox(width: 5.0),
                            Text(
                              '1.5K',
                              style: TextStyle(
                                color: white,
                                fontFamily: 'GB',
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_share.png'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon_save.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _postHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 2.0,
              color: fuchsiaFelicity,
              radius: Radius.circular(12.0),
              padding: EdgeInsets.all(3.0),
              dashPattern: [100, 0],
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: 39,
                  width: 39,
                  decoration: BoxDecoration(
                    color: darkGray,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'alirezakariminejad',
                  style:
                      TextStyle(fontFamily: 'GB', fontSize: 20.0, color: white),
                ),
                Text(
                  'علیرضا برنامه نویس فلاتر',
                  style:
                      TextStyle(fontFamily: 'SM', fontSize: 16.0, color: white),
                ),
              ],
            ),
          ],
        ),
        Image.asset('assets/images/icon_menu.png'),
      ],
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
