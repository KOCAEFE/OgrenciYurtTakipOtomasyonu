Proje Adı: Öğrenci Yurt Takip Otomasyonu
Proje Ekibi: 
	225260305 Efe Kocaefe
	185260013 Serhat Yıldırım
	215260087 Ahmet Bingöl
1.	Proje Özeti:
Projemiz öğrenci yurtlarında işleyişin kolaylaştırılmasını ve düzenli bir şekilde takip edilmesini sağlamaktadır. Projemiz yurtlarda kalan öğrenci ve çalışan personelin bilgileri tutulmak ve gerektiğinde düzenlenmesi hedeflemektedir.Projemiz ilişkisel veri tabanlarını kullanarak sistemi kolay bir hale getirmektedir
2. Proje Ayrıntıları:
2.1. Proje Amaçları:
•	Öğrencilerin kayıtlarının takip edilmesini kolaylaştırmak
•	Personel kayıtlarının ve yaptıkları işlerin düzenli ve sağlık bir şekilde kayıt altına almak
•	Ödemeler ve kalan hesaplamaların kolaylaştırılması	
•	İşletmeyi zaman ve işleyiş bakımından hızlandandırmak
       2.2. Kullanılan Teknolojiler:
•	SQL Server Management Studio 2019
•	İlişkisel Veritabanı Modelleri:
3. Proje Sonuçları:
Bu proje tamamlandığında, otomotiv tamirat ve tadilat işletmeleri aşağıdaki sonuçları elde edecektir:
•	Stok takibi süreçlerinin daha etkin ve verimli hale gelmesi.
•	Müşteri kayıtlarının güvenli ve sistematik bir şekilde tutulması.
•	Maliyet hesaplamalarının doğru ve sistematik bir şekilde yapılması.
4.Tablolar
Toplamda 14 adet tablomuz vardır bunlar şöyledir.
Katlar
•	KatId(PK)
•	KatAdi
Odalar
•	OdaId(PK)
•	OdaNo
•	KatId(FK)
•	TipId(FK)
Oda Tipi
•	TipId(PK)
•	TipAdi
Bolumler
•	BolumId(PK)
•	BolumAdi
Kartlar
•	KartId(PK)
•	ÖğrenciId(FK)
Yemekler
•	YemekId(PK)
•	Cesit1
•	Cesit2
•	Cesit3
•	Tarih
Veliler
•	VeliId(PK
•	VeliAd
•	VeliSoyad
•	VeliTel
Tcler
•	TcId(PK)
•	Tc
Personel
•	PersonelId(PK)
•	PersonelAdi
•	PersonelSoyadi
•	PersonelTel
Temizlik
•	TemizlikId(PK)
•	PersonelId(FK)
•	OdaId(FK)
•	Tarih
Ogrenciler
•	OgrenciId(PK)
•	OgrenciAd
•	OgrenciSoyad
•	OdaId(FK)
•	TcId(FK)
•	BolumId(FK)
•	VeliId(FK)
Camasirlar
•	CamasirId(PK)
•	OgrenciId(FK)
•	Tarih
•	Ucret
# OgrenciYurtTakipOtomasyonu
