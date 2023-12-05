import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverList dengan Gambar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/inaklug.png',
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('HOME', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('TENTANG KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('LAYANAN KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('ARTIKEL', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: Text('HUBUNGI KAMI', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Inaklug'),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/inaklug.png',
                      fit: BoxFit.contain,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(1),
                child: Column(
                  children: [
                    Image.asset(
                      'images/picgedung.png',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 120),
                    Text(
                      'Tentang Kami',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '   INAKLUG adalah Konsultan\n   Pendidikan Internasional di\n         Indonesia yang sudah\nmemberangkatkan lebih dari 3000'
                          '\n mahasiswa Indonesia yang ingin\n  kuliah ataupun berkarir di luar.',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 100),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.9,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ]),
          ),

          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                "                   Layanan Kami",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Times New Roman',
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              // ... Widget lainnya
            ]),
          ),


          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10,),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/bachelor.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF940B92),
                              Colors.transparent
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Studi S1 Bachelor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/master.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF940B92),
                              Colors.transparent
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Studi S2 Master",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/suster.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF940B92),
                              Colors.transparent
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Perawat/Caregiver",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/kursus.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF940B92),
                              Colors.transparent
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Kursus Bahasa Asing",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),


          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.all(70.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blue, Colors.purple],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "GRATIS KONSELING STUDI DI LUAR NEGRI",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Konsultasikan seputar kuliah / bekerja di luar negri",
                            style: TextStyle(
                              fontFamily: "Times New Roman",
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () { },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "Mulai Konsultasi",
                              style: TextStyle(
                                fontFamily: 'times new roman',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.9,
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
              ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'ARTIKEL TERBARU',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'images/monumentos.jpg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text(
                      ' Belajar Bahasa Jerman melalui Goethe\n                            Institute',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'images/danau.png',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Jerman targetkan pariwisata pada tahun 2022\n                   meningkat pada kuartal 1',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    print('Tombol Artikel Lainnya Ditekan');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                      minimumSize: Size(20, 50),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: Text(
                    'Artikel Lainnya',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Divider(
                color: Colors.grey,
                thickness: 0.9,
                indent: 20,
                endIndent: 20,
              ),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(1),
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Text(
                      ' Hubungi Kami ',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      ' Kantor Pusat',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'MULA BY GALERIA JAKARTA, CILANDAK\n          TOWN SQUARE,LT.BASEMENT. ',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      ' Phone : 085286754052',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ]),
          ),


          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight  ,
                  colors: [Colors.blue,
                    Colors.deepPurple],
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Copyright 2022 - Inaklug Indonesia Hak Cipta\n                 dilindungi Undang-undang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}




