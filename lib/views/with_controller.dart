import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code_scanner/views/result_view.dart';

class BarcodeScannerWithController extends StatelessWidget {
  const BarcodeScannerWithController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/imgs/Logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Mobile Scanner', style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,)))
          ],

        ),
        backgroundColor: Colors.white,
      ),
      body: MobileScanner(
          allowDuplicates: false,
          controller: MobileScannerController(
              facing: CameraFacing.back, torchEnabled: true),
          onDetect: (barcode, args) {
            if (barcode.rawValue == null) {
              debugPrint('Failed to scan Barcode');
            } else {
              final String code = barcode.rawValue!;
              print(
                  "--------------------------------------------------------------");
              print('Barcode found! $code');
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ResultView(result: code)),
                      (Route<dynamic> route) => false);
            }
          }),
    );
  }
}
