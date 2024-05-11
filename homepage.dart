import 'package:food_delivery/view/food_list.dart';
import 'package:food_delivery/view/list_food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "Lacak Pesanan")
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/Home');
          }
          else{
            Navigator.pushNamed(context, '/order');
          };
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                        height: 110, width: double.infinity, color: Color(0xffEA2224)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/logofoodev-white.png'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(35),
                                            border: Border.all(
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                                width: 2))),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Selamat Datang !",
                                                  style:
                                                      GoogleFonts.montserrat(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: 
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cari Makanan",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Cari Makanan...',
                                      prefixIcon: Icon(Icons.search),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                   ),
                                    SizedBox(height: 15),
                                    Text(
                                      "Daftar Makanan",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              ListFood(
                                imagePath: "assets/liwet.jpg",
                                food: "Nasi Liwet",
                                harga: "Rp 34.000",
                                isi: "Nasi, Ayam, Sambal, Tumis Kangkung",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => FoodListDetail(
                                        imagePath: "assets/liwet.jpg",
                                        food: "Nasi Liwet",
                                        harga: "Rp 34.000",
                                        isi: "Nasi Liwet, Ayam Serundeng, Tumis Kangkung, Sambal Terasi, Tempe Goreng",
                                        alamat: "Paviliun Sunda, Jl. L. L. R.E. Martadinata No.97, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115",
                                        deskripsi: "Nasi liwet merupakan makanan khas bandung. Pilihan lauk yang tersedia : Ayam serundeng, Ayam bakar, Ikan gurame bakar/goreng.",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListFood(
                                imagePath: "assets/lilit.jpg",
                                food: "Sate Lilit",
                                harga: "Rp 40.000",
                                isi: "Sate Lilit, Sambal Matah, Lawar",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => FoodListDetail(
                                        imagePath: "assets/lilit.jpg",
                                        food: "Sate Lilit",
                                        harga: "Rp 40.000",
                                        isi: "Sate Lilit, Sambal Matah, Lawar",
                                        alamat: "Lumbung Masakan Bali, Jl. Pasir Kaliki, Pamoyanan, Kec. Cicendo, Kota Bandung, Jawa Barat 40173",
                                        deskripsi: "Sate lilit merupakan makanan khas bali. Terbuat dari ikan bandeng. Pilihan sambal yang tersedia : Sambal matah, Sambal embe",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListFood(
                                imagePath: "assets/betutu.jpg",
                                food: "Nasi Ayam Betutu",
                                harga: "Rp 35.000",
                                isi: "Nasi, Ayam Betutu, Pecel, Sambal Matah",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => FoodListDetail(
                                        imagePath: "assets/betutu.jpg",
                                        food: "Nasi Ayam Betutu",
                                        harga: "Rp 35.000",
                                        isi: "Nasi, Ayam Betutu, Pecel, Sambal Matah",
                                        alamat: "Lumbung Masakan Bali, Jl. Pasir Kaliki, Pamoyanan, Kec. Cicendo, Kota Bandung, Jawa Barat 40173",
                                        deskripsi: "Ayam betutu merupakan makanan khas bali. Pilihan sambal yang tersedia : sambal matah, sambal embe",
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListFood(
                                imagePath: "assets/rawon.jpg",
                                food: "Rawon Daging Sapi",
                                harga: "Rp 25.000",
                                isi: "Nasi, Rawon Sapi, Sambel, Telur Asin",
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => FoodListDetail(
                                        imagePath: "assets/rawon.jpg",
                                        food: "Rawon Daging Sapi",
                                        harga: "Rp 25.000",
                                        isi: "Nasi, Rawon Sapi, Sambal, Telur Asin",
                                        alamat: "Rumah Makan Ny Tjoan, Jl. Saad No.26, Kb. Pisang, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40112",
                                        deskripsi: "Rawon Daging Sapi merupakan makanan khas jawa timur. Daging sapi yang empuk, ditambah taburan toge kecil, telur asin, dan sambal membuat rawon semakin nikmat.",
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ]
                          ),
                        ),
                      ),     
                    );
                   }
                  }