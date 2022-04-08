import 'package:flutter/material.dart';
import 'package:yogaapp/screens/ready.dart';

class startUp extends StatefulWidget {
  const startUp({Key? key}) : super(key: key);

  @override
  State<startUp> createState() => _startUpState();
}

class _startUpState extends State<startUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ready()));
            },
            child: Text('Start')),
        height: 40,
        width: 100,
      ),
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
              background: Hero(
                tag: "yoga1",
                child: Image.network(
                  'https://img.freepik.com/free-vector/illustration-vector-graphic-sunset-yoga-silhouette-perfect-use-yoga-studio-wallpaper_315140-83.jpg',
                  fit: BoxFit.cover,
                ),
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
                        title: Text(
                          "Yoga ${index + 1}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text((index % 2 == 0) ? "00:20" : "x20"),
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
