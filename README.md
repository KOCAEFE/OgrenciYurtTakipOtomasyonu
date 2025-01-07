# Öğrenci Yurt Takip Otomasyonu

## Proje Ekibi
- **Serhat Yıldırım** (185260013)  
- **Ahmet Bingöl** (215260087)
- **Efe Kocaefe** (225260305)

## Proje Hakkında
Bu proje, öğrenci yurtlarındaki işleyişi kolaylaştırmak, öğrenci ve personel bilgilerini düzenli bir şekilde kayıt altına almak ve takip etmek için geliştirilmiştir. İlişkisel veri tabanı modelleri kullanılarak sistemin yönetimi kolaylaştırılmıştır.

# Varlık-Özellik Tablosu:

| **Varlıklar**           | **Özellikler**                                                                                                      |
|-------------------------|----------------------------------------------------------------------------------------------------------------------|
| **Kartlar**             | KartId,OgrenciId                                                                    |
| **Yemekler**            | YemekId,Cesit1,Cesit2,Cesit3                                                            |
| **Tcler**               | TcId,Tc                                                                                              |
| **Taksitler**           | TaksitId,OgrenciId,Odenen,Tarih                                                                                          |
| **KalanBorc**           | BorcId,OgrenciId,KalanBorc                                                                                               |
| **Camasirlar**          | CamasirId,OgrenciId,Tarih,Ucret                               |
| **Veliler**             | VeliId,VeliAd,VeliSoyad,VeliTel                                                                                     |
| **Ogrenciler**          | OgrenciId,OgrenciAd,OgrenciSoyad,TcId,BolumId,VeliId                                             |
| **Bolumler**            | BolumId,BolumAdi                                                                |
| **OdaTipi**             | TipId,TipAdi                                          |
| **Odalar**              | OdaId,OdaNo,KatId,TipId                                                                            |
| **Katlar**              | KatId,KatAdi                                                      |
| **Temizlik**            | TemizlikId,PersonelId,OdaId,Tarih                 |
| **Personel**            | PersonelId,PersonelAdi,PersonelSoyadi,PersonelTel                                                  |




## E-R Diyagramı

![WhatsApp Görsel 2025-01-07 saat 21 00 44_9791df60](https://github.com/user-attachments/assets/93a22e63-806b-458c-9f00-a5120c2758fd)



