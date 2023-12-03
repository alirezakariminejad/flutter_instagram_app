import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.controller, super.key});

  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40.0,
          sigmaY: 40.0,
        ),
        child: Container(
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 44.0,
            ),
            child: _gridItems(),
          ),
        ),
      ),
    );
  }

  Widget _gridItems() {
    // return GridView.builder(
    //   controller: controller,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //     mainAxisSpacing: 15.0,
    //     crossAxisSpacing: 15.0,
    //   ),
    //   itemCount: 30,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       color: darkGray,
    //     );
    //   },
    // );
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: 70.0,
                    height: 5.0,
                    margin: EdgeInsetsDirectional.only(
                      top: 10.0,
                      bottom: 22.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100.0)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset('assets/images/icon_share_bottomsheet.png'),
                    ],
                  ),
                  SizedBox(height: 32.0),
                  Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/icon_search.png'),
                          SizedBox(width: 10.0),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _gridProfileItems();
                },
                childCount: 32,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 15.0,
                mainAxisExtent: 90.0,
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 90.0))
          ],
        ),
        Positioned(
          bottom: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Share',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 16.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _gridProfileItems() {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'alireza kariminejad',
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 14.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
      ],
    );
  }
}
