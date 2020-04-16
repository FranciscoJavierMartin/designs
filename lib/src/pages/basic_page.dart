import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        _createImage(),
        _createTitle(),
        _createActions(),
        _createText(),
        _createText(),
        _createText(),
        _createText()
      ],
    )));
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lake with forest', style: titleStyle),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('River with a bridge mirrored', style: subtitleStyle),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Aliqua culpa ullamco incididunt aliqua tempor ut. Ipsum magna nulla et ullamco id. Commodo labore laboris consequat consequat anim magna ut labore excepteur ea ex et ipsum. Ullamco ullamco nisi reprehenderit veniam sit voluptate nulla sint voluptate anim esse aliquip ex. Proident commodo nulla Lorem nulla ullamco dolor magna dolor cupidatat mollit. Elit Lorem sit laborum quis ea. Elit id do fugiat ad in.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
