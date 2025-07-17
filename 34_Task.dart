import 'package:qr/qr.dart';
import 'dart:io';

void main() {
  stdout.write('Enter text to encode as QR code: ');
  String? data = stdin.readLineSync();

  if (data == null || data.isEmpty) {
    print('NO text given');
    return;
  }

  // Step 1: Create QRCode
  final qrCode = QrCode(4, QrErrorCorrectLevel.L)..addData(data);

  // Step 2: Wrap in QrImage
  final qrImage = QrImage(qrCode);

  // Step 3: Render using QrImage.isDark(y, x)
  for (var y = 0; y < qrImage.moduleCount; y++) {
    var line = '';
    for (var x = 0; x < qrImage.moduleCount; x++) {
      line += qrImage.isDark(y, x) ? '██' : '  ';
    }
    print(line);
  }
}
