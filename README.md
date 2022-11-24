# Tugas 9 PBP

### 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
--> Kita dapat mengambil data JSON tanpa membuat model dengan cara membuat dynamic map dari JSON dan mengakses nilainya dengan konsep dictionary ('data[key]'). Namun hal ini tidak lebih baik daripada membuat model sebelum melakukan pengambilan data JSON karena bisa saja terjadi perubahan struktur fields atau hilang atau malah tidak sesuai yang diinginkan, jika hal ini terjadi akan sulit dikelola.

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
--> 
- checkbox = Membuat checkbox dengan event onChange, akan berubah setiap value watchednya berubah. Pada tugas ini berfungsi untuk menandai film yang watched dan unwatched
- listtile = menampung teks sebagai leading dan trailing
- textbutton = membuat tombol

### 3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
--> Data Json yang telah disediakan sebelumnya pada halaman heroku, diambil menggunakan HTTP yang terdapat di fungsi fetchWatchlist yang akan memanggil fungsi GET yang mengembalikan daftar objek dari MyWatchlist.

FutureBuilder akan memanggil fungsi dan menunggu responnya. Ketika datanya diambil, FutureBuilder akan mengembalikan ListView.builder yang membangun ListTiles dimana telah berisi data yang akan di-mapping dimana didapatkan dari fungsi fetchWatchlist

### 4. Implementasi
--> 
- Menambahkan listtile "My Watch List" pada main.dart dan file lainnya yang berada di folder page.
- Membuat file "watchlist.dart" pada folder model dan mengisi file tersebut dengan code yang saya copy paste dari quicktype, sesuai dengan data json yang tersedia di herokuapp mywatchlist
- Membuat file "fetch_mywatchlist.dart" pada folder functions untuk mengambil data dari json yang tersedia di herokuapp mywatchlist, lalu membuat file "my_watchlist.dart" pada folder page untuk menampilkan data nya.
- membuat file "watchlist_detail.dart" pada folder page untuk menampilkan detail setiap movie atau setiap objek yang ada di "my_watchlist.dart"

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
