# Delphi Veritabanı Sorgulama Uygulaması

Bu proje, Delphi ile geliştirilmiş basit bir veritabanı sorgulama uygulamasını içerir. Uygulama, bir MySQL veritabanına bağlanır ve kullanıcıların çeşitli SQL sorgularını çalıştırmasına olanak tanır.

## İçerik

Proje aşağıdaki ana bileşenlerden oluşur:

*   **`datamodule.pas`**: Veritabanı bağlantısı ve sorguları için kullanılan ana veri modülünü içerir. `TMyConnection` ve `TMyQuery` bileşenleri aracılığıyla veritabanıyla etkileşim kurulur.
*   **Formlar**:
    *   **`Tablo.pas` (Form1)**: Ana formdur. Diğer formlara erişim sağlayan butonları içerir. Uygulamanın ana giriş noktasıdır.
    *   **`selectkomutu.pas` (Form2)**: `SELECT` sorgularını çalıştırmak için kullanılır.  `SELECT` (tüm sütunlar ve belirli sütunlar) ve `SELECT DISTINCT` sorgularını gösterir.
    *   **`wherekomutu.pas` (Form3)**: `WHERE` koşulunu kullanarak filtreleme yapmayı gösterir. Tek koşullu ve `AND` ile birleştirilmiş çoklu koşullu sorgular içerir.
    *   **`orderbykomutu.pas` (Form4)**: `ORDER BY` ile sonuçları sıralamayı ve `LIKE` operatörü ile metin tabanlı filtreleme yapmayı gösterir.
    *   **`inkomutu.pas` (Form5)**: `IN` operatörü ile çoklu değerlere göre filtreleme ve `BETWEEN` operatörü ile aralık filtrelemesi yapmayı gösterir.
    *   **`sqlcount.pas` (Form6)**:  `COUNT`, `MAX`, ve `MIN` gibi SQL toplama (aggregate) işlevlerini gösterir.
    * **`joinkomutu.pas` (Form7)**:  (Şu an için boş) `JOIN` işlemleri için ayrılmış bir formdur. Projenin bu kısmı tamamlanmamıştır.

*  **Veritabanı:** Proje, `veri` adında bir tabloya sahip bir MySQL veritabanı kullanır. Tablonun yapısı aşağıdaki gibidir (örnek):

    | Sütun Adı | Veri Tipi    |
    | --------- | ------------ |
    | no        | INT          |
    | ad        | VARCHAR(255) |
    | soyad     | VARCHAR(255) |
    | sehir     | VARCHAR(255) |
    | numara    | INT          |
    | cinsiyet  | VARCHAR(255) |

## Gereksinimler

*   Delphi (muhtemelen Embarcadero Delphi'nin yeni sürümlerinden biri)
*   MySQL Veritabanı Sunucusu
*   MyDAC (MySQL Data Access Components) kütüphanesi.  Delphi'de MySQL veritabanına bağlanmak için kullanılan popüler bir kütüphanedir. MyDAC'ın kurulu ve Delphi ortamınıza entegre edilmiş olması gerekir.
*   DevExpress VCL Bileşenleri (cxGrid, cxButton, cxLabel, dxSkins, vb. bileşenler kullanıldığı için)

## Kurulum ve Kullanım

1.  **Veritabanı Kurulumu:**
    *   MySQL sunucunuzda `veri` adında bir veritabanı oluşturun.
    *   Yukarıda belirtilen yapıya sahip `veri` tablosunu oluşturun.
    *   Tabloya örnek veriler ekleyin.
    *   `datamodule.pas` dosyasındaki `TMyConnection` bileşeninin özelliklerini (Hostname, Port, Username, Password, Database) kendi MySQL sunucu bilgilerinize göre güncelleyin.

2.  **Proje Açılışı:**
    *   Delphi IDE'nizde projeyi açın.
    *   Gerekli kütüphanelerin (MyDAC ve DevExpress) kurulu olduğundan emin olun.  MyDAC'ın kurulumu genellikle Delphi'nin kurulumu sırasında veya sonrasında ayrı bir paket olarak yapılır. DevExpress VCL bileşenlerinin de lisanslı ve kurulu olması gerekmektedir.

3.  **Derleme ve Çalıştırma:**
    *   Projeyi derleyin (`Run` -> `Build` veya `Run` -> `Run`).
    *   Uygulamayı çalıştırın.
    *   Ana formdaki (Tablo) butonlara tıklayarak farklı sorgu türlerini deneyebilirsiniz.

