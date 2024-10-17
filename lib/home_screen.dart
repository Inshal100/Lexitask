import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PdfControllerPinch pdf_controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pdf_controller = PdfControllerPinch(
        document: PdfDocument.openAsset('assets/pdfs.net1.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x333333),
          title: Text('Home',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [],
            )
          ],
        ));
  }
}

// Widget buildUI() {
//   return Column(
//     children: [pdfView()],
//   );
// }

// Widget pdfView(){
//   return Expanded(child: PdfViewPinch(controller: pdf_controller))
// }