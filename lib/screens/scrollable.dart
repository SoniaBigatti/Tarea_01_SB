import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'dart:io';
import 'dart:convert';

import 'package:tarea_01/responses/fetch_poke_api.dart';

class ScrollableView extends StatefulWidget {
  const ScrollableView({super.key});

  @override
  State<ScrollableView> createState() => _ScrollableViewState();
}

class _ScrollableViewState extends State<ScrollableView> {
  bool _loading = true;
  List _pokemons = [];

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  Future<void> _fetchData() async {
    Uri url = Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20');
    Response response = await http.get(url);

    if (response.statusCode == 200) {
      var respuesta = jsonDecode(response.body);
      FetchPokeApi res = FetchPokeApi.fromJson(respuesta);

      _pokemons = res.results;

      setState(() {});
    } else {}
    Timer(Duration(seconds: 2), () {
      _loading = false;
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Pokémon'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.yellow,
              fontFamily: 'Bubblegum Sans',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        body: _loading ? _buildLoading() : _buildListView());
  }

  Center _buildLoading() => Center(child: CircularProgressIndicator());

  _buildListView() {
      //widget divisor ListView.separated
      return ListView.separated(

        separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),

        itemCount: _pokemons.length,

        itemBuilder: (context, index) {
          var current = _pokemons[index];
          return ListTile(
            title: Text(current.name, style: TextStyle(fontFamily: 'Bubblegum Sans',fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xFF125CA8)),),
            subtitle: Text(current.url),
          );
        },
      );
    }
  }


