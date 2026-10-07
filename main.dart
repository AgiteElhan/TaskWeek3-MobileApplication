class Warga{
  static String namaPerumahan = "Perum bumi asri";
  //ini tidak akan jalan pada void main jika menggunakan $namaPerumahan saja karena untuk memanggil static harus menggunakan (Warga.namaPerumahan)
  String namaWarga;
  
  Warga(this.namaWarga);
  
  void perkenalan(){
    print("Halo nama saya $namaWarga dan saya tinggal di ${Warga.namaPerumahan}");
  }
}
void main(){
  //seperti kode dibawah ini
  print(Warga.namaPerumahan);
  
  
  //dan jika ingin menggunakan function perkenalan maka menggunakan kode yang ada dibawah 
  Warga warga1 = Warga("Andi");
  Warga warga2 = Warga("amel");

  warga1.perkenalan();
  warga2.perkenalan();
  
  Warga.namaPerumahan = "Perum graha raya";
  
  print('nama perumahan diubah');
   warga1.perkenalan();
  warga2.perkenalan();
}
