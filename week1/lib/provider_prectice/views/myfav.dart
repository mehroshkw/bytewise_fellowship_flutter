import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../providers/fav_provider.dart';

class MyFav extends StatefulWidget {
  const MyFav({super.key});

  @override
  State<MyFav> createState() => _MyFavState();
}

class _MyFavState extends State<MyFav> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context, listen: false);
    List<int> selected = [];
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: favProvider.selected.length,
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
                            ? Icons.favorite
                            : Icons.favorite_border),
                      );
                    });
                  }))
        ],
      ),
    );
  }
}
