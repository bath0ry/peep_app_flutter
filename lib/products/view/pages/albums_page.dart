import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:music_app_flutter/home/data/model/album_model.dart';
import 'package:music_app_flutter/home/data/service/album_service.dart';

class AlbumsPage extends StatefulWidget {
  AlbumsPage({Key? key}) : super(key: key);

  @override
  State<AlbumsPage> createState() => _AlbumsPageState();
}

class _AlbumsPageState extends State<AlbumsPage> {
  late final AlbumService service;

  @override
  void initState() {
    service = AlbumService(Dio());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: FutureBuilder(
        initialData: Albums(items: []),
        future: service.getAlbums(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("VTNC bolsonaro"),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            Albums data = snapshot.data as Albums;

            return ListView.builder(
              itemCount: data.items.length,
              itemBuilder: (context, index) {
                AlbumModel item = data.items[index];
                return Column(
                  children: [
                    Text(item.name),
                    Text(item.year.toString()),
                  ],
                );
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
