import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tuntunan Wudhu"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Niat & membaca bismillah',
              'https://4.bp.blogspot.com/-wNZHKhMMnpE/V6FlwjfevSI/AAAAAAAAAJI/txWCxwnwkdsJmrfl6pDAbGoYyV0HXRMvACLcB/s1600/tata-cara-wudhu-mencuci-tangan.jpeg',
              'Niat dalam hati untuk membersihkan diri dari hadats dan membaca bismillah sambil mencuci kedua tangan dan belahan tangan sampai pergelangan tangan hingga bersih'),
          _createPageItemUI(
              '2.Berkumur-kumur',
              'https://4.bp.blogspot.com/-qRCJZSr3Q8w/V6FlwE6-l9I/AAAAAAAAAJA/Uay5ADSD2nQH8T_zAfAL1pjdm2as-R3uACEw/s1600/tata-cara-wudhu-berkumur.jpeg',
              'sambil membersihkan gigi jika ada sisa-sisa makanan yang tersangkut dan kotor.'),
          _createPageItemUI(
              '3.Mencuci lubang hidung / Istinsyaq',
              'https://1.bp.blogspot.com/-EVSGM4CZsb4/V6FlwvnhbPI/AAAAAAAAAJE/n34wBfyRbHUE4ucMab0LqkCMf23XyjxiQCEw/s1600/tata-cara-wudhu-mencuci-hidung.jpeg',
              'Instinsyaq sebanyak 3 kali untuk membersihkan dari kotoran yang ada didalam hidung atau yang tersumbat di dalam hidung'),
          _createPageItemUI(
              '4.Membasuh muka',
              'https://3.bp.blogspot.com/-dHtgmewmcQg/V6Flwhek8nI/AAAAAAAAAJY/xwyD1HrnOsYz7QIChyxP63HmIbK4yi75wCEw/s1600/tata-cara-wudhu-mencuci-muka.jpeg',
              ' Membasuh muka sebanyak 3 kali mulai dari tempat tumbuhnya rambut kepala hingga bawah dagu dan dari telinga kanan hingga telinga kiri'),
          _createPageItemUI(
              'Mencuci kedua belah tangan',
              'https://1.bp.blogspot.com/-cE4OPR_4S5I/V6FlvybK0kI/AAAAAAAAAJY/1tcBTUCSTqMeFpf2W66PNbeefWUuD_W7QCEw/s1600/tata-cara-wudhu-membasuh-tangan.jpeg',
              'Mencuci atau membasuh 2 belah tangan sebanyak tiga kali dan basuh tangan sampai sikut'),
          _createPageItemUI(
              'Membasahi sebagian rambut kepala',
              'https://1.bp.blogspot.com/-TfgFBfimPd4/V6FlxLjJ4QI/AAAAAAAAAJY/2-XKn0irn0o976VZGOB39QDpNDiwBPadgCEw/s1600/tata-cara-wudhu-mengusap-kepala.jpeg',
              'Membasahi rambut dari jidat hingga kepala bagian belakang kemudian balik lagi ke jidat sebanyak satu kali'),
          _createPageItemUI(
              'Mencuci kedua telinga',
              'https://4.bp.blogspot.com/-ncykdu5ppPw/V6FlxUnESNI/AAAAAAAAAJY/jn3lNIVTliskLQsQJ0gex1I2F46cvKQogCEw/s1600/tata-cara-wudhu-mengusap-telinga.jpeg',
              'Untuk membasuh telinga Sebenarnya setelah membasahi kepala sebanyak satu kali kita harus langsung mengusapkan ke telinga sebanyak satu kali'),
          _createPageItemUI(
              'Mencuci kedua kaki',
              'https://1.bp.blogspot.com/-ty0Pqfvmy8I/V6Flv4woX8I/AAAAAAAAAJY/asKHk71lkKEbUYR86NLq5XmTQxMh8ytdwCEw/s1600/tata-cara-wudhu-membasuh-kaki.jpeg',
              'Terkhir adalah hendaklah mencuci kaki dari bawah telapak kaki sampai mata kaki sebanyak tiga kali, ketika mencuci kaki kita harus mengenai mata kaki agar wudhu sah'),
          _createPageItemUI(
            'Membaca Doa Setelah Wudhu',
            'file:///Users/perdana/Downloads/Doa%20setelah%20wudhu.png',
            '"Setelah semua selesai kita harus membaca doa setelah wudhu yaitu : ASY-HADU ALLA ILAAHA ILLALLAH WAHDAHU LAA SYARIKALAH WA ASYHADU ANNA MUHAMMADAN ‘ABDUHU WA ROSULUH, ALLOHUMMAJ’ALNII MINATTAWWAABIINA WAJ’ALNII MINAL MUTATHOHHIRIIN.SUBHANAKALLOHUMMA WA BIHAMDIKA, ASY-HADU ALLA ILAAHA ILLA ANTA, ASTAGH-FIRUKA WA ATUUBU ILAIK.',)
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}
