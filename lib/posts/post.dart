import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String userImg;
  final String userName;
  final String userInfo;
  final String textContent;
  final String imagePost;
  final String comments;
  final String retweets;
  final String likes;

  const Post({
    super.key,
    required this.userImg,
    required this.userInfo,
    required this.textContent,
    required this.imagePost,
    required this.userName,
    required this.comments,
    required this.retweets,
    required this.likes,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(userImg),
              radius: 25,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          userInfo,
                          style: const TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      textContent,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePost,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white54,
                          ),
                          Text(
                            comments,
                            style: const TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.compare_arrows,
                            color: Colors.white54,
                          ),
                          Text(
                            retweets,
                            style: const TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.handshake,
                            color: Colors.white54,
                          ),
                          Text(
                            likes,
                            style: const TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.share_outlined,
                            color: Colors.white54,
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
