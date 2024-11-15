# e_tracer_study_alumni

- **Nama : Nur Muhammad Fadilah**
- **NIM : 20220801114**
- **Mata Kuliah : Pemrograman Mobile**
- **UTS**

## Deskripsi Project
E-Tracker Study Alumni adalah aplikasi yang dirancang untuk membantu universitas atau lembaga pendidikan dalam memantau dan mengelola data alumni. Aplikasi ini memungkinkan alumni untuk memperbarui data mereka, mengikuti survei, dan berinteraksi dengan jaringan alumni lainnya. 

## Objective
- Menyediakan fitur jaringan sosial yang memungkinkan alumni untuk saling terhubung, berbagi pengalaman, serta melakukan komunikasi yang mendukung perkembangan karir dan kolaborasi profesional antar alumni.
- Mengintegrasikan fitur survei untuk mendapatkan feedback dari alumni terkait pengalaman mereka setelah lulus dan dampak pendidikan terhadap karir mereka, yang dapat digunakan untuk perbaikan kurikulum dan fasilitas universitas.
- Menyediakan cara yang mudah dan terorganisir untuk mencari alumni berdasarkan kriteria tertentu seperti angkatan, jurusan, pekerjaan, dan lokasi, yang berguna baik untuk alumni itu sendiri maupun untuk pihak universitas.

## Scope
- Setiap alumni dapat mengakses halaman profil pribadi untuk melihat dan mengedit data mereka.
- Alumni dapat terhubung satu sama lain dalam jaringan alumni berbasis profil.

## Fitur
1. Lihat Profil Alumni :
Alumni dapat melihat dan memperbarui profil mereka yang berisi informasi pribadi, pendidikan, dan pengalaman kerja.
2. Survey Alumni :
Alumni dapat mengisi survei untuk memberikan feedback tentang pengalaman mereka setelah lulus, yang dapat digunakan untuk analisis dan perbaikan program pendidikan.
3. Jaringan Alumni :
Alumni dapat terhubung dengan alumni lain melalui aplikasi, mencari alumni berdasarkan nama, prodi, atau pekerjaan yang sedang dijalani.

## Process Flows
1. View Profile: Pengguna dapat melihat profil dan melakukan Edit Profile.
2. Survey: Pengguna dapat memilih untuk mengisi survei dengan urutan Isi Survey dan kemudian Submit Survey.
3. Alumni Network: Pengguna dapat menjelajah jaringan alumni dan melihat View Alumni Details.

## Flow Diagram
![Alt Text](https://cdn.discordapp.com/attachments/1126065555816841238/1306944513218187274/image.png?ex=6738826d&is=673730ed&hm=3193fc9775b5ed1f82bea18199ddf71e4a61ebbf20a85c8b4cd3f6f5272ba60d&)

## Specification
1. Flutter: Framework utama untuk pengembangan aplikasi.
2. Dart: Bahasa pemrograman yang digunakan di Flutter.
3. Package External:
    - url_launcher: untuk membuka link email dalam aplikasi.

## Menjalakan Project 
1. Clone repository project ini ke dalam komputer Anda (gunakan Git): 
```
gi clone https://github.com/nurmuhammadfadilah/UTS-Pemob-Etracer-study-alumni.git
```
Lalu masuk kedalam folder project 
```
cd UTS-Pemob-Etracer-study-alumni
```
2. Setelah berada di dalam direktori project, jalankan perintah berikut untuk menginstal semua dependensi yang diperlukan:
```
flutter pub get
```
3. Untuk menjalankan aplikasi di perangkat/emulator, gunakan perintah berikut:
```
flutter run
```

note : 
- Fitur login pada aplikasi ini belum terimplementasi, sehingga pada saat login, pengguna bisa memasukkan input sembarangan (acak) untuk melanjutkan ke aplikasi.
- Aplikasi ini belum terhubung ke database atau sistem backend yang menyimpan data alumni secara permanen. Semua data yang ditampilkan di aplikasi saat ini bersifat statis dan hanya disimulasikan menggunakan data dummy.

## HASIL 
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918166320119878/Screenshot_2024-11-15-16-43-46-057_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=f7d014e72b610a6d12bed9b782e5073d376151a40a19b1f1879c5a8fd3a08c9b&=&format=webp&width=216&height=468)
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918166626041866/Screenshot_2024-11-15-16-44-01-995_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=a445475eaada95fd6b346230efd82d7703f90f4791660a03bcdeeb9d0edf0bd4&=&format=webp&width=216&height=468)
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918167070769203/Screenshot_2024-11-15-16-44-13-418_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=b8caff9c5967a3047d0d50da16612f45105f47dda7903ea27a979f707dc5cf34&=&format=webp&width=216&height=468)
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918167553118278/Screenshot_2024-11-15-16-44-31-825_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=f4e06b36231aed7c95788ed6f60c7be66dfcd49e26f86ed8c646271725f2a466&=&format=webp&width=216&height=468)
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918168144646175/Screenshot_2024-11-15-16-44-38-367_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=88f0d252e27678d7ce67199e9dd9ea0ee87854cf18429297c8fd0dd2ce8b1f2b&=&format=webp&width=216&height=468)
![Alt Text](https://media.discordapp.net/attachments/1126065555816841238/1306918167800709162/Screenshot_2024-11-15-16-44-46-404_my.id.etracer.e_tracer_study_alumni.jpg?ex=673869e4&is=67371864&hm=b25e9eecf0c134a8e00e8035afe570745daf667525a3ab1bfc45ba76fcc43a01&=&format=webp&width=216&height=468)