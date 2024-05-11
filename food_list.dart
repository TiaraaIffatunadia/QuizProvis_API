import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodListDetail extends StatelessWidget {
  final String imagePath;
  final String food;
  final String harga;
  final String isi;
  final String alamat;
  final String deskripsi;

  FoodListDetail({
    required this.imagePath,
    required this.food,
    required this.harga,
    required this.isi,
    required this.alamat,
    required this.deskripsi,
  });
  
  @override
  Widget build(BuildContext context) {
    //final foodlistDetailProvider = Provider.of<listfooddetailprov>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(food),
        backgroundColor: Color(0xffEA2224),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagePath, height: 300,),
            Text(food),
            Text("Harga: $harga"),
            Text("Isi: $isi"),
            SizedBox(height: 16.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
          'Jumlah Pesanan:',
          style: TextStyle(fontWeight: FontWeight.bold, ),
        ),
        Row(
          children: [
            Text(
              "Rp 0", style: GoogleFonts.montserrat(
                fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
                Text("0", textAlign: TextAlign.left, style: GoogleFonts.montserrat(
                fontSize: 25),),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
              ],
            )
          ],
        ),
        SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffEA2224), 
              ),
              child: Text("Bayar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), // Mengubah warna teks menjadi putih
            ),
            SizedBox(height: 16.0),
          ],
        )
      ),
    );
  }
}