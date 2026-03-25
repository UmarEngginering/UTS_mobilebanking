import 'package:flutter/material.dart';

void main() => runApp(const MobileBankingUmar());

class MobileBankingUmar extends StatelessWidget {
  const MobileBankingUmar({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF014A94),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF014A94),
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Selamat Datang,", style: TextStyle(fontSize: 14, color: Colors.white70)),
            Text("Umar Faruq", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notifications_none, color: Colors.white), onPressed: () {}),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlueAccent, 
              child: Text("UF", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(height: 60, color: const Color(0xFF014A94)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5))],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Saldo Rekening", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
                        const Text("Rp 5.430.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF014A94))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                mainAxisSpacing: 25,
                children: [
                  tombolMenuUmar(Icons.swap_horiz_rounded, "Transfer", Colors.blue),
                  tombolMenuUmar(Icons.qr_code_scanner_rounded, "QRIS", Colors.orange),
                  tombolMenuUmar(Icons.phone_android_rounded, "Pulsa", Colors.green),
                  tombolMenuUmar(Icons.account_balance_wallet_rounded, "BRIVA", Colors.red),
                  tombolMenuUmar(Icons.account_balance_rounded, "Setor Tunai", Colors.indigo),
                  tombolMenuUmar(Icons.wallet_rounded, "Dompet", Colors.purple),
                  tombolMenuUmar(Icons.receipt_long_rounded, "Tagihan", Colors.amber),
                  tombolMenuUmar(Icons.grid_view_rounded, "Lainnya", Colors.blueGrey),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Color(0xFF014A94), Color(0xFF00AEEF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: const Center(
                child: Text("Cashback 20% Pakai QRIS!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Aktivitas Terakhir", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      TextButton(onPressed: () {}, child: const Text("Lihat Semua", style: TextStyle(fontSize: 12))),
                    ],
                  ),
                  riwayatDuitUmar("Kirim ke Ahmad", "24 Maret 2026", "- Rp 150.000", Colors.red),
                  riwayatDuitUmar("Transfer Masuk", "23 Maret 2026", "+ Rp 1.000.000", Colors.green),
                  riwayatDuitUmar("Bayar Listrik", "22 Maret 2026", "- Rp 215.000", Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF014A94),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history_rounded), label: "Mutasi"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner_rounded, size: 32), label: "Bayar"),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline_rounded), label: "Pesan"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: "Akun"),
        ],
      ),
    );
  }

  Widget tombolMenuUmar(IconData ikon, String teks, Color warnaDasar) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: warnaDasar.withOpacity(0.1), shape: BoxShape.circle),
          child: Icon(ikon, color: warnaDasar, size: 28),
        ),
        const SizedBox(height: 8),
        Text(teks, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget riwayatDuitUmar(String judul, String tanggal, String jumlah, Color warnaNominal) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(judul, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
              Text(tanggal, style: const TextStyle(color: Colors.grey, fontSize: 11)),
            ],
          ),
          Text(jumlah, style: TextStyle(color: warnaNominal, fontWeight: FontWeight.bold, fontSize: 13)),
        ],
      ),
    );
  }
}