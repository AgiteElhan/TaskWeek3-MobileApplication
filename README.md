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


# Belajar Dart pada Flutter - Hari 2-1

## Topik

**Text Spacing, Decoration, dan Shadow di Flutter**

Hari ini saya belajar tentang cara mengatur jarak dan tampilan teks di Flutter. Saya mencoba beberapa properti yang ada di `TextStyle`, seperti `letterSpacing`, `wordSpacing`, `height`, `TextDecoration`, `backgroundColor`, dan `shadows`.

Dari pembelajaran ini, saya mulai memahami bahwa tampilan teks tidak hanya bisa diatur ukuran dan ketebalannya, tetapi juga jarak, hiasan, dan efek bayangannya.

## Contoh yang saya buat

Saya membuat beberapa contoh teks menggunakan widget `Text` dan menyusunnya dengan `Column`.

```dart
class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal Text',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),
      ],
    );
  }
}
```

Saya menggunakan `Column` supaya teks ditampilkan dari atas ke bawah, sedangkan `SizedBox` digunakan untuk memberikan jarak antar teks.

## Yang saya pahami

### 1. Letter Spacing

```dart
Text(
  'Letter Spacing',
  style: TextStyle(
    fontSize: 20,
    letterSpacing: 5,
  ),
)
```

`letterSpacing` digunakan untuk mengatur jarak antarhuruf. Di contoh ini saya menggunakan nilai `5`, sehingga jarak antarhuruf menjadi lebih lebar dari biasanya.

### 2. Word Spacing

```dart
Text(
  'Word Spacing Example',
  style: TextStyle(
    fontSize: 20,
    wordSpacing: 10,
  ),
)
```

`wordSpacing` digunakan untuk mengatur jarak antarkata. Saya mencoba nilai `10` supaya jarak antara kata satu dan lainnya menjadi lebih lebar.

Jadi, perbedaan `letterSpacing` dan `wordSpacing` adalah yang satu mengatur jarak antarhuruf, sedangkan yang satunya mengatur jarak antarkata.

### 3. Height

```dart
Text(
  'Line 1\nLine 2\nLine 3',
  style: TextStyle(
    fontSize: 20,
    height: 2,
  ),
)
```

`height` digunakan untuk mengatur tinggi baris teks. Di contoh ini saya menggunakan nilai `2` supaya jarak antarbaris menjadi lebih renggang.

Saya juga belajar bahwa `\n` digunakan untuk membuat baris baru, sehingga tulisan ditampilkan menjadi tiga baris.

### 4. SizedBox

```dart
SizedBox(height: 20)
```

`SizedBox` digunakan untuk memberikan jarak vertikal antarwidget. Semakin besar nilai `height`, semakin jauh jarak antara widget yang satu dan berikutnya.

Saya mulai memahami bahwa `SizedBox` berbeda dengan `letterSpacing`, `wordSpacing`, dan `height`, karena `SizedBox` mengatur jarak antarwidget, bukan jarak di dalam teks.

### 5. TextDecoration.underline

```dart
Text(
  'Underline',
  style: TextStyle(
    fontSize: 20,
    decoration: TextDecoration.underline,
  ),
)
```

`TextDecoration.underline` digunakan untuk memberikan garis bawah pada teks. Contohnya bisa digunakan untuk menandai tulisan tertentu atau membuat teks terlihat seperti tautan.

### 6. TextDecoration.lineThrough

```dart
Text(
  'Line Through',
  style: TextStyle(
    fontSize: 20,
    decoration: TextDecoration.lineThrough,
  ),
)
```

`TextDecoration.lineThrough` digunakan untuk memberikan garis yang melewati bagian tengah teks.

Saya bisa menggunakan efek ini untuk menampilkan harga lama yang sudah dicoret, misalnya pada tampilan produk yang sedang diskon.

### 7. backgroundColor

```dart
Text(
  'Background',
  style: TextStyle(
    fontSize: 20,
    backgroundColor: Colors.yellow,
  ),
)
```

`backgroundColor` digunakan untuk memberikan warna pada bagian belakang teks. Di contoh ini saya menggunakan `Colors.yellow`, sehingga tulisan memiliki background berwarna kuning.

### 8. Text Shadow

```dart
Text(
  'Text Shadow',
  style: TextStyle(
    fontSize: 30,
    shadows: [
      Shadow(
        offset: Offset(3, 3),
        blurRadius: 5,
      ),
    ],
  ),
)
```

`shadows` digunakan untuk memberikan efek bayangan pada teks.

- `offset: Offset(3, 3)` digunakan untuk mengatur posisi bayangan ke arah horizontal dan vertikal.
- `blurRadius: 5` digunakan untuk mengatur tingkat keburaman bayangan.

Dengan efek ini, teks bisa terlihat lebih menonjol dibandingkan teks biasa.

## Hasil yang saya dapatkan

Dari latihan ini, saya berhasil mencoba beberapa pengaturan teks, yaitu:

- Mengatur jarak antarhuruf menggunakan `letterSpacing`.
- Mengatur jarak antarkata menggunakan `wordSpacing`.
- Mengatur tinggi baris menggunakan `height`.
- Memberikan jarak antarwidget menggunakan `SizedBox`.
- Memberikan garis bawah dan garis coret menggunakan `TextDecoration`.
- Memberikan warna background menggunakan `backgroundColor`.
- Menambahkan bayangan pada teks menggunakan `shadows`.
