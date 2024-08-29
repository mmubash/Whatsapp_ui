import 'package:flutter/material.dart';

class UpdatesPageSwipe extends StatefulWidget {
  const UpdatesPageSwipe({super.key});

  @override
  State<UpdatesPageSwipe> createState() => _UpdatesPageSwipeState();
}

class _UpdatesPageSwipeState extends State<UpdatesPageSwipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates - Swipe Navigation'),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 5),
          Icon(Icons.search),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('Linked Device')),
                PopupMenuItem(value: 3, child: Text('Setting'))
              ])
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRjt0kcImf58gKJe6M3mFBun-B7GWKDmNgA&usqp=CAU'),
                        ),
                        SizedBox(height: 8),
                        Text('My Status',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRjt0kcImf58gKJe6M3mFBun-B7GWKDmNgA&usqp=CAU'),
                      ),
                      SizedBox(height: 8),
                      Text('John Wick',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                child: Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.group, color: Colors.blue),
                  title: Text('Channel ${index + 1}'),
                  subtitle: Text('Some description for Channel ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UpdatesPageTap extends StatefulWidget {
  const UpdatesPageTap({super.key});

  @override
  State<UpdatesPageTap> createState() => _UpdatesPageTapState();
}

class _UpdatesPageTapState extends State<UpdatesPageTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates - Tap Navigation'),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 5),
          Icon(Icons.search),
          PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('Linked Device')),
                PopupMenuItem(value: 3, child: Text('Setting'))
              ])
        ],
      ),
      body: Center(
        child: Text(
          "This is the Updates Page for Tap Navigation",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
