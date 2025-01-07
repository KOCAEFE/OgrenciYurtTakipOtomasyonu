# Öğrenci Yurt Takip Otomasyonu

## Proje Hakkında
Bu proje, öğrenci yurtlarındaki işleyişi kolaylaştırmak, öğrenci ve personel bilgilerini düzenli bir şekilde kayıt altına almak ve takip etmek için geliştirilmiştir. İlişkisel veri tabanı modelleri kullanılarak sistemin yönetimi kolaylaştırılmıştır.

## Proje Ekibi
- **Efe Kocaefe** (225260305)  
- **Serhat Yıldırım** (185260013)  
- **Ahmet Bingöl** (215260087)

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
Aşağıdaki diyagram, proje kapsamında tasarlanan varlıklar ve aralarındaki ilişkileri göstermektedir.

![E-R Diyagramı](link-to-diagram)


