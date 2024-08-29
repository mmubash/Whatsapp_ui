import 'package:flutter/material.dart';
class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communities'),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 5,),
          PopupMenuButton(
            icon: Icon(Icons.more_vert_outlined),
            itemBuilder: (context)=>[
              PopupMenuItem(
                  value: 1,
                  child: Text("New Group")
              ),
              PopupMenuItem(
                  value: 2,
                  child: Text("Linked Device")
              ),
              PopupMenuItem(
                  value: 3,
                  child: Text("Setting")
              ),
            ],
          )
        ],
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // My Communities section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(
                    Icons.group, // The icon you want to display
                    color: Colors.white, // Icon color
                    size: 24.0, // Icon size
                  ),

                ),
                SizedBox(width: 8), // Space between the avatar and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Community', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),

          // Heading for recent communities


          // List of recent communities
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8.0), // Optional padding inside the container
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Background color of the container
                        shape: BoxShape.circle, // Makes the container circular
                      ),
                      child: Icon(
                        Icons.group, // Group icon
                        color: Colors.blue, // Icon color
                        size: 32.0, // Icon size
                      ),
                    ),
                    title: Text('Community ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.chevron_right),
                  ),
                );
              },
            ),
          )

        ],
      )

      ,
    );
  }
}