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

