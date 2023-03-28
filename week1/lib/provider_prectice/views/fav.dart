import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/fav_provider.dart';
import 'myfav.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context, listen: false);
    List<int> selected = [];
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyFav()));
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Consumer<FavProvider>(
                        builder: (context, value, child) {
                      return ListTile(
                        onTap: () {
                          if (value.selected.contains(index)) {
                            value.remove(index);
                          } else {
                            value.addItem(index);
                          }
                        },
                        title: Text("Item $index"),
                        trailing: Icon(value.selected.contains(index)
                            ? Icons.favorite_border
                            : Icons.favorite),
                      );
                    });
                  }))
        ],
      ),
    );
  }
}
