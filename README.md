# Belajar Dart - Hari 1

## Topik

**Class, Constructor, Static Variable, dan Instance Variable**

Hari ini saya belajar tentang `class` di Dart dan mencoba membuat contoh sederhana menggunakan data warga di sebuah perumahan.

Saya mencoba memahami bagaimana cara membuat object dari sebuah class dan bagaimana penggunaan `static`.

## Contoh yang saya buat

Saya membuat class bernama `Warga`.

Di dalam class tersebut ada:

```dart
class Warga {
  static String namaPerumahan = "Perum bumi asri";
  String namaWarga;

  Warga(this.namaWarga);

  void perkenalan() {
    print(
      "Halo nama saya $namaWarga dan saya tinggal di ${Warga.namaPerumahan}"
    );
  }
}
```

## Yang saya pahami

### 1. Class

```dart
class Warga
```

`class` bisa dianggap sebagai tempat untuk membuat data dan fungsi yang berhubungan dengan warga.

### 2. String namaWarga

```dart
String namaWarga;
```

Ini digunakan untuk menyimpan nama masing-masing warga.

Misalnya:

```dart
Warga warga1 = Warga("Andi");
Warga warga2 = Warga("Amel");
```

Berarti `warga1` mempunyai nama Andi dan `warga2` mempunyai nama Amel.

Jadi setiap object bisa mempunyai nama yang berbeda.

### 3. Constructor

```dart
Warga(this.namaWarga);
```

Bagian ini digunakan saat membuat object.

Contohnya:

```dart
Warga warga1 = Warga("Andi");
```

`"Andi"` akan dimasukkan ke `namaWarga`.

### 4. Static

```dart
static String namaPerumahan = "Perum bumi asri";
```

Saya belajar bahwa `static` itu berbeda dengan variable biasa.

`namaPerumahan` dibuat `static` karena semua warga tinggal di perumahan yang sama.

Untuk memanggilnya harus menggunakan nama class:

```dart
Warga.namaPerumahan
```

Jadi bukan hanya:

```dart
$namaPerumahan
```

### 5. Function perkenalan

Saya membuat function:

```dart
void perkenalan() {
  print(
    "Halo nama saya $namaWarga dan saya tinggal di ${Warga.namaPerumahan}"
  );
}
```

Function ini digunakan untuk menampilkan nama warga dan nama perumahan.

## Mengubah nama perumahan

Saya juga mencoba mengubah nama perumahan:

```dart
Warga.namaPerumahan = "Perum graha raya";
```

Karena `namaPerumahan` adalah `static`, ketika nilainya diubah maka semua object warga akan menggunakan nama perumahan yang baru.

Misalnya sebelumnya:

```text
Halo nama saya Andi dan saya tinggal di Perum bumi asri
Halo nama saya Amel dan saya tinggal di Perum bumi asri
```

Setelah diubah:

```text
Halo nama saya Andi dan saya tinggal di Perum graha raya
Halo nama saya Amel dan saya tinggal di Perum graha raya
```
# Belajar Dart pada Flutter - Hari 2

## Topik

**Widget di Flutter dan TextStyle**

Hari ini saya belajar tentang widget di Flutter. Saya mencoba membuat tampilan sederhana yang berisi beberapa teks dengan gaya tulisan yang berbeda.

Saya mulai memahami bahwa widget digunakan untuk membuat tampilan aplikasi Flutter, seperti menampilkan teks dan mengatur posisi widget di layar.

## Contoh yang saya buat

Saya membuat aplikasi sederhana menggunakan `MaterialApp`, `Scaffold`, `Center`, `Column`, dan `Text`.

Contoh kode yang saya gunakan:

```dart
void main() {
  runApp(const MyWidget());
}
```

Kode ini digunakan untuk menjalankan aplikasi Flutter dengan widget bernama `MyWidget`.

## Yang saya pahami

### 1. runApp()

```dart
runApp(const MyWidget());
```

`runApp()` digunakan untuk menjalankan aplikasi Flutter. Di sini saya memanggil `MyWidget` sebagai tampilan utama aplikasi.

### 2. MaterialApp

```dart
MaterialApp(
  home: Scaffold(
    body: Center(
      child: FontTextWidget(),
    ),
  ),
)
```

`MaterialApp` digunakan sebagai widget utama aplikasi. Di dalamnya saya menggunakan `Scaffold` untuk membuat struktur halaman.

### 3. Scaffold

`Scaffold` digunakan sebagai kerangka halaman aplikasi. Di dalamnya ada bagian `body` yang digunakan untuk menampilkan isi halaman.

### 4. Center

```dart
Center(
  child: FontTextWidget(),
)
```

`Center` digunakan untuk menempatkan widget di bagian tengah layar.

### 5. Column

```dart
Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Normal'),
    Text('Bold'),
  ],
)
```

`Column` digunakan untuk menyusun beberapa widget secara vertikal atau dari atas ke bawah.

Saya juga belajar bahwa `children` digunakan untuk menampung beberapa widget di dalam `Column`.

- `mainAxisSize: MainAxisSize.min` membuat ukuran `Column` menyesuaikan isi widget-nya.
- `crossAxisAlignment: CrossAxisAlignment.start` membuat posisi widget dimulai dari sisi kiri.

### 6. Text dan TextStyle

Saya menggunakan widget `Text` untuk menampilkan tulisan. Kemudian, `TextStyle` digunakan untuk mengatur tampilan tulisan tersebut.

Contohnya:

**Normal**

```dart
Text(
  'Normal',
  style: TextStyle(fontSize: 20),
)
```

**Bold**

```dart
Text(
  'Bold',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
)
```

**Semi Bold**

```dart
Text(
  'Semi Bold',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
)
```

**Italic**

```dart
Text(
  'Italic',
  style: TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.italic,
  ),
)
```

Dari contoh tersebut, saya belajar bahwa:

- `fontSize` digunakan untuk mengatur ukuran tulisan.
- `FontWeight.bold` digunakan untuk membuat tulisan tebal.
- `FontWeight.w600` digunakan untuk mengatur ketebalan tulisan menjadi semi-bold.
- `FontStyle.italic` digunakan untuk membuat tulisan miring.

### 7. StatelessWidget

Saya menggunakan `StatelessWidget` untuk membuat widget `MyWidget` dan `FontTextWidget`.

```dart
class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});
}
```

`StatelessWidget` digunakan untuk membuat tampilan yang tidak mengelola perubahan state secara langsung. Dalam contoh ini, teks yang ditampilkan masih tetap dan tidak berubah ketika aplikasi dijalankan.

## Hasil yang saya dapatkan

Aplikasi berhasil menampilkan empat jenis tulisan, yaitu Normal, Bold, Semi Bold, dan Italic. Semua tulisan disusun dari atas ke bawah menggunakan `Column`.
