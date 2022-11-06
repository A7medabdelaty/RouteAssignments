import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  static String routeName = 'Whatsapp Chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back_sharp),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Person',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                  radius: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: const Border.fromBorderSide(
                          BorderSide(width: 2, color: Colors.white))),
                  child: const Text(
                    'This is My First Message',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: const Border.fromBorderSide(
                          BorderSide(width: 2, color: Colors.white))),
                  child: const Text(
                    'This is My Second Message',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person1.jpg'),
                  radius: 25,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: const Border.fromBorderSide(
                            BorderSide(width: 2, color: Colors.white))),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onTap: () {},
                            decoration: const InputDecoration(
                                hintText: 'Type a Message',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                suffixIcon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white,
                                ),
                                prefixIcon: Icon(
                                  Icons.tag_faces_outlined,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: const Border.fromBorderSide(
                          BorderSide(width: 2, color: Colors.white))),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
