# Tugas 8 PBP

### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
--> Navigator.push akan menumpuk route atau halaman terakhir dengan yang baru, karena hanya ditumpuk sehingga Navigator.push tidak menghapus route atau halaman terakhir tersebut sehingga saat di pencet button back dapat kembali ke halaman sebelum ditumpuk. Navigator.pushReplacement akan menggantikan route atau halaman terakhir dengan yang baru, karena digantikan sehingga Navigator.pushReplacement akan menghapus route atau halaman terakhir sehingga saat pencet button back tidak dapat kembali ke halaman sebelum digantikan.

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
--> 
- Scaffold, sebagai landasan halaman
- AppBar, biasanya menjadi judul (dari sebuah aplikasi atau halaman
- Container, berfungsi untuk membungkus suatu widget dan memberikan pading serta pading
- Column, semua widget yang ada didalam widget ini akan ditampilkan secara vertical
- Padding, berufngsi untuk memebrikan jarak pada widget
- Text, menampilkan teks dan memberikan style pada teksgn
- Row, semua widget yang ada didalam widget ini akan ditampilkan secara horizontal
- Icon, memberikan ikon pada sebuah widget
- DropdownButton, material design button untuk menampung list of item
- showDatePicker, material design untuk menampilkan dialog date picker
- ListTile: row yang menampung teks sebagai leading dan trailing
- Drawer: widget yang berfungsi untuk membuat drawer di sisi kiri layar (untuk navigasi)

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
--> onTap, onPressed, onChanged, onSaved

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
--> Widget Navigator bekerja dengan menampilkan screen teratas pada stack of route dengan memperhatikan method yang digunakan pada object Navigator. Dalam melakukan navigasi ke layar baru, BuildContext yang menyimpan route widget akan diakses oleh Navigator dengan menggunakan method pada class Navigator seperti push(), pop(), pushReplacement(), dan lain-lain.

### 5. Checklist
-->
- Membuat file drawer.dart untuk menjadi drawernya lalu dihubungkan ke form.dart, data.dart, dan main.dart dengan "drawer: const DrawerApp()"
- Membuat menu yang clickable dengan ListTile pada children widget di drawer.dart, menu yang dibuat ada 3 yaitu Counter_7, Tambah budget, dan Data budget.
- Setiap menu tersebut di Navigator.pushReplacement ke halaman masing masing.
- Membuat file form.dart dengan input judul, nominal, tanggal, dan jenis. Lalu data disimpan di list yang berada di global.dart
- Membuat file data.dart untuk menampilkan data yang disimpan di global.dart dengan menggunakan ListView.builder




# Tugas 7 PBP

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
--> Stateless Widget dapat dikatakan sebagai widget statis yang berarti widget tersebut tidak berubah. Contohnya seperti judul, karena biasanya judul tidak berubah sama sekali maka memakai stateless widget.
Stateful Widget merupakan widget yang dinamis. Ini berarti widget ini dapat merubah tampilannya sesuai response dari events yang dipicu baik dari interaksi user maupun adanya variabel atau nilai baru yang didapat. Contohnya seperti pada widget counter, ketika tombol diklik maka tulisan akan berubah, berarti memakai stateful karena dapat berubah.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
--> 
* Scaffold, sebagai landasan halaman
* AppBar(), biasanya menjadi judul (dari sebuah aplikasi atau halaman)
* Center(), semua Widget yang ada didalam Widget ini akan diletakkan di bagian tengah
* Column(), semua widget yang ada didalam widget ini akan ditampilkan secara vertical
* Row(), semua widget yang ada didalam widget ini akan ditampilkan secara horizontal
* Text(), menampilkan teks dan memberikan style pada teks
* FloatingActionButton(), menampilkan button floating
* Icon(), memberikan ikon pada sebuah widget

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
--> Jadi, pada stateful widget data atau state akan disimpan pada object State membuatnya terpisah dari bagian presentasi (atau view) sehingga jika mau mengganti data atau state tersebut tinggal memanggil fungsi setState(). Contohnya pada variable count yang akan selalu berubah jika tombol dipencet, maka dari itu ia memanggil fungsi setState().

4. Jelaskan perbedaan antara const dengan final.
--> Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
-->
* Menjalankan flutter createapp counter_7
* Membuat condition if-else berdasarkan nilai counter, jika genap maka text tertulis "GENAP" dengan warna merah, jika ganjil maka tertulis "GANJIL" dengan warna biru
* Membuat fungsi decrement 
* Membuat tombol baru untuk fungsi decrement
