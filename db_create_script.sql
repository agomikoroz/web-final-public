drop schema if exists `webfinal`;
create schema `webfinal`;
USE `webfinal`;

DROP TABLE IF EXISTS `news`;

create table `news` (
	`id` int not null auto_increment,
    `image` varchar(1024) not null,
    `title` varchar(512) not null,
    `content` text not null,
    `release_date` datetime not null,
    `author_id` int not null,
    `category_id` int not null,
    `rating` int not null default(0),
    primary key(`id`)
);

drop table if exists `author`;

create table `author` (
	`id` int not null auto_increment,
	`name` varchar(128) not null,
    primary key(`id`)
);

drop table if exists `category`;

create table `category` (
	`id` int not null auto_increment,
    `title` varchar(128) not null,
    primary key(`id`)
);

insert into `author` values
(1, 'Haberler.com'),
(2, 'Akşam'),
(3, 'Hürriyet'),
(4, 'İHA'),
(5, 'AA'),
(6, 'T24'),
(7, 'Milliyet'),
(8, 'CNN Türk'),
(9, 'HABERTURK'),
(10, 'GazeteVatan');

insert into `category` values
(1, 'highlight'),
(2, 'haber'),
(3, 'spor');

insert into `news` (id, image, title, content, release_date, author_id, category_id) values
(1, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRQlw.img?w=104&h=84&q=90&m=6&f=jpg&u=t', 'YKS\'ye geç kalan aday, kilitlenen okul kapısından atlayarak çıktı', 'Bugün iyi bir üniversite hayaliyle YKS\'ye giren binlerce öğrenci, emeklerinin karşılığını almak için sınavda ter döktü. Ancak her yıl olduğu gibi, bu yıl da sınava geç kalanlar oldu. Ankara\'da da sınava geç kaldığı için alınmayan aday, okulun kilitli kapısının üzerinden atlayarak çıktı. ', date('2024-06-09'), 1, 1),
(2, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRyki.img?w=768&h=432&m=6&x=307&y=130&s=171&d=171', 'Real Madrid, Arda Güler için kararını verdi', 'İspanya La Liga ekiplerinden Real Madrid, birçok teklif gelmesine rağmen Arda Güler için kararını verdi.

Real Madrid\'in 2023-24 sezonu öncesi Fenerbahçe\'den 20+10 milyon euroya transfer ettiği Arda Güler için sezon ortasında birçok transfer iddiası ortaya atılmıştı.

Milli futbolcunun başka bir takıma kiralanacağına dair haberler uluslararası basında yer alırken, Arda Güler sezonu Real Madrid\'de tamamlamıştı.

Sezonun son haftalarında daha fazla forma şansı bulan ve performansıyla göz dolduran Arda Güler; Şampiyonlar Ligi, LaLiga ve İspanya Süper Kupası\'nda zafer yaşamıştı.

Öte yandan Fabrizio Romano, Arda Güler\'le ilgili dikkat çeken bir haber geçti.

ARDA GÜLER İÇİN TEKLİF VAR

Arda Güler\'in kiralanması için Real Madrid\'in birçok teklif aldığını aktaran Romano, başkent ekibinin tüm teklifleri reddettiğini bildirdi.

Haberde Arda Güler\'in forma şansı bulamadığı dönemde dahi ayrılmak istemediği vurgulandı.
EURO 2024\'e odaklanan milli futbolcunun Real Madrid\'de kalmanın mutluluğunu yaşadığı ve forma için mücadele edeceği kaydedildi.

Real Madrid formasıyla LaLiga\'da 10 maça çıkıp 373 dakika süre alan Arda Güler 6 gol sevinci yaşamıştı.

Milli futbolcu, İspanya Kral Kupası ve İspanya Süper Kupa\'da da 1\'er maç görev aldı.', date('2024-06-09'), 2, 1),
(3, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRFPF.img?w=500&h=640&m=6&x=136&y=31&s=121&d=121', 'Boynundan yukarısına herkes \'güzel\' diyordu... Ama çok çekti dolgun bedeninden!', 'Gösteri dünyası özellikle de moda dünyası, kelimenin tam anlamıyla son derece acımasız bir alan. En çok da kadınlar açısından. Erkek oyuncular ya da modeller yaş aldıklarında bile \'karizması yüksek\' diye nitelendirilip kamera karşısına geçmeyi ya da podyuma çıkmayı sürdürebiliyor. Ama kadın yıldızlar için aynı durum söz konusu değil. En ufak bir kırışıklık ya da aldıkları birkaç kilo kariyerlerini tehlikeye sokabiliyor.

Moda dünyası başta olmak üzere sinemada da 2000\'lerin başında baskın olan \'sıfır beden\' akımını hatırlarsınız.

O sıralarda açlıktan kırılan, kemikleri sayılan modeller, firmaların gözdesiydi. İşte o dönemlerde bir dolgun bedene sahip bir model çıktı ve uğraşa uğraşa kendi görünümünü kabul ettirdi. Üstelik kendisi görünen genç kızların da bu alanda önünü açtı, onların öncüsü oldu.

BİR AKIMIN ÖNCÜSÜ OLDU

Onun ardından da dolgun bedenleriyle daha fazla kadın podyumlarda boy göstermeye başladı. Bedensel olumlama olarak adlandırılan bu akımın öncüsü Ashley Graham oldu.

O güne kadar dokunsan kırılacak gibi görünen zayıf bedenlerin tam tersine görüntüsüyle ne yaptı, ne etti kendini moda dünyasında kabul ettirdi Graham.

Hatta kıvrımlı modellere kapılarını sıkı sıkıya kapatan ünlü Sports Illustrated dergisine kapak pozu bile verdi.

Bütün bunların sonucunda da Ashley Graham, moda dünyasındaki bir kaleyi de yıkmış oldu.

OKULDA  ARKADAŞLARININ ZORBALIĞINA UĞRADI

Ama onun bugünlere kolayca geldiğini sanıyorsanız yanılıyorsunuz. Çünkü kariyerinin başında görüntüsü nedeniyle kaç kapı yüzüne kapandı, uğraştı, zayıf meslektaşlarından daha fazla çabaladı sonunda amacına ulaştı.

36 yaşındaki üç çocuk annesi Graham, Time dergisinde yayınlanan makalesinde okul yıllarında da kıvrımlı görüntüsü nedeniyle arkadaşları tarafından zorbalığa uğradığını anlattı.
', date('2024-06-09'), 3, 1),
(4, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nR8ob.img?w=581&h=993&m=6', 'Adeta gök delindi dolu yağdı', 'Sivas’ın Gemerek ilçesinde etkili şiddetli dolu yağışı cep telefonu kamerasına yansıdı.

Sivas’ta etkili olan yağmur hayatı olumsuz etkiledi. Dün öğleden sonra Gemerek ilçesi Çat yaylasında etkili olan yağmur yerini dolu yağışına bıraktı. Gökten yağmur yerine adeta fındık büyülüğünde dolu yağdı. Dolunun yağdığını gören Hakan Avcı isimli bir vatandaş kapalı alana sığındı. Ardından cep telefonuna sarılan Avcı şiddetli yağan doluyu cep telefonu kamerasıyla kaydetti.

"Yaylada mahsur kaldık"

Hakan Avcı, yaylada kısa süreliğine mahsur kaldıklarını ifade ederek, " Yaylaya çıktığımızda biranda yağmur başladı. Yaklaşık 5 dakika yağmur yağdı. Peşinden yağış doluya döndü. 15-20 dakika dolu yağdı. Yaylada mahsur kaldık. Çat köyünden Latif bey geldi traktörüyle aracımızı çekti, kurtardı" dedi.', date('2024-06-09'), 4, 1),
(5, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nQMkC.img?w=768&h=512&m=6', 'Gülmek için geldiler, unutmamak için ayrıldılar', 'Elazığ’da sahnelenen komedi oyununda, öğrencilerden oluşan tiyatro topluluğu final bölümünde, kadına yönelik şiddete dikkat çekti. Münevver Karabulut, Emine Bulut ve Özgecan Aslan’ın anıldığı oyunda öğrencilerin performansı büyük alkış aldı.

Elazığ’da Kadına Yönelik Şiddetle Mücadele Derneği ile Güler Misin Ağlar Mısın Tiyatro Topluluğu işbirliğiyle tiyatro gösterisi ile sahnelendi. Fırat Üniversitesi Spor Bilimleri Fakültesi öğretim üyesi ve tiyatro topluluğu başkanı Mehmet Akif Kıraç öncülüğünde fakülte öğrencilerinden oluşan tiyatro topluluğu, 4 perdelik komedi oyunuyla Nurettin Ardıçoğlu Kültür Merkezinde sahne aldı. Kadına yönelik şiddet konusuna dikkat çekilen ve zaman zaman duygusal anların da yaşandığı son oyunda, öğrencilerin performansı izleyicilerden büyük alkış aldı. Büyük beğeni toplayan oyunda, cinayete kurban giden Münevver Karabulut, Emine Bulut ve Özgecan Aslan’ın isimleri de anıldı.

Oyun sonrası açıklamalara bulunan tiyatro topluluğu başkanı Mehmet Akif Kıraç, ’’İlk sahnemiz Atatürk Kültür Merkezinde yaklaşık 800 izleyiciyle Elazığ’ın Çayda Çıra efsanesini ele aldık. Çok güzel tepkiler aldık. Devamında haftalık komediye yönelik skeçlerimiz oldu. Ancak sosyal farkındalık çalışması olarak özellikle gündemde olan, canımızı yakan ve hassas noktamız olan kadına şiddet konusunu ele aldık. Yoğun bir katılım sağladılar. En azından sesimizi daha fazla kitlelere duyurabileceğimiz bir ortam oluşturuldu. Her zaman gündemi takip eden mükemmel bir tiyatro yapısı var. Son, 4’üncü olan oyunumuzda gerçekten ağlayan, üzülen insanlar vardı. Kimsenin ağlamasına istemeyiz ama bu sahnede gösterdiğimiz şeyleri gerçekte yaşayan kadınlar var. Bunu empati yapmalarını istiyoruz. Bu arada 30 Haziran’da da daha büyük bir sahnede daha bir kitle ve katılımla kadına şiddetle ilgili özellikle tek bir oyun oynayacağız. Tüm Elazığ’ı bekliyoruz” dedi.
', date('2024-06-09'), 4, 1),
(6, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRoq4.img?w=800&h=435&q=60&m=2&f=jpg', 'Kaportacı 12 metrelik demir direğin üzerine 70 metrekarelik ev yaptı', 'Kaportacı 12 metrelik demir direğin üzerine 70 metrekarelik ev yaptı

Rizeli Cihat Çelik, 6 yıllık çabası sonucunda 12 metrelik demir direk üzerine 70 metrekarelik 2 katlı ev kurdu.', date('2024-06-09'), 5, 1),
(7, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRHWm.img?w=768&h=576&m=6', 'Balıkçılar tarafından cansız bedeni bulunan kızın cenazesi Adli Tıp Kurumu’ndan alındı', 'Büyükçekmece’de balıkçılar tarafından cesedi halıya sarılı ve dambılla denize atılmış halde bulunan 24 yaşındaki Sedef Güler’in cenazesi, ailesi tarafından Adli Tıp Kurumu’ndan teslim alındı.

Büyükçekmece’de dün denizde balıkçılar tarafından halıya sarılmış ve 10 kiloluk dambılla denize atılmış kadın cesedi bulunmuştu. Olay yerine gelen polis ekipleri yaptıkları incelemede genç kadının cesedinin ayrıca bir zincirle sarıldığını tespit etmişti. Elleri ve ayakları bağlı olan cesedin yüzünün de tanınmaz halde olduğu belirlenmişti. Yapılan incelemenin ardından kadın cesedinin Avcılar’da oturan ve kayıp ihbarı yapılan Sedef Güler’e ait olduğu belirlenmişti.

Olay yerindeki incelemenin ardından 24 yaşındaki kızın cansız bedeni Adli Tıp Kurumu morguna kaldırıldı. Burada yapılan otopsi işleminin ardından 24 yaşındaki kızın cenazesi ablası Sevda Güler ve yakınları tarafından teslim alındı. Güler’in cenazesinin yarın öğle namazına müteakip Başakşehir İkitelli Köyiçi Mezarlığı’na defnedileceği öğrenildi.

Öte yandan kardeşinin cansız bedenini teslim alan gözü yaşlı abla Sevda Güler’in yakınlarının yardımıyla ayakta durduğu görüldü.', date('2024-06-09'), 4, 1),
(8, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRcvB.img?w=768&h=432&m=6&x=447&y=91&s=522&d=202', 'Gaziantep FK, Selçuk İnan ile sözleşme yeniledi', 'Trendyol Süper Lig ekiplerinden Gaziantep FK, teknik direktör Selçuk İnan\'ın 2024-25 sezonunda da takımın başında olacağını açıkladı.

Gaziantep Futbol Kulübü, 2024-2025 sezonunda teknik direktör Selçuk İnan ile yola devam etme kararı aldındığını açıkladı.

Gaziantep FK, son 3 haftasına düşme potasında girdiği Trendyol Süper Lig\'de 2023-2024 sezonunu 44 puanla 11. sırada tamamladı. Yeni sezon çalışmalarına erken başlayan kırmızı-siyahlılar, Süper Lig\'in en genç teknik direktörü unvanını elinde bulunduran Selçuk İnan ile 2024-2025 sezonunda da yola devam etme kararı aldı.

GENÇ TEKNİK ADAMDAN 1.60 PUAN ORTALAMASI

Göreve geldiği süre boyunca 1.60 puan ortalaması yakalayan genç teknik adam Selçuk İnan, düşme potasında yer alan Gaziantep FK ile çıktığı 10 maçta 5 galibiyet, 1 beraberlik ve 4 mağlubiyet alarak hanesine 16 puan yazdırdı ve ligde kalmayı başardı. Gaziantep FK, özellikle ligin son 3 haftasındaki 6-1\'lik Adana Demirspor, 3-1\'lik Fatih Karagümrük ve 1-0\'lık Pendikspor galibiyetleriyle ligi düşme potasının 5 sıra üstünde tamamladı.

SELÇUK İNAN\'LA YENİ SEZONDA DA DEVAM

Gaziantep FK, sosyal medya hesabından yaptığı yazılı açıklamada Selçuk İnan ile gelecek sezonda da devam etme kararı aldıklarını açıkladı. Açıklamada, \'Gaziantep Futbol Kulübümüz, Teknik Direktörümüz Selçuk İnan ile yapılan karşılıklı görüşmeler sonucunda yeni sezonda da devam etme kararı almıştır. Göreve geldiği süre boyunca 1.60 puan ortalaması yakalayarak takımımıza büyük katkılarda bulunan Selçuk İnan, 2024 - 2025 sezonunda da görevine devam edecektir. Teknik Direktörümüz Selçuk İnan ile Başkanımız Memik Yılmaz bir araya gelerek yeni sezon planlamasını gerçekleştirerek çalışmalarına başlamıştır. Yeni sezonda da Gaziantep şehri bir kez daha birlikteliğini göstereceğine inancımızın sonsuz olduğunu belirtir, taraftarlarımızın desteğiyle birlikte başarılarla dolu bir sezon yaşayacağımıza gönülden inanıyoruz\' ifadelerine yer verildi.', date('2024-06-09'), 2, 1),
(9, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1iTGLJ.img?w=800&h=435&q=60&m=2&f=jpg', 'Birinin sizden hoşlandığını nasıl anlarsınız?', 'Birinin sizden hoşlandığını nasıl anlarsınız?


KİŞİSEL DETAYLAR: nsanlar birinden hoşlanmaya başladıklarında genellikle kendileri hakkında daha fazla kişisel ayrıntı vemeye eğilimli olurlar. Bu ayrıntıların içerisinde gündelik hayatta yaşadıkları aksaklıklar veya kusurlar bile yer alabilir.', date('2024-06-09'), 6, 1),
(10, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRoeQ.img?w=732&h=411&m=6', 'İş Bankası tüm müşterilerine mesaj atarak pazar günü için uyardı', 'Türkiye İş Bankası, bankanın mobil uygulaması İşCep üzerinden FAST işlemine ilişkin müşterilerine kesinti bildiriminde bulundu. Banka tarafından yapılan bildirimde 9 Haziran 2024 Pazar günü FAST işlemleri yapılmayacağı belirtildi.

SİSTEMDE BAKIM ÇALIŞMASI YAPILACAK
İş Bankası, "FAST Sistemi\'nde gerçekleştirilecek bakım çalışması nedeniyle 9 Haziran 2024 pazar günü 05.00-08.00 saatleri arasında FAST işlemleri yapılamayacaktır" açıklamasını yaptı.

FAST SİSTEMİ NEDİR?
?FAST (Fonların Anlık ve Sürekli Transferi), TCMB\'nin sunduğu anlık olarak 7/24 gerçekleştirilebilen para transferlerine yönelik bir bankalar arası ödeme sistemidir.

FAST Sistemi\'ni kullanmak için, müşterisi olduğunuz mobil ya da internet bankacılığı uygulamalarına giriş yapabilirsiniz. 7x24 kesintisiz çalışan FAST ödemelerini kolayca yapabilir ve ödeme talimatınızı girerken alıcının hesap bilgilerini veya kolay adres bilgilerini kullanabilirsiniz.
Ödeme talimatınızın ardından işlem anında gerçekleşecek ve hem gönderici hem de alıcı bankalar tarafından bilgilendirilecek. İşlem tutarı hemen alıcının hesabına aktarılacak ve kullanılabilir hale gelecektir.', date('2024-06-09'), 1, 1),
(11, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRyYJ.img?w=768&h=432&m=6', 'Türkiye’nin 82. ili olarak anılan yaylada mesire alanı tepkisi', 'Kaçak ve çarpık yapılaşmanın sembolü olan ve Türkiye’nin 82. ili olarak anılmaya başlayan Sisdağı Yaylası’nda yöre sakinleri Sandık Gölü mevkisinin mesire olarak işletilmek üzere tesisleşmeye açılmasına yönelik karara tepki gösterdi. Basın açıklaması yapılmak istenilen göl çevresine inşaat alanından gitmeye çalışan yayla sakinleri ve jandarma ekipleri arasında gerginlik yaşadı.

Trabzon ve Giresun’un ortak kullandığı yüzlerce yayla evinin bulunduğu Sisdağı Yaylası, kaçak ve çirkin yapılaşmanın en kötü örneğini gözler önüne seriyor. Kaçak yapılar nedeniyle neredeyse yer kalmayan ve doğal güzelliği yok olan 2 bin 182 rakımlı Sisdağı Yaylası, kaçak yapıların yıkılmasına rağmen çarpık yapılaşmanın en kötü örneklerinden biri olarak gösterilmekten kurtulamadı. Betonarme yapılarla site görünümüne kavuşan Sisdağı Yaylası artık Türkiye’nin 82. ili olarak anılırken, yayla sakinleri Sandık Gölü mevkisinin mesire olarak işletilmek üzere tesisleşmeye açılmasına yönelik karara tepki gösterdi. Doğal yapının bozulmaması ve endemik bitki çeşitliliğinin korunması amacıyla imza toplayan yöre sakinleri inşaatın durdurulması için müracaatta bulunurken, yaklaşık 7 dönümlük alanda başlatılan projede bungalov, restoran ve kamelyalar yer alacak.

Sis Dağı’na çıkan yerli ve yabancı turistlerin uğrak yerlerinden biri haline gelen, etrafındaki zifin çicekleri ile ilgi çeken Sandık Gölü ve Şelalesi çevresinde tesis yapılmak üzere başlatılan çalışmalarına tepki gösteren yöre sakinleri göl çevresinde basın açıklaması yapmak istedi. Basın toplantısı yapılacak alana gitmek isteyen yöre sakinleri ile şirket çalışanları arasında tartışma yaşandı. Yayla sakinleri tarafından proje alanına çekilen şeritler ve tabelalar sökülürken, olaya jandarma ekipleri de müdahale etti. Jandarma ekiplerince inşaat alanına girmeye çalışan yayla sakinlerine izin verilmezken kısa süreli gerginlik yaşandı. İnşaat alanına giremeyen yayla sakinleri Sandık Gölü çevresine giderek basın açıklaması düzenledi.', date('2024-06-09'), 4, 1),
(12, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nEIp6.img?w=768&h=432&m=6', 'Çocuk doktoru bulmak zorlaşacak', 'Plastik, rekonstrüktif ve estetik cerrah kadroları doldu; pediatri bölümünde ciddi kayıp var
TUS sonuçlarına göre çocuk başta olmak üzere kadın doğum ve cerrahi gibi bölümler yine çok tercih edilmedi. Hekimler ‘‘Önümüzdeki yıllarda ne ameliyat edecek cerrah ne çocuğumuza bakacak hekim bulacağız’’ diye konuştu.

Çocuk hastalıkları ve sağlığı bölümü kadrolarının büyük bölümünün boş kaldığı, bunu çocuk cerrahisi, genel cerrahi, acil tıp, kadın doğum, iç hastalıkları, kalp ve damar cerrahisi gibi gibi bölümlerin izlediği görüldü. Plastik, rekonstrüktif ve estetik cerrah, ortopedi, fizyoloji, psikiyatri, göz hastalıkları, fiziksel tıp ve rehabilitasyon, deri ve zührevi hastalıklar gibi branşlar ise yüksek puanlarla kadrolarını büyük oranda kapattı.

BirGün\'den Sibel Bahçetepe\'nin haberine göre, tabip odaları ve hekimler, özellikle iş yükü, nöbet fazlalığı, ekonomik ve özlük haklarının yetersizliği, şiddet, malpraktis (hatalı tıbbi uygulama) dava gibi durumların tercihleri etkilediğini belirterek "Özellikle pediatri ve cerrahide kan kaybı sürüyor. Bu durum kamu hastanelerinde ciddi sorunlara yol açacak" dedi.

2023 yılında TUS 2. dönem sonuçlarında çocuk cerrahisinde yüzde 62, pediatride yüzde 60, beyin cerrahisinde yüzde 41, acil tıpta ise yüzde 34, dahiliye kadrolarının yüzde 33’ü boş kalmıştı. 2024 TUS 1. dönemde de benzer bir tablo ortaya çıktı. Bazı hastanelerde özellikle çocuk sağlığı ve hastalıkları bölümlerinde açılan kadrolar hiç dolmadı. Pediatri alanında yaşanan bu tablo endişeleri de beraberinde getirdi.

Türk Pediatri Kurumu Başkanı Prof. Dr. Haluk Çokuğraş, "Son bir kaç TUS’ta benzer tablo yaşanıyor. Maalesef pediatride ciddi bir kan kaybı var" dedi.

Bu durumun pek çok nedeni olduğunu söyleyen Çokuğraş, "Uzun yıllardan gelen mecburi hizmetten tutun da ağır nöbetleri sayabiliriz. Çocuk sağlığı ve hastalıkları bölümü aslında çok zevkli bir branştır ama nöbetleri ağır geçiyor, hekimlere yönelik şiddetin boyutu artıyor. Bir de malpraktis davaları var, bu bizim çok canımızı yakıyor. Birkaç tane hekim arkadaşımız var ki çok ağır tazminatlara mahkûm oldular. Normalde yaşama şansı olmayan 600-700 gramlık bebekleri yaşatıyoruz ama bu çocuklarda birtakım hasarlar kalabiliyor. Bu nedenle hekimlere ciddi davalar açılıyor. Bu durum tercihleri etkiliyor. Ayrıca insanların daha kolay diyebileceğim, nöbetleri daha hafif olan, risk alınmayan cildiye gibi branşlara yöneliyorlar" diye konuştu.', date('2024-06-09'), 6, 1),

(13, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nS6dG.img?w=768&h=543&m=6', 'Kasten öldürme suçundan 9 yıl 2 ay cezası bulunan şahıs yakalandı', 'Samsun’da kasten öldürme suçundan 9 yıl 2 ay cezası bulunan şahıs jandarma tarafından yakalandı.

Edinilen bilgiye göre, Vezirköprü İlçe Jandarma Komutanlığı ekipleri, kasten öldürme suçundan 9 yıl 2 ay hapis cezası ile aranan B.K.’yi yakalayarak gözaltına aldı. Şahıs sevk edildiği adli makamlarca tutuklanarak Vezirköprü M Tipi Kapalı Cezaevine teslim edildi.', date('2024-06-09'), 4, 2),
(14, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nREKM.img?w=460&h=340&m=6', 'Minibüsten düştüğü iddia edilen 18 yaşındaki Yaren öldü', 'Olay, öğle saatlerinde Tunceli-Elazığ kara yolunun Sorpiyan mevkisinde meydana geldi. F.Y. yönetimindeki 23 ADS 252 plakalı minibüs, seyir halindeyken iddiaya göre, yan koltukta oturan Yaren Y., araçtan düştü.

F.Y. kanlar içindeki Yaren Y.\'yi alarak Tunceli Devlet Hastanesi’ne doğru yola çıktı. Şehir merkezine gelen F.Y., yolu bulamayınca kırmızı ışıkta gördüğü taksiye binip kendilerini hastaneye götürmesini istedi. Taksiyle hastaneye getirilen Yaren Y. hayatını kaybetti. Yaren Y.’nin cansız bedeni otopsi için hastane morguna kaldırılırken, F.Y. gözaltına alındı. Olayla ilgili soruşturma başlatıldı.

Olayın yaşandığı yerde inceleme yapılırken, minibüs bırakıldığı yerden alınarak emniyete götürüldü. Araçta inceleme yapılırken, çiftin Kahramanmaraş’tan Tunceli ve çevre illere halı satmaya geldikleri, bir süre önce ayrılıp tekrar birlikte yaşamaya başladıkları öğrenildi.
Büyükçekmece\'de bulunan cesetle ilgili kan donduran itiraf: Cesedi zincirle battaniye koyduk, köprüden attık Canlı yayın açtı, dehşet saçtı: Cesareti olmayan izlemesin', date('2024-06-09'), 7, 2),
(15, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nS2fM.img?w=768&h=432&m=6', 'Yol kenarından başından vurulmuş halde ölü bulundu', 'Olay, Adnan Menderes Mahallesi 562 sokak üzerinde saat 16.30 sıralarında meydana geldi. Edinilen bilgiye göre, bir kişinin başından vurulmuş halde yol kenarında hareketsiz yattığını görenler durumu 112 Acil Çağrı Merkezi’ne bildirdi. İhbar üzerine bölgeye sağlık ve polis ekipleri sevk edildi. Kısa sürede olay yerine gelen sağlık ekipleri yaptıkları kontrollerde şahsın hayatını kaybettiğini belirledi. Polis ekipleri tarafından yapılan incelemede de şahsın ismini Gürhan Küçük (45) olduğu tespit edilirken, Küçük’ün elinde bulunan uzun namlulu silahla kendi hayatına son verdiği ihtimali üzerinde durulduğu öğrenildi. Küçük’ün cansız bedeni gerekli olay yeri inceleme çalışmalarının ardından hastane morguna kaldırıldı.
', date('2024-06-09'), 4, 2),
(16, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRZvK.img?w=720&h=490&m=6', 'YKS dönüşü korkunç kaza! İlçe Milli Eğitim Müdürü\'nün kullandığı kamyonet şarampole yuvarlandı', 'Tunceli\'nin Hozat İlçe Milli Eğitim Müdürü Murat Kaflı (45) yönetimindeki kamyonet, kent merkezindeki Yüksek Kurumları Sınavı’ndan (YKS) ilçeye dönüş yolunda kontrolden çıkarak şarampole yuvarlandı. Kazada Kaflı ile oğlu Egemen (19) ve 2 öğrencisi yaralandı. Kaza, akşam saatlerinde Tunceli- Hozat karayolunun Çığırlı köyü mevkisinde meydana geldi. Hozat ilçe Milli Eğitim Müdürü Murat Kaflı yönetimindeki 34 EHA 086 kamyonet, sürücüsünün direksiyon kontrolünü yitirmesi sonucu şarampole yuvarlandı. Kazada Kaflı ile oğlu Egemen ve 2 öğrencisi yaralanırken, ihbarla bölgeye sağlık ve jandarma ekipleri sevk edildi. Müdür Kaflı ve diğer yaralılar, ilk müdahalenin ardından Tunceli Devlet Hastanesi’ne kaldırılarak tedaviye alındı. Oğlu ve 2 öğrencisini kent merkezindeki YKS sınavına götürdüğü ve dönüş yolunda kaza yaptığı öğrenilen Müdür Kaflı\'nın vücudunda kırıklar olduğu, diğer yaralıların ise hayati tehlikelerinin olmadığı belirtildi. Kazayla ilgili inceleme başlatıldı.', date('2024-06-09'), 8, 2),
(17, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nS8ma.img?w=626&h=419&m=6', 'Geri manevra yaparken 2 kişiyi yaraladı', 'Geri manevra yaparken 2 kişiyi yaraladı

Rizede, ara sokakta sürücüsünün geri manevra yaptığı kamyonetin çarparak ezdiği 2 yaya yaralandı. Kaza anı çevredeki apartmanın güvenlik kamerasına yansıdı.

Kaza, saat 11.00 sıralarında Fener Mahallesinde bir ara sokakta meydana geldi. Resul Yılmaz yönetimindeki 53 ACK 172 plakalı kamyonet, sürücüsünün geri manevra yaptığı esnada yolun karşısına geçmeye çalışan Seçkin Barış ve Sevil Sukaşa çarpıp, ezdi.

Kazada kamyonet altında kalan 2 yaya yaralandı. Çevredekilerin yardımı ile aracın altından kurtarılan yaralılar, ihbar üzerine adrese gelen sağlık ekiplerince Rize Devlet Hastanesine kaldırıldı. Hastanede tedaviye alınan yaralıların sağlık durumunun iyi olduğu belirtilirken, polis kaza sonrası kamyonet sürücüsünü gözaltına aldı.

Öte yandan, kamyonet sürücüsünün geri manevra yaptığı esnada yoldan geçen 2 yayayı ezdiği anlar çevredeki bir apartmanın güvenlik kamerasına yansıdı.

Görüntüde; kamyonetin geri manevra yaptığı esnada yolun karşısına geçmeye çalışan yayaları ezdiği anlar ve vatandaşların yaralıları kurutmaya çalışması yer aldı.', date('2024-06-09'), 9, 2),
(18, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nSbuM.img?w=460&h=340&m=6', 'Şanlıurfa\'da 2 mahalle karantinaya alındı! Köpeklerde kuduz tespit edildi', 'Şanlıurfa\'nın Eyyübiye ilçesinde 2 sahipsiz köpekte kuduz vakasının tespit edilmesi üzerine 2 mahallede karantina uygulaması başlatıldı.

Eyyübiye ilçesine bağlı Batıkent Mahallesi\'nde 4 Haziran\'da sokakta yürüyen Mustafa Şahin\'e sahipsiz köpek saldırdı. Kol ve bacağından ısırılan Şahin, Balıklıgöl Devlet Hastanesindeki tedavisinin ardından taburcu edilmişti.

30 Mayıs\'a da kırsal Payamlı Mahallesi\'nde Ufuk K.\'ye (16) saldıran sahipsiz köpekte kuduz tespit edildi. Her iki mahallede valilik kararı ile karantina uygulaması başlatıldı. Karantina uygulaması başlatılan mahallenin girişine "Dikkat kuduz risk bölgesi" yazılı tabela asıldı.

Şanlıurfa Valiliğinden yapılan açıklamada, kentte sahipsiz hayvanların toplanması, rehabilite edilmesi ve tedavi süreçleriyle ilgili toplantı yapıldığı belirtildi. Vali Hasan Şıldak, kuduz vakalarının şehir merkezinde görülmesinin büyük risk oluşturduğunu, ilgili kamu kurumlarına ve bütün belediyelere "sokak hayvanlarının kuduz hastalığına karşı aşılanması konusunda seferberlik anlayışıyla çalışmaları" talimatı verdiğini aktardı.
', date('2024-06-09'), 7, 2),

(19, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nwzSA.img?w=800&h=435&q=60&m=2&f=jpg', 'Aziz Yıldırım\'dan Ali Koç\'a transfer çıkışı: Kazanırsak çalışmayacağım, haberi olsun', 'Aziz Yıldırım\'dan Ali Koç\'a transfer çıkışı: Kazanırsak çalışmayacağım, haberi olsun', date('2024-06-09'), 6, 3),
(20, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1kJGTf.img?w=768&h=432&m=6&x=397&y=100&s=83&d=83', 'Barış Alper Yılmaz için rekor teklif', 'Galatasaray\'da performansıyla Avrupa ekiplerinin radarına giren Barış Alper Yılmaz\'a sürpriz bir takımın teklif yaptığı iddia edildi. Barış Alper Yılmaz\'a Alman ekibinden rekor bir teklif geldiği belirtildi.

Galatasaray\'ın milli yıldızı Barış Alper Yılmaz\'ın talipleri her geçenn gün artıyor. Milli yıldıza son olarak Bundeliga\'dan sürpriz bir ekip kanca attı.

Leipzig\'den Barış Alper Yılmaz için 23 milyon euro
Barış Alper Yılmaz için Bundesliga ekibi Leipzig devrede. Fanatik\'te yer alan habere göre Leipzig, Galatasaray\'a Barış Alper Yılmaz için 23 milyon euroluk bir teklif yaptı. Transferin bu paraya gerçekleşmesi durumunda Barış Alper Yılmaz yurt dışına transfer olan en yüksek bonservis ödenmiş yerli futbolcu olacak.

Sezon performansı
Barış Alper Yılmaz bu sezon Galatasaray formasıyla 54 maça çıktı. Milli futbolcu bu karşılaşmalarda 7 gol ve 12 asistlik performans gösterdi.
', date('2024-06-09'), 6, 3),
(21, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nRiFA.img?w=640&h=821&m=6&x=226&y=75&s=68&d=68', 'Acun\'dan Aziz Yıldırım\'a zehir zemberek sözler', 'Fenerbahçe\'de\'ki seçimlerde Ali Koç\'un seçilmesi durumunda yönetimde yer alacak olan Acun Ilıcalı, başkan adayı Aziz Yıldırım\'ın kendisi ve Jose Mourinho transferi hakkındaki iddialarına sert sözlerle yanıt verdi.

Acun Ilıcalı\'nın açıklamaları şu şekilde;

"YIKAMAYACAĞIMZI DUVAR YOK"
"Çok güzel bir takımın taraftarlarıyız. Bence birlik olduğumuzda yıkamayacağımız duvar yok. Genç yaşta çok zor şeyler yaşadım, anne ve babamı genç yaşta kaybettim. Ondan sonra hayata tutunurken hep iyi şeyler düşündüm, Allah da bana hep daha fazlasını verdi. Kendi kariyerimde yaşamadığım mutluluk kalmadı. Bu dönemde beni en mutlu eden şeylerden biri Fenerbahçemiz\'in başarısı oldu, iyi ki Fenerbahçeliyiz.

"ŞİMDİ SIRA GELDİ ŞAMPİYONLUĞA"
Gördüğüm tablo, başkanımız Ali Koç\'u takdir etmemi gerektiriyor. Onun geldiği Fenerbahçe\'de 600 milyon euro borç, maaşlar ödenmiyor... Geldiğim Fenerbahçe\'de ise kadrosu güçlü, 1 mağlubiyetle geçen bir sezon, adaletin olmadığı bir sezon, hep beraber burada buluşup bütün Türkiye\'ye bu mesajı verdiğimiz bir sezon oldu. Şimdi sıra geldi şampiyonluğa...

"AVRUPA ŞAMPİYONLUĞU İÇİN KOLLARI SIVADIK"
Sevgili Mario Branco, hocamız, ben ve başkanımız güçlü Fenerbahçe, Avrupa şampiyonluğunu hedefleyen Fenerbahçe için kolları sıvamış durumdayız. Geleceğe bakmamız lazım, birlik olmamız lazım, çamur atmamamız lazım. Yarın öbür gün bu stadı Türkiye\'nin en güzel atmosferine çevirelim, sizden rica ediyorum.

"BİZ KAHROLALIM, AZİZ YILDIRIM BAŞKAN OLSUN"
Göreve davet edildikten sonra hakkımda atılmadık çamur kalmadı. İnsanlar demediğini bırakmadı, önemli değil. Sayın Aziz Yıldırım\'ın hakkımdaki suçlamaları çok üzücü. Yıllarca dostluğumuz vardı, programıma konuk oldu, onu zor durumdayken hapiste ziyaret ettim, evine defalarca gittim. Amacım Fenerbahçeli, diğer başkan adayımıza destek olmaktı. Fenerbahçeliyim, başkan kimse onu destekliyorum. Bunun üzerine sayın Aziz Yıldırım bana çok ağır şeyler söyledi. Ben onlara cevap vermek istemiyorum, kendisini mahkemeye verdim zaten. Adalet gerekli cevabı verecek. İnsanın namusuna şerefine iftira atmak, seçim kazanmaktan önemli olmamalı. Bir seçimi kazanmak için her yol mübah mı? Biz Fenerbahçeli değil miyiz? Biz kahrolalım, Aziz Yıldırım başkan olsun!', date('2024-06-09'), 1, 3),
(22, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nQzAs.img?w=728&h=410&m=6', 'Lewandowski, Joao Felix, Ndidi derken Ali Koç çıldırdı! Dünya bu transferi konuşacak', 'Fenerbahçe\'de son dakika gelişmeleri yaşanıyor. Jose Mourinho’nun emrine yıldızlarla dolu bir kadro vermek için çalışmalar başladı. Kadıköy’e yıldız yağacak. Dünyaca ünlü isimlerle anılan Sarı-Lacivertliler, transferde de çok ses getirecek gibi görünüyor. Lewandowski, Joao Felix, Ndidi büyük transfer bombası patladı. İşte detaylar...
Sarı Lacivertliler’de önce Jose Mourinho rüzgarı yaşandı, şimdi gözler genel kurula çevrildi. Bugün ve yarınki kongrenin sonunda yeni başkan belli olacak. Ardında Kadıköy’e yıldız yağmuru başlayacak.

Portekizli teknik adama imzayı Ali Koç attırdı ama Aziz Yıldırım da seçilmesi halinde Mourinho ile çalışacağını açıkladı.

Her iki başkan adayı da eldeki kadroyu koruyup, dünyaca ünlü çalıştırıcının talepleri doğrultusunda yıldız isimlere imza attırmaya kararlı.

Mourinho sonrası Fenerbahçe, transfer piyasasının gözdesi haline geldi. Avrupa’nın dört bir yanından Sarı-Lacivertliler ile ilgili flaş iddialar ortaya atılıyor.

Barcelona’nın golcüsü Robert Lewandowski’nin ismi gündeme bomba gibi düşmüştü. Mourinho’nun vatandaşları Gonçalo Ramos ve Joao Felix, taraftarı heyecanlandıran diğer isimler oldu.

Öte yandan İngiliz basını, Tottenham’ın süper yıldızı Heung Min-Son için Fenerbahçe’nin devrede olduğunu yazmıştı.

Fanatik\'te yer alan habere göre; Atletico Madrid’den boşa çıkan Hollandalı Memphis Depay, Mourinho’nun Tottenham’dan eski öğrencisi olan ve sözleşmesi sona erecek olan Pierre-Emile Hojberg ile Leicestar’la kontratı biten Wlfried Ndidi’nin adı Sarı-Lacivertliler ile anılıyor.', date('2024-06-09'), 10, 3),
(23, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1mpQOQ.img?w=768&h=432&m=6&x=377&y=61&s=78&d=78', 'Arda Güler\'e sürpriz talip', 'Genç yıldıza İspanya dışından da teklifler olduğu vurgulandı
İspanyol devi Real Madrid\'de forma giyen Arda Güler\'e başka bir İspanyol ekibinin talip olduğu aktarıldı. Öte yandan Real Madrid\'in Arda Güler\'le ilgili kararının netlik kazandığı kaydedildi.

AS\'ın haberine göre; La Liga ekibi Getafe, Real Madrid forması giyen Arda Güler\'le ilgilenmeye başladı. Getafe Başkanı Angel Torres\'in Arda Güler\'i kiralık olarak takımda görmek istediği belirtildi.

Angel Torres\'in Real Madrid ile kiralanabilecek oyuncular konusunda görüşme sağladığı kaydedildi. Arda Güler\'in listenin başında olduğu vurgulandı. Mason Greenwood\'un takımdan ayrılmasının ardından Getafe\'nin hedefinin Arda Güler olduğu belirtildi.

Getafe\'nin Arda Güler\'i renklerine bağlaması halinde 19 yaşındaki on numaranın etrafında bir ekip oluşturmayı planladığı ifade edildi.

19 yaşındaki on numara için Getafe\'nin dışında başka taliplerin de bulunduğu kaydedildi. Arda Güler\'e İspanya\'dan Las Palmas, Mallorca, Real Sociedad ve Sevilla\'nın ilgi duyduğu aktarıldı. Arda Güler\'e İtalya\'dan Milan ve Almanya\'dan RB Leipzig\'in de talip olduğu vurgulandı.
', date('2024-06-09'), 6, 3),
(24, 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1nOZHP.img?w=768&h=432&m=6&x=170&y=71&s=445&d=171', 'Fenerbahçe\'de seçimin kazanını belli', 'Yarattığı gündem, uyandırdığı heyecan, ilgi, etki ve etkileşimle bir kez daha film tadında büyük bir seçim bekliyor bizleri...

Yeri gelecek Kuzuların Sessizliği\'ndeki Dr. Hannibal Lecter\'ın yaşattığı gerilimi yaşayacak...

Yeri gelecek Sherlock Holmes\'ten bir pasaj okur ya da izler gibi gibi meraka kapılacak...

Yeri gelecek bir Guy Ritchie filmi seyreder gibi heyecan ve aksiyona doyacak...

Yeri gelecek epik bir zafer ve dramatik bir yenilgiye şahitlik edeceğiz...

Seçim öncesi hakarete varan sert açıklamalar, mevcut yönetim ve yönetici adaylarına dair ortaya atılan iddialar, Jose Mourinho\'nun imza törenindeki protestolar, yine transferindeki suçlamalar gösteriyor ki bizleri sinir harbi şeklinde, yüksek tansiyonlu bir seçim bekliyor.

Hem Ali Koç\'un hem Aziz Yıldırım\'ın son açıklamalarında yaptığı itidal ve sükunet çağrısı seçim günü kongre üyelerine ne kadar tesir eder bilinmez…

Fenerbahçe tarihinin en gergin, en olaylı, en heyecanlı seçimi olması muhtemel olsa da temennimiz olayların damga vurmadığı, kaybedenin kazanını tebrik ettiği bir seçim olması...

Temenniyi bir kenara bırakarak, 2018 seçimini de önümüze koyarak üst düzey bir güvenlik önlemi alınması gerektiği kesin.', date('2024-06-09'), 3, 3);





