import 'package:flutter/material.dart';

class startUp extends StatefulWidget {
  const startUp({Key? key}) : super(key: key);

  @override
  State<startUp> createState() => _startUpState();
}

class _startUpState extends State<startUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Yoga',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Image.network(
                'https://img.freepik.com/free-vector/illustration-vector-graphic-sunset-yoga-silhouette-perfect-use-yoga-studio-wallpaper_315140-83.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: const [Text("26 mins || 16 workouts")],
                ),
                Divider(
                  thickness: 2,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: 2,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text("Yoga $index"),
                        leading: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1634472105791-dc2338841c93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZpdG5lc3N8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')));
                  },
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
