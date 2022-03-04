# AÇIKLAMA
Bu proje .net Framework, katmansal mimari ile geliştirilmiş barkodlu satış otomasyonudur.
## Genel Bakış:
Kullanıcılar Program çalıştığında açılan giriş ekranından sisteme girerler, her rol(kasiyer ve yönetici)
sadece kendine özgü alanlara erişim sağlar.
Programın satış ve yönetici paneli olmak üzere iki ana arayuzu bulunmakta;
#### 1)Satış Ekranı: 
Bu ekranda kullanici (kasiyer) Barkodu okutarak satış yapar.
Kullanıcı, satış ekranından satış yapabilir, yaptığı satışlar için fiş oluşturabilir, veresiye borçları ödeyebilir, ödemeye ilişkin detaylı dekont oluşturabilir veya borçlu ekleyebilir.
#### 2)Yönetici paneli:
Bu ekranda ise yönetici; ürün, kasa, kategori, personel vb ekleme ve düzenleme işlemlerini yapar ve bunlara ait raporları görüntüler.
## Veri tabanı görsel çıktısı
![alt text](https://github.com/Qwerty21122/MarketOOP/blob/master/MarketOOP.png?raw=true)

## Veri tabanı kısa açıklamalar
Bu kısımda veri tabanıyla ilgili kafada soru işareti bırakması muhtemel kısımları açıklamaya çalışacağım
### Urunler Tablosu:
##### Sonlandi:
Bit tipinde olup stok tükendiğinde '1'(true) değerini alır. Bu hem kullanıcıya bilgilendirme vermesi için hemde Stokları tükenen ürünlerin yanlışlıkla satılmasını engellemek amacıyla eklendi.
##### Aktif:
Bit tipinde. kullanıcının kaldırdığı ürünlerin inaktif olup listelenmesini engellemek amacıyla eklendi.
##### KritikStokMiktari:
Bazı süreler içinde elde bulunması gereken stok miktarını ifade eder. Stok miktarı kullanıcının belirlediği miktara düştüğünde kullanıcıya uyarı verdirilmesi amacıyla eklendi.
### Kullanıcı Tablosu:
*kullanıcı tablosu, kasayı aktif olarak kullanan personele ait bilgileri tutar.
#### PersonelID:
Hangi işlemi hangi kullanıcının yaptığı belli olsun diye personel tablosunun Id'si ile ilişkilendirildi.
#### KasaID:
Hangi kullanıcının hangi kasadan işlem yaptığı belli olsun diye kasa tablosunun id'si ile ilişkilendirildi.
### SatışDetay Tablosu:
#### SatışID:
Satışa ait kasa ve kullanıcı bilgilerini getirmesi için satış tablosuyla ilişkilendirildi.
*satisdetay tablosu fiş oluşturma ve raporlama işlemleri için kullanıldı.
### OdemeDetay Tablosu
*Borçluların ödemelerine ait detayları saklar.
#### OdemeID:
Ödeme tablosuyla iliskilendirilerek ödemeye ait detaylı bilgilerin getirilmesi amaçlandi.
#### SatisDetayID:
satisdetay tablosu ile ilişkilendirildi. Yapılan ödemenin hangi satış için yapıldığını göstermek amaçlandi.
#### Odendi:
Bit tipinde olup borcun ödenip ödenmediğine dair bilgi verir. Ödenen tutar tamamlandığında trigger ile güncellenerek '1' değerini alır.

## MİMARİ 

![alt text](https://github.com/Qwerty21122/MarketOOP/blob/master/Mimari.jpg?raw=true)

Entity, içerisinde veri tabanındaki tabloları temsil eden sınıfları bulundurur. Bu sınıfların herbiri içerisinde SQL prosedurlerindeki parametreleri temsil eden nesneleri barındırır.
Facade ise Entity Classlarina ait metotları içeren generic Sınıfları barındırır, bu sınıflar ORMBase sınıfından miras alır.
ORMBase tüm entity Classlarin ortak olarak gerçekleştirdiği, veri tabanıyla alakali işlemlerin yapıldığı Delete, Update, insert gibi metotları barındırır. Bu sınıf IORM interface sınıfından implemente edilir.
## Proje Gereklilikler:
#### kullanılan nuget paketler:
Projede ki tum raporlama islemleri icin Microsoft reportViewer kullanıldı
##### Microsoft.reportingServices.ReportViewerControl.Winform.nupkg
#### Bağımlılıklar:
Microsoft.SqlServer.Types.14.0.1016.290.nupkg
 ##### zen.barcode.rendering.framework 
 *Ürünlere barkod oluşturma işlemi için gerekli.

Projeye ait MarketOOP.sql veri tabanı dosyası klasör içerisinde bulunabilir.
Veri tabanını oluşturduktan sonra app.config'den ConnectionStrings düğümü içerisindeki yolu güncellemeyi unutmayınız.

Kullanıcı girişi için veri tabanının personeller tablosuna bakabilirsiniz.
