---
title: "Google Account Unpar"
date: 2013-09-04T06:25:00+0700
draft: false
tags: ["unpar", "gsuite"]
---

This content is written in Bahasa Indonesia.

Sudahkah teman-teman UNPAR tahu, tiap mahasiswa di UNPAR sekarang mendapatkan satu google account sesuai dengan email student.unpar.ac.id masing-masing? Google account ini dapat diakses di [http://gmail.unpar.ac.id](http://gmail.unpar.ac.id). Di situ teman-teman dapat mengakses gmail, google drive, google calendar, dan beberapa google service lainnya.

Sejak tahu mengenai berita ini, I became obsessed with it. Jadi, singkat cerita, saya mencoba untuk login ke account ini pada handphone android saya, dan gagal. Why? Padahal ini adalah google account, menggunakan fasilitas Single Sign-On unpar (CAS Unpar), dan semestinya saya bisa login menggunakan browser sign-in saat saya mau melakukan login dengan CAS pada android.

Jika teman-teman periksa dengan teliti pada [http://www.digicert.com/help/](https://www.digicert.com/help/), setelah teman-teman memasukkan alamat "cas.unpar.ac.id" dan scroll terus ke bawah, teman-teman akan menemukan informasi berikut: "_The server is not sending the required intermediate certificate._". Untungnya, ada beberapa solusi, paling tidak 2 solusi yang bisa saya pikirkan.

Solusi pertama, BTI harus meng-install intermediate certificate ini pada servernya. Selesailah semua masalah.

Solusi kedua, ini adalah solusi bagi kalian pengguna android yang suka ngoprek gadget kalian, dan berada pada minimal android versi 4.0. Bagi pengguna android versi 2.3 ke bawah, kalian bisa langsung sign in kok, masalah ini cuma ada di 4.0 ke atas. Berikut langkah-langkahnya:

1.  Pertama download file ini: [http://www.digicert.com/CACerts/IntermediatesCA3.crt](https://www.digicert.com/CACerts/IntermediatesCA3.crt). Copy ke folder utama pada android kalian.
2.  Pada android kalian, buka Settings>Security>Install from storage.
3.  Setelah itu, akan muncul dialog box "Name the certificate", pilih OK.
4.  Jika kalian belum mengaktifkan lock screen security (pattern lock / pin / password) kalian akan diminta untuk mengaktifkan lock screen security tersebut.
5.  Setelah certificate tersebut terinstall, teman-teman dapat melakukan login google account melalui Settings>Add account>Google>Existing>\[tombol menu\]>Browser sign-in. Setelah itu, silahkan masukkan account student.unpar.ac.id teman-teman berikut passwordnya, dan _voila_, google account student.unpar.ac.id sudah ter-sync dengan android teman-teman!

Semoga bermanaat, dan selamat ber-google ria!