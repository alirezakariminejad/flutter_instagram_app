import 'package:flutter/material.dart';
import 'package:instagram_app_clone/constants/Constants.dart';

class AddContentScreen extends StatefulWidget {
  const AddContentScreen({super.key});

  @override
  State<AddContentScreen> createState() => AaddContentScreenState();
}

class AaddContentScreenState extends State<AddContentScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGray,
        body: SafeArea(
          bottom: false,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              _sliverPostContents(),
              
              Container(
                height: 80.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: lightGray,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Draft',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Gallery',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Take',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _sliverPostContents() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(
            top: 15.0,
            right: 15.0,
            left: 15.0,
            bottom: 20.0,
          ),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Post',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                    Image.asset('assets/images/icon_arrow_down.png'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GB',
                          fontSize: 20.0),
                    ),
                    SizedBox(width: 10.0),
                    Image.asset('assets/images/icon_arrow_right_box.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 375.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/add_post_0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 15.0,
            right: 15.0,
            bottom: 90.0,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/add_post_$index.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              );
            }, childCount: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _postContents() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                Image.asset('assets/images/icon_arrow_down.png'),
              ],
            ),
            Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'GB', fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                Image.asset('assets/images/icon_arrow_right_box.png'),
              ],
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset('assets/images/add_post_0.jpg'),
        ),
        Flexible(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15.0,
            ),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/add_post_$index.jpg'),
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          Text(
            'Post',
            style: TextStyle(
                color: Colors.white, fontFamily: 'GB', fontSize: 20.0),
          ),
          SizedBox(width: 10.0),
          Image.asset('assets/images/icon_arrow_down.png'),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            children: [
              Text(
                'Next',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GB', fontSize: 20.0),
              ),
              SizedBox(width: 10.0),
              Image.asset('assets/images/icon_arrow_right_box.png'),
            ],
          ),
        ),
      ],
    );
  }
}
