import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                itemBuilder: (context, index) => storyItem(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => postItem(),
                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    color: Colors.black,
                  );
                },
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}

Widget postItem() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text('Owner'),
                Row(
                  children: const [
                    Text('3h'),
                    Icon(
                      Icons.public,
                      size: 13,
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [Text('My post',style: TextStyle(fontSize: 20),)],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Text('100'),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/like.jpg',
              height: 15,
            ),
            const Spacer(),
            const Text('100 Comments'),
            //myDivider(),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        myDivider(),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            reactIcon('assets/images/singleLike.jpg', 'Like'),
            reactIcon('assets/images/comment.jpg', 'Comment'),
            reactIcon('assets/images/share.png', 'Share'),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Widget storyItem() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      padding: const EdgeInsets.all(3),
      width: 65,
      decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/person2.jpg',
            ),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: const [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: CircleAvatar(
              radius: 10,
              child: Icon(
                Icons.person,
                size: 13,
              ),
            ),
          ),
          Text(
            'Owner',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget myDivider() {
  return Container(
    height: 1,
    color: Colors.black,
  );
}

Widget reactIcon(iconImage, text) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconImage,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    ),
  );
}
