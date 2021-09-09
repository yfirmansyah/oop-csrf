# oop-csrf

Sebelum menjalankan pada browser ada sedikit perubahan configurasi pada xampp server, dibawah ini merupakan error yg terjadi pada praktek csrf 

//<form action="../Config/Routes.php?function=put_pegawai" method="POST">
//<input type="text" name="csrf_token" value="<br />
//<b>Fatal error</b>:  Call to undefined function openssl_random_pseudo_bytes() in <b>E:\xampp2\htdocs\oop-csrf\Config\Csrf.php</b> on line <b>9</b><br />

cara mengatasinya agar tampil edit atau put_pegawai sebagai berikut :
- buka control panel xampp
- pilih Actions -> config
- pilih PHP (php.ini) untuk pengaturan php.ini
- cari extension=php_openssl.dll
- hapus awal ; pada settingan dan simpan
- stop dan start kembali Apachenya
- f5 browser, maka tampilan edit/put_pegawai akan tampil
