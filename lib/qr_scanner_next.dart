import 'package:flutter/material.dart';
import 'qr_scanner.dart';

class QrScannerNextScreen extends StatelessWidget {
  var id;

  QrScannerNextScreen({id, scanner}) {
    this.id = id;
  }

  @override
  Widget build(BuildContext context) {
    return QrScannerNext(this.id);
  }
}

class QrScannerNext extends StatelessWidget {
  var id;

  QrScannerNext(id) {
    this.id = id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Text('The scanned ID: $id')],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  child: Text('Back'),
                  color: Colors.blue[500],
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
