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
