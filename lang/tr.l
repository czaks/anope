# Turkish language file.
#
# (C) 2003-2010 Anope Team
# Contact us at team@anope.org
#
# Please read COPYING and README for furhter details.
#
# Based on the original code of Epona by Lara.
# Based on the original code of Services by Andy Church.
#
# When translating this file to another language, keep in mind that the
# order of parameters for sprintf() is fixed in the source code, so your
# messages need to take the same parameters in the same order as the
# English messages do.  (Obviously, this doesn't hold for the strftime()
# format lines immediately below.)  If you can't get a natural translation
# of a message without changing the order of the parameters, let us know
# (team@anope.org) which message is causing a problem and I'll see
# what I can do.
#
# In help messages, "%S" (capital S, not lowercase) refers to the name of
# the service sending the message; for example, in NickServ help messages,
# "%S" is replaced by "NickServ" (or whatever it is renamed to in
# services.conf).  The %S's do not count as sprintf() parameters, so they can be
# rearranged, removed, or added as necessary.
#
# Also in help messages, please try to limit line lengths to 60 characters
# of text (not including the leading tab).  This length was chosen because
# it does not cause line wrap under default settings on most current IRC
# clients.  Remember that format characters (control-B, control-_) are not
# included in that 60-character limit (since they don't show on the user's
# screen).  Also remember that format specifiers (%S, etc.) will expand
# when displayed, so remember to take this into account; you can assume
# that the length of a pseudoclient name (%S replacement) will be eight
# characters, so reduce the maximum line length by 6 for every %S on a
# line.
#
# Finally, remember to put a tab at the beginning of every line of text
# (including empty lines).  This has to be a tab, not spaces.

###########################################################################
# Son güncelleme - ysfm - ysfm@irc.org.tr - irc.sohbet.net.tr 		  #
# Imla ve Ceviri hatalarını ysfm@irc.org.tr adresine bildiriniz		  #
# Turkish - Türkçe                                                        #
###########################################################################

# For languages other than English, this string should have the following
# format:
#     language-name-in-language (language-name-in-English)
# For example, "Español (Spanish)" or "Français (French)".

LANG_NAME
	Türkçe (Turkish)
#################################################################
# Translated by CafeiN (oytuny@yahoo.com) irc.ixir.net          #
# Modified by MeShGuL - guzelbey@cs.utk.edu - irc.arkadas.com   #
#################################################################

###########################################################################
#
# General messages
#
###########################################################################

# strftime() format strings.  man 3 strftime for information on the
# meanings of the format specifiers.  Short version:
#	%a = weekday name (short)	%H = hour
#	%b = month name (short)		%M = minute
#	%d = day of month		%S = second
#	%Y = year			%Z = time zone

# This is used as the format string for strftime() for a date and time
# together.
STRFTIME_DATE_TIME_FORMAT
	%b %d %H:%M:%S %Y %Z
# This is used as the format string for strftime() for a date alone in long
# format (English: including weekday).
STRFTIME_LONG_DATE_FORMAT
	%a %b %d %Y
# This is used as the format string for strftime() for a date alone in
# short format (English: without weekday).
STRFTIME_SHORT_DATE_FORMAT
	%b %d %Y

# These tell our strftime() what the names of months and days are.  If you
# don't use %a, %A, %b, or %B in your strftime() strings above, you can
# leave these empty.  However, if you enter names, they MUST stay in order,
# one per line, and the list MUST be complete!

# %a
STRFTIME_DAYS_SHORT
	Paz
	Pzt
	Sal
	Çar
	Per
	Cum
	Cmt
# %A
STRFTIME_DAYS_LONG
	Pazar
	Pazartesi
	Salı
	Çarşamba
	Perşembe
	Cuma
	Cumartesi
# %b
STRFTIME_MONTHS_SHORT
	Oca
	Şub
	Mar
	Nis
	May
	Haz
	Tem
	Ağu
	Eyl
	Eki
	Kas
	Ara
# %B
STRFTIME_MONTHS_LONG
	Ocak
	Şubat
	Mart
	Nisan
	Mayıs
	Haziran
	Temmuz
	Ağustos
	Eylül
	Ekim
	Kasım
	Aralık


# This is used in ChanServ/NickServ INFO displays.
COMMA_SPACE
	, 


# Various error messages.
USER_RECORD_NOT_FOUND
	Dahili hata - Kullanıcı kaydı bulunamadı.
UNKNOWN_COMMAND
	Varolmayan komut %s.
UNKNOWN_COMMAND_HELP
	Varolmayan komut %s. yardım için "%R%s HELP" yazınız.
SYNTAX_ERROR
	Kullanımı: %s
MORE_INFO
	Daha fazla bilgi için %R%s HELP %s yazınız.
NO_HELP_AVAILABLE
	%s hakkında yardım bulunamadı.
OBSOLETE_COMMAND
	Bu komut artık kullanılmıyor; onun yerine %s komutunu deneyin.

BAD_USERHOST_MASK
	Mask user@host şeklinde tanımlanmalıdır.
BAD_EXPIRY_TIME
	Geçersiz zaman aşımı süresi.
USERHOST_MASK_TOO_WIDE
	%s kapsamı aşırı geniş; Lütfen daha belirli bir mask kullanın.

SERVICE_OFFLINE
	%s şu an devre dışı.
READ_ONLY_MODE
	Not: Servisler read-only modunda; değişiklikler kaydedilmeyecektir!
PASSWORD_INCORRECT
	Şifre geçersiz.
INVALID_TARGET
	"/msg %s" şeklinde uzun mesaj desteklenmemektedir. "/msg %s@%s" veya "/%s" şeklinde deneyiniz.

# What's the difference between "Access denied" and "Permission denied"?
# Very little; you can safely make them the same message with no real loss
# of meaning.  If you want to make a distinction, "Access denied" is
# usually used more generally; for example, a non-oper trying to access
# OperServ gets "Access denied", while a non-Services admin trying to use
# NickServ SET NOEXPIRE gets "Permission denied".
ACCESS_DENIED
	Bu komuta erişiminiz yok.
PERMISSION_DENIED
	Bu komutu kullanma izniniz yok.
RAW_DISABLED
	Raw ayarları kapalı bulunuyor. DisableRaw Özelliği servis ayarları dosyasında açık görünüyor.

MORE_OBSCURE_PASSWORD
	Lütfen daha zor bir şifre deneyin.  Şifreler en az 5 karakter uzunlukta, kolayca tahmin edilemeyecek birşey olmalıdır(ör: gerçek isminiz, nickiniz v.b. olmamalıdır), ve boşlukla tab kullanılmamalıdır.
PASSWORD_TOO_LONG
	Şifreniz çok uzun. Lütfen daha kısa bir şifre deneyiniz.

NICK_NOT_REGISTERED
	Nickiniz kayıtlı değil.
NICK_NOT_REGISTERED_HELP
	Nickiniz kayıtlı değil.  Nick kayıt hakkında bilgi almak için %R%s HELP yazın.
NICK_X_IS_SERVICES
	%s Rumuzu servislerin bir parçası olarak görünüyor(Servisler Tarafından kullanılıyor).
NICK_X_NOT_REGISTERED
	%s kayıtlı bir nick değil.
NICK_X_IN_USE
	%s rumuzu şu anda kullanılmaktadır.
NICK_X_NOT_IN_USE
	%s nicki şu an kullanımda değil.
NICK_X_NOT_ON_CHAN
	%s su anda %s kanalinda degil.
NICK_X_FORBIDDEN
	%s nicki kayıt edilemez ve kullanılamaz.
NICK_X_FORBIDDEN_OPER
	%s nicki yasaklanmıştır. %s:
	%s
NICK_X_ILLEGAL
	%s rumuzu yasaklanmış bir rumuzdur. Kullanıma kapatılmıştır.
NICK_X_TRUNCATED
	%s rumuzu uzun %d karakter nickten kısaltılacak.
NICK_X_SUSPENDED
	%s rumuzu askıya alınmıştır(Geçici olarak kullanıma yasaklanmıştır).
CHAN_X_NOT_REGISTERED
	%s kanalı kayıtlı değil.
CHAN_X_NOT_IN_USE
	%s kanalı şu an kullanımda değil.
CHAN_X_FORBIDDEN
	%s kanalı kayıt edilemez ve kullanılamaz.
CHAN_X_FORBIDDEN_OPER
	%s kanalı yasaklanmıştır. %s:
	%s
CHAN_X_SUSPENDED
	      Suspended: [%s] %s
NICK_IDENTIFY_REQUIRED
	Bu komutu kullanabilmek için şifrenizi girmelisiniz.
	%R%s IDENTIFY şifreniz yazarak yeniden deneyiniz.
CHAN_IDENTIFY_REQUIRED
	Bu komutu kullanabilmek için şifrenizi girmelisiniz.
	%R%s IDENTIFY %s şifreniz yazarak yeniden deneyiniz.
	
MAIL_DISABLED
	Servislerin mail gönderme özelliği devre dışıdır.
MAIL_INVALID
	%s için mail adresi geçerli değil.
MAIL_X_INVALID
	%s geçerli bir mail adresi değil.
MAIL_LATER
	Şu an mail gönderilemiyor; lütfen az sonra tekrar deneyin.
MAIL_DELAYED
	Lütfen %d saniye bekleyin ve tekrar deneyin.
	
NO_REASON
	Sebep yok
UNKNOWN
	<varolmayan>

# Duration system
DURATION_DAY
	1 gün
DURATION_DAYS
	%d gün
DURATION_HOUR
	1 saat
DURATION_HOURS
	%d saat
DURATION_MINUTE
	1 dakika
DURATION_MINUTES
	%d dakika
DURATION_SECOND
	1 saniye
DURATION_SECONDS
	%d saniye

# Human readable expiration
NO_EXPIRE
	zaman aşımı yok
EXPIRES_SOON
	bir sonraki veritabanı güncellemesinde zaman aşımı süresi dolacak
EXPIRES_M
	%d dakika sonra zaman aşımı süresi dolacak
EXPIRES_1M
	%d dakika sonra zaman aşımı süresi dolacak
EXPIRES_HM
	%d saat, %d dakika sonra zaman aşımı süresi dolacak
EXPIRES_H1M
	%d saat, %d dakika sonra zaman aşımı süresi dolacak
EXPIRES_1HM
	%d saat, %d dakika sonra zaman aşımı süresi dolacak
EXPIRES_1H1M
	%d saat, %d dakika sonra zaman aşımı süresi dolacak
EXPIRES_D
	%d gün sonra zaman aşımı süresi dolacak
EXPIRES_1D
	%d gün sonra zaman aşımı süresi dolacak

# Generic Footer message
END_OF_ANY_LIST
	%s listesi sonu.


###########################################################################
#
# NickServ messages
#
###########################################################################

# Automatic messages
LIST_INCORRECT_RANGE
	Geçersiz giriş deniyorsunuz. Geçerli arama şekli #Aranan değil Aranan'dır.
CS_LIST_INCORRECT_RANGE
	' # ' Karakteri ile baslayan bir giriş yaptınız, kanal aramalarında
	kanal ismi başına #-karakteri koymanıza gerek yoktur. (anope girişi #anope şekline karşılık gelmektedir).

###########################################################################
#
# NickServ messages
#
###########################################################################

# Automatic messages
HELP_LIMIT_SERV_OPER
	Bu komut Services Operators kullanımı icindir.
HELP_LIMIT_SERV_ADMIN
	Bu komut Services Administrators kullanımı icindir.
HELP_LIMIT_SERV_ROOT
	Bu komut Services Roots kullanımı icindir.
HELP_LIMIT_IRC_OPER
	Bu komut IRC Operators kullanımı icindir.
HELP_LIMIT_HOST_SETTER
	Bu komut Host Setters kullanımı icindir.
HELP_LIMIT_HOST_REMOVER
	Bu komut Host Removers kullanımı icindir.


###########################################################################
#
# NickServ messages
#
###########################################################################

# Automatic messages
NICK_IS_REGISTERED
	Bu nick başkasına ait. Lütfen başka bir tane seçin.
	(Eğer bu sizin nickiniz ise, %R%s IDENTIFY şifreniz yazınız.)
NICK_IS_SECURE
	Bu nick kayıtlı ve korumalıdır. Eğer bu sizin nickiniz ise, 
	%R%s IDENTIFY şifreniz yazınız. Yada, başka bir nick seçin.
NICK_MAY_NOT_BE_USED
	Bu nick kullanılamaz.  Lütfen başka bir tane seçin.
FORCENICKCHANGE_IN_1_MINUTE
	Eğer bir dakika içinde nickinizi değiştirmezseniz, Sistem size otomatik olarak yeni bir rumuz atayacaktır.
FORCENICKCHANGE_IN_20_SECONDS
	Eğer 20 saniye içinde nickinizi değiştirmezseniz, Sistem size otomatik olarak yeni bir rumuz atayacaktır.
FORCENICKCHANGE_NOW
	Bu nick kayıtlıdır; bunu kullanamazsınız.
FORCENICKCHANGE_CHANGING
	Nickiniz %s olarak değiştirildi.

# REGISTER responses
NICK_REGISTER_SYNTAX
	REGISTER şifreniz [emailiniz]
NICK_REGISTER_SYNTAX_EMAIL
	REGISTER şifreniz emailiniz
NICK_REGISTRATION_DISABLED
	Nick kaydı geçici olarak devre dışıdır.
NICK_REGISTRATION_FAILED
	Nick kaydı başarısız.
NICK_REG_PLEASE_WAIT
	Lütfen %d saniye REGISTER komutunu tekrar kullanmak için bekleyin.
NICK_CANNOT_BE_REGISTERED
	%s nicki kayıt edilemez.
NICK_ALREADY_REGISTERED
	%s nicki zaten kayıtlı!
NICK_REGISTERED
	%s nicki sizin adınıza kayıt edildi: %s
NICK_REGISTERED_NO_MASK
	%s Rumuzu kayıtlı bulunuyor.
NICK_PASSWORD_IS
	Nick Şifreniz %s - İlerde kullanacağınız için unutmayınız ve kimseye söylemeyiniz.

# GROUP responses
NICK_REG_DELAY
	Rumuzunuzu kayıt edebilmeniz icin baglantı surenizden %d saniye sonra kayıt işlemini denemelisiniz.

# GROUP responses
NICK_GROUP_SYNTAX
	GROUP hedef şifre
NICK_GROUP_DISABLED
	Nick gruplama geçici olarak devre dışı.
NICK_GROUP_FAILED
	Nick gruplama başarısız.
NICK_GROUP_PLEASE_WAIT
	GROUP komutunu tekrar kullanmadan önce lütfen %d saniye bekleyin.
NICK_GROUP_CHANGE_DISABLED
	Nickiniz zaten kayıtlı; önce %R%s DROP yazın.
NICK_GROUP_SAME
	%s grubunun zaten bir üyesisiniz.
NICK_GROUP_TOO_MANY
	%s nickinin grubunda çok fazla nick var; listeleyip birkaçini silin.
	Daha fazla bilgi için %R%s HELP GLIST ve %R%s HELP DROP 
	yazin.
NICK_GROUP_JOINED
	%s grubuna dahil edildiniz.

# IDENTIFY responses
NICK_IDENTIFY_SYNTAX
	IDENTIFY şifreniz
NICK_IDENTIFY_FAILED
	Tanımlama başarısız.
NICK_IDENTIFY_SUCCEEDED
	Şifre kabul edildi.
NICK_IDENTIFY_EMAIL_REQUIRED
	Şimdi nickiniz için bir e-mail adresi belirtmelisiniz.
	Bu e-mail adresi şifrenizi unutmanız halinde şifrenizi
	isterken kullanılacaktır.
NICK_IDENTIFY_EMAIL_HOWTO
	Mail adresinizi ayarlamak için %R%S SET EMAIL e-mailadresiniz 
	yazın. Gizliliğiniz korunacaktır; bu mail adresi herhangi üçüncü 
	şahıslara verilmeyecektir.

# LOGOUT responses
NICK_ALREADY_IDENTIFIED
	Rumuzunuzu zaten sisteme tanıtmış durumdasınız.

# UPDATE responses
NICK_UPDATE_SUCCESS
	Durum güncellendi (Cevrimdisi mesajlar, ozel adres(vhost), ayarlar, yetkiler).
	
# LOGOUT responses
NICK_LOGOUT_SYNTAX
	LOGOUT
NICK_LOGOUT_SUCCEEDED
	Nickinizin çıkışı yapıldı.
NICK_LOGOUT_X_SUCCEEDED
	%s nickinin çıkışı yapıldı.

# DROP responses
NICK_LOGOUT_SERVICESADMIN
	Cıkış yapılamıyor %s Servis görevlisi durumunda.

# DROP responses
NICK_DROP_DISABLED
	Nick kaydı silinmesi geçici olarak devre dışıdır.
NICK_DROPPED
	Nickinizin kaydı silindi (dropped).
NICK_X_DROPPED
	%s nickinin kaydı silindi (dropped).

# SET responses
NICK_SET_SYNTAX
	SET özellik parametre
NICK_SET_SERVADMIN_SYNTAX
	SET [nick] özellik parametre
NICK_SET_DISABLED
	NickServ'ün SET komutu geçici olarak devre dışıdır.
NICK_SET_UNKNOWN_OPTION
	Varolmayan SET özelliği: %s.

# SET DISPLAY responses
NICK_SET_OPTION_DISABLED
	%s Fonksiyonu bu sunucuda devrede degildir.

# SET DISPLAY responses
NICK_SET_DISPLAY_INVALID
	Yeni gösterim nick grubunuzdan bir nick olmalıdır!
NICK_SET_DISPLAY_CHANGED
	Yeni gösterim %s.

# SET PASSWORD responses
NICK_SET_PASSWORD_FAILED
	Şifre değiştirilemedi.
NICK_SET_PASSWORD_CHANGED
	Şifreniz değiştirildi.
NICK_SET_PASSWORD_CHANGED_TO
	Nick şifreniz %s olarak değiştirildi.

# SET LANGUAGE responses
NICK_SET_LANGUAGE_SYNTAX
	SET LANGUAGE numara
NICK_SET_LANGUAGE_UNKNOWN
	Varolmayan dil numarası %d.  Dil listesi için %R%s HELP SET LANGUAGE yazın.
NICK_SET_LANGUAGE_CHANGED
	Dil Türkçe olarak değiştirildi.

# SET URL responses
NICK_SET_URL_CHANGED
	URL adresi %s olarak değiştirildi.
NICK_SET_URL_UNSET
	URL adresi silindi.

# SET EMAIL responses
NICK_SET_EMAIL_CHANGED
	E-mail adresi %s olarak değiştirildi.
NICK_SET_EMAIL_UNSET
	E-mail adresi silindi.
NICK_SET_EMAIL_UNSET_IMPOSSIBLE
	E-mail adresini bu networkte silemezsiniz.

# SET ICQ responses
NICK_SET_ICQ_CHANGED
	ICQ numarası %s olarak değiştirildi.
NICK_SET_ICQ_UNSET
	ICQ numarası silindi.
NICK_SET_ICQ_INVALID
	%s geçerli bir numara değil.
	
# SET GREET responses
NICK_SET_GREET_CHANGED
	Karşılama mesajı %s olarak değiştirildi.
NICK_SET_GREET_UNSET
	Karşılama mesajı silindi.

# SET PROTECT responses
NICK_SET_KILL_SYNTAX
	SET KILL {ON | QUICK | OFF}
NICK_SET_KILL_IMMED_SYNTAX
	SET KILL {ON | QUICK | IMMED | OFF}
NICK_SET_KILL_ON
	Kill koruması: AKTİF.
NICK_SET_KILL_QUICK
	Kill koruması: zaman limitli olarak AKTİF.
NICK_SET_KILL_IMMED
	Anında kill koruması: AKTİF.
NICK_SET_KILL_IMMED_DISABLED
	HEMEN seçeneği bu networkte aktif değil.
NICK_SET_KILL_OFF
	Kill koruması: KAPALI.

# SET SECURE responses
NICK_SET_SECURE_SYNTAX
	SET SECURE {ON | OFF}
NICK_SET_SECURE_ON
	Güvenlik seçeneği: AKTİF.
NICK_SET_SECURE_OFF
	Güvenlik seçeneği: KAPALI.

# SET PRIVATE responses
NICK_SET_PRIVATE_SYNTAX
	SET PRIVATE {ON | OFF}
NICK_SET_PRIVATE_ON
	Özel seçeneği: AKTİF.
NICK_SET_PRIVATE_OFF
	Özel seçeneği: KAPALI.

# SET HIDE responses
NICK_SET_HIDE_SYNTAX
	SET HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
NICK_SET_HIDE_EMAIL_ON
	Artık %s INFO da e-mail adresiniz gözükmeyecek.
NICK_SET_HIDE_EMAIL_OFF
	Artık %s INFO da e-mail adresiniz gözükecek.
NICK_SET_HIDE_MASK_ON
	Artık son göründüğünüz user@host maskınız %s INFO da gözükmeyecek.
NICK_SET_HIDE_MASK_OFF
	Artık son göründüğünüz user@host maskınız %s INFO da gözükecek.
NICK_SET_HIDE_QUIT_ON
	Artık son çıkış mesajınız(/quit) %s INFO da gözükmeyecek.
NICK_SET_HIDE_QUIT_OFF
	Artık son çıkış mesajınız(/quit) %s INFO da gözükecek.

# SET NOEXPIRE responses
NICK_SET_HIDE_STATUS_ON
	Artık %s INFO da servisler üzerindeki yetkiniz gorunecek.
NICK_SET_HIDE_STATUS_OFF
	Servisler uzerindeki yetkiniz %s bilgilerinde gözükmeyecek.
	
# SET MSG responses
NICK_SET_MSG_SYNTAX
	SET PRIVATE {ON | OFF}
NICK_SET_MSG_ON
	Servisler bundan sonra size mesaj(Genel Mesaj) ile cevap verecek.
NICK_SET_MSG_OFF
	Servisler bundan sonra size notice(Uyarı mesajı) ile cevap verecek.

# SET AUTOOP responses
NICK_SET_AUTOOP_SYNTAX
	SET AUTOOP {ON | OFF}
NICK_SET_AUTOOP_ON
	Services bundan sonra otomatik yetkilendirme yapacak.
NICK_SET_AUTOOP_OFF
	Services bundan sonra otomatik yetkilendirme yapmayacak.


# SET NOEXPIRE responses
NICK_SASET_SYNTAX
	SASET rumuz ayar parametereler
NICK_SASET_DISABLED
	Üzgünüz, bu düzenleme komutu kapalı durumdadır.
NICK_SASET_UNKNOWN_OPTION
	%s gecersiz bir düzenmele girdisidir.
NICK_SASET_BAD_NICK
	%s rumuzu kayıtlı bulunmuyor.
NICK_SASET_OPTION_DISABLED
	%s ayarları bu sunucu uzerinde kullanılabilir durumda degildir.

# SASET DISPLAY responses
NICK_SASET_DISPLAY_INVALID
	%s grubu gecerli bir nick grubu degil!
NICK_SASET_DISPLAY_CHANGED
	%s Yeni nick grubu olarak ayarlandı.

# SASET PASSWORD responses
NICK_SASET_PASSWORD_FAILED
	Üzgünüz, %s rumuzunun sifresi degiştirilemedi.
NICK_SASET_PASSWORD_CHANGED
	%s rumuzunun sifresi degistirildi degistirildi.
NICK_SASET_PASSWORD_CHANGED_TO
	%s rumuzunun sifresi %s olarak degiştirildi.

# SASET LANGUAGE responses
NICK_SASET_URL_CHANGED
	%s rumuzunun silgisi %s olarak degistirildi.
NICK_SASET_URL_UNSET
	%s Rumuzunun bilgisi silindi(Bilgi belirtilmemiş konuma getirildi).

# SASET EMAIL responses
NICK_SASET_EMAIL_CHANGED
	%s rumuzunun silgisi %s olarak degistirildi.
NICK_SASET_EMAIL_UNSET
	%s Rumuzunun bilgisi silindi(Bilgi belirtilmemiş konuma getirildi)..
NICK_SASET_EMAIL_UNSET_IMPOSSIBLE
	Mail adresi bu sunucu için geçersiz konuma alınabilecek bir bilgi degildir.
	
# SASET ICQ responses
NICK_SASET_ICQ_CHANGED
	%s rumuzunun silgisi %s olarak degistirildi.
NICK_SASET_ICQ_UNSET
	%s Rumuzunun bilgisi silindi(Bilgi belirtilmemiş konuma getirildi).
NICK_SASET_ICQ_INVALID
	%s gecerli bir numara değil.
	
# SASET GREET responses
NICK_SASET_GREET_CHANGED
	%s rumuzunun silgisi %s olarak degistirildi.
NICK_SASET_GREET_UNSET
	%s Rumuzunun bilgisi silindi(Bilgi belirtilmemiş konuma getirildi).

# SASET PROTECT responses
NICK_SASET_KILL_SYNTAX
	SASET nickname KILL {ON | QUICK | OFF}
NICK_SASET_KILL_IMMED_SYNTAX
	SASET nickname KILL {ON | QUICK | IMMED | OFF}
NICK_SASET_KILL_ON
	Koruma durumu ACIK değişiklik yapılan nick %s.
NICK_SASET_KILL_QUICK
	Koruma durumu ACIK değişiklik yapılan nick %s, kısa sureli koruma aktif.
NICK_SASET_KILL_IMMED
	Koruma durumu ACIK değişiklik yapılan nick %s, bekleme suresi olmayan koruma aktif.
NICK_SASET_KILL_IMMED_DISABLED
	IMMED bu sunucu icin gecerli bir rumuz koruma durumu degildir.
NICK_SASET_KILL_OFF
	Koruma durumu KAPALI değişiklik yapılan nick %s.

# SASET SECURE responses
NICK_SASET_SECURE_SYNTAX
	SASET nickname SECURE {ON | OFF}
NICK_SASET_SECURE_ON
	%s rumuzu icin koruma ozellidi AKTIF.
NICK_SASET_SECURE_OFF
	%s rumuzu icin koruma ozellidi PASIF.

# SASET PRIVATE responses
NICK_SASET_PRIVATE_SYNTAX
	SASET nickname PRIVATE {ON | OFF}
NICK_SASET_PRIVATE_ON
	%s Rumuzu icin Ozel mesaj cevaplama Aktif.
NICK_SASET_PRIVATE_OFF
	%s Rumuzu icin Ozel mesaj cevaplama Pasif.

# SASET HIDE responses
NICK_SASET_HIDE_SYNTAX
	SET nickname HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
NICK_SASET_HIDE_EMAIL_ON
	%s Rumuzuna ait bilgi %s INFO'da gosterime kapatıldı.
NICK_SASET_HIDE_EMAIL_OFF
	%s Rumuzuna ait bilgi %s INFO'da gosterime acıldı.
NICK_SASET_HIDE_MASK_ON
	%s Rumuzuna ait bilgi %s INFO'da gosterime kapatıldı.
NICK_SASET_HIDE_MASK_OFF
	%s Rumuzuna ait bilgi %s INFO'da gosterime acıldı.
NICK_SASET_HIDE_QUIT_ON
	%s Rumuzuna ait bilgi %s INFO'da gosterime kapatıldı.
NICK_SASET_HIDE_QUIT_OFF
	%s Rumuzuna ait bilgi %s INFO'da gosterime acıldı.
NICK_SASET_HIDE_STATUS_ON
	%s Rumuzuna ait bilgi %s INFO'da gosterime kapatıldı.
NICK_SASET_HIDE_STATUS_OFF
	%s Rumuzuna ait bilgi %s INFO'da gosterime acıldı..
	
# SASET MSG responses
NICK_SASET_MSG_SYNTAX
	SASET nickname MSG {ON | OFF}
NICK_SASET_MSG_ON
	Services bundan sonra %s rumuzuna mesajlar ile cevap verecek.
NICK_SASET_MSG_OFF
	Services bundan sonra %s rumuzuna notices(uyarılar) ile cevap verecek.

# SET NOEXPIRE responses
NICK_SASET_NOEXPIRE_SYNTAX
	SASET nickname NOEXPIRE {ON | OFF}
NICK_SASET_NOEXPIRE_ON
	%s rumuzu zaman aşımına kapatıldı.
NICK_SASET_NOEXPIRE_OFF
	%s rumuzu zaman aşımına açıldı.

# ACCESS responses
NICK_SASET_AUTOOP_SYNTAX
	SASET nickname AUTOOP {ON | OFF}
NICK_SASET_AUTOOP_ON
	Servisler %s rumuzuna bundan sonra otomatik olarak yetkilerini verecek.
NICK_SASET_AUTOOP_OFF
	Servisler %s rumuzuna bundan sonra otomatik olarak yetkilerini veremeyecek.

# SASET LANGUAGE responses
NICK_SASET_LANGUAGE_SYNTAX
	SASET nickname LANGUAGE numara
NICK_SASET_LANGUAGE_UNKNOWN
	Bilinmeyen dil numarası %d.  Lütfen %R%s HELP SET LANGUAGE komutu ile diller ve kodları hakkında bilgi alınız.
NICK_SASET_LANGUAGE_CHANGED
	Language for %s changed to %s.


# ACCESS responses
NICK_ACCESS_SYNTAX
	ACCESS {ADD | DEL | LIST} [mask]
NICK_ACCESS_ALREADY_PRESENT
	%s access listenizde zaten var.
NICK_ACCESS_REACHED_LIMIT
	Bir nick için sadece %d tane access girilebilir.
NICK_ACCESS_ADDED
	%s access listenize eklendi.
NICK_ACCESS_NOT_FOUND
	%s access listenizde bulunamadı.
NICK_ACCESS_DELETED
	%s access listenizden silindi.
NICK_ACCESS_LIST
	Access listesi:
NICK_ACCESS_LIST_X
	%s nickinin access listesi:
NICK_ACCESS_LIST_EMPTY
	Size ait yetki bulunamadı.
NICK_ACCESS_LIST_X_EMPTY
	%s rumuzuna ait yetki bulunamadı.

# Status messages
NICK_STATUS_0
	STATUS %s 0
NICK_STATUS_1
	STATUS %s 1
NICK_STATUS_2
	STATUS %s 2
NICK_STATUS_3
	STATUS %s 3

# INFO responses
NICK_INFO_SYNTAX
	INFO nick [ALL]
NICK_INFO_REALNAME
	   %s                isim: %s
NICK_INFO_SERVICES_OPER
	      %s servis operatörüdür.
NICK_INFO_SERVICES_ADMIN
	      %s servis adminidir.
NICK_INFO_SERVICES_ROOT
	%s is a services root administrator.
NICK_INFO_ADDRESS
	      Son görüldüğü adres: %s
NICK_INFO_ADDRESS_ONLINE
	      Bağlandığı adres: %s
NICK_INFO_ADDRESS_ONLINE_NOHOST
	      %s şu an bağlı.
NICK_INFO_TIME_REGGED
	          Kayıt zamanı: %s
NICK_INFO_LAST_SEEN
	   Son görüldüğü tarih: %s
NICK_INFO_LAST_QUIT
	      Son çıkış mesajı: %s
NICK_INFO_URL
	                   URL: %s
NICK_INFO_EMAIL
	         E-mail adresi: %s
NICK_INFO_VHOST
	                 vhost: %s
NICK_INFO_VHOST2
	            	vhost: %s@%s
NICK_INFO_ICQ
	                 ICQ #: %d
NICK_INFO_GREET
	      Karşılama mesajı: %s
NICK_INFO_OPTIONS
	            Özellikler: %s
NICK_INFO_EXPIRE
	Zaman Aşımı: %s
# These strings MUST NOT be empty
NICK_INFO_OPT_KILL
	Kill koruması
NICK_INFO_OPT_SECURE
	Güvenlik
NICK_INFO_OPT_PRIVATE
	Özel
NICK_INFO_OPT_MSG
	Message mode
NICK_INFO_OPT_AUTOOP
	Auto-op
NICK_INFO_OPT_NONE
	YOK
NICK_INFO_NO_EXPIRE
	Bu nick zaman aşımına uğramayacak.
NICK_INFO_FOR_MORE
	Geniş bilgi için, %R%s INFO %s ALL yazın.

# LIST responses
NICK_INFO_SUSPENDED
	Bu rumuz ' %s ' sebebinden dolayı askıya alınmıstır kullanılamaz
NICK_INFO_SUSPENDED_NO_REASON
	Bu rumuz  alınmıstır kullanılamaz

# LIST responses
NICK_LIST_SYNTAX
	LIST model
NICK_LIST_SERVADMIN_SYNTAX
	LIST model [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
NICK_LIST_HEADER
	%s içeren kayıtların listesi:
NICK_LIST_RESULTS
	Liste sonu - %d/%d .

# GLIST responses
NICK_ALIST_SYNTAX
	ALIST nickname
NICK_ALIST_HEADER
	Channels that you have access on:
	  Num  Channel              Level    Description 
NICK_ALIST_HEADER_X
	Channels that %s has access on:
	  Num  Channel              Level    Description 
NICK_ALIST_XOP_FORMAT
	  %3d %c%-20s %-8s %s
NICK_ALIST_ACCESS_FORMAT
	  %3d %c%-20s %-8d %s
NICK_ALIST_FOOTER
	Liste sonu - %d/%d .

# GLIST responses
NICK_GLIST_HEADER
	Grubunuzdaki nicklerin listesi:
NICK_GLIST_HEADER_X
	%s grubundaki nicklerin listesi:
NICK_GLIST_FOOTER
	Grupta %d nick var.
NICK_GLIST_REPLY
	   %c%s
NICK_GLIST_REPLY_ADMIN
	   %c%s (zaman aşımı %s)

# RECOVER responses
NICK_RECOVER_SYNTAX
	RECOVER nick [şifre]
NICK_NO_RECOVER_SELF
	Kendizi recover edemezsiniz!
NICK_RECOVERED
	Nickiniz serbest bırakıldı.
	%R%s RELEASE %s komutunu kullanarak %s saniye icinde nickinizi kullanabilirsiniz.

# RELEASE responses
NICK_RELEASE_SYNTAX
	RELEASE nick [şifre]
NICK_RELEASE_NOT_HELD
	%s nicki zaten serbest.
NICK_RELEASED
	Nickiniz serbest bırakıldı.

# GHOST responses
NICK_GHOST_SYNTAX
	GHOST nick [şifre]
NICK_NO_GHOST_SELF
	Kendinizi ghost edemezsiniz!
NICK_GHOST_KILLED
	Asılı kalan nickiniz kill lendi.

# GETPASS responses
NICK_GETPASS_SYNTAX
	GETPASS nick
NICK_GETPASS_UNAVAILABLE
	GETPASS komutu devre dışı çünkü şifreleme(encryption) devrede.
NICK_GETPASS_PASSWORD_IS
	%s nickinin şifresi %s.

# SENDPASS responses
NICK_GETEMAIL_SYNTAX
	GETEMAIL kullanıcıadi@emailsunucusu 
NICK_GETEMAIL_EMAILS_ARE
	%s Rumuzu %s adresini kullanıyor.
NICK_GETEMAIL_NOT_USED
	%s icin bir bilgi bulunamadı.
	
# SENDPASS responses
NICK_SENDPASS_SYNTAX
	SENDPASS nick
NICK_SENDPASS_UNAVAILABLE
	SENDPASS komutu devre dışı çünkü şifreleme(encryption) devrede.
NICK_SENDPASS_SUBJECT
	Nick şifresi (%s)
NICK_SENDPASS_HEAD
	Selam,
NICK_SENDPASS_LINE_1
	%s nickinizin şifresinin e-mail adresinize yollanmasını istemişsiniz.
NICK_SENDPASS_LINE_2
	Nickinizin Şifresi %s Güvenlik nedenlerinden dolayı, bu maili aldıktan sonra değiştirseniz iyi olur.
NICK_SENDPASS_LINE_3
	Eğer bu mailin neden size gönderildiğini bilmiyorsanız, maili ciddiye almayın.
NICK_SENDPASS_LINE_4
	LÜTFEN BU MAİLE CEVAP VERMEYİN!
NICK_SENDPASS_LINE_5
	%s yönetimi.
NICK_SENDPASS_OK
	%s nickinin şifresi gönderildi.

# FORBID responses
NICK_SUSPEND_SYNTAX
	SUSPEND nickname reason
NICK_SUSPEND_SUCCEEDED
	%s şu anda askıya alındı.
NICK_SUSPEND_FAILED
	%s rumuzu icin işlem yapılamadı!

# UNSUSPEND responses
NICK_UNSUSPEND_SYNTAX
	UNSUSPEND nickname
NICK_UNSUSPEND_SUCCEEDED
	%s kullanıma acıldı.
NICK_UNSUSPEND_FAILED
	%s rumuzu icin işlem yapılamadı!

# FORBID responses
NICK_FORBID_SYNTAX
	FORBID nick [sebep]
NICK_FORBID_SYNTAX_REASON
	FORBID nick sebep
NICK_FORBID_SUCCEEDED
	%s nickinin Kullanımı yasaklandı.
NICK_FORBID_FAILED
	%s nickinin Kullanımı yasaklanamadı!

###########################################################################
#
# ChanServ messages
#
###########################################################################

# Access level descriptions
NICK_REQUESTED
	Bu rumuz icin zaten bir kayıt istegi bulunuyor, lütfen mail adresinizi kontrol ederek aktivasyon bilgilerini öğreniniz.
NICK_REG_RESENT
	Aktivasyon kodunuz %s adresine tekrar gönderildi.
NICK_REG_UNABLE
	Rumuz kayit edilemiyor, lütfen daha sonra tekrar deneyiniz.
NICK_IS_PREREG
	Bu rumuz e-mail adresinde bulunan aktivasyon işleminin sonucunu beklemektedir.
NICK_ENTER_REG_CODE
	Aktivasyon kodu %s adresine yollandı, %R%s confirm <passcode> şeklinde işlemi tamamlayabilirsiniz.
NICK_CONFIRM_NOT_FOUND
	Kayıt işlemine başlamak icin önce "%R%s register <password> <email>" şeklinde bir kayıt talebinde bulunmalısınız.
NICK_CONFIRM_INVALID
	Yanlış aktivasyon kodu, mail adresinizi kontrol ederek tekrar deneyiniz.
NICK_REG_MAIL_SUBJECT
	Rumuz Kayıt islemi (%s)
NICK_REG_MAIL_HEAD
	Merhabalar,
NICK_REG_MAIL_LINE_1
	%s Rumuzunu kayıt etmek icin bir istekte bulundunuz.
NICK_REG_MAIL_LINE_2
	Irc Sunucusu üzerinde " %R%s confirm %s " komutunu kullanarak kayıt işleminizi tamamlayabilirsiniz.
NICK_REG_MAIL_LINE_3
	Eğer bu postanın neden gönderildiği hakkında bir bilginiz yok ise lütfen postayı silerek adresi engelleyiniz.
NICK_REG_MAIL_LINE_4
	LÜTFEN BU POSTAYA CEVAP ATMAYINIZ!
NICK_REG_MAIL_LINE_5
	%s Sunucusu Yöneticisi.
NICK_GETPASS_PASSCODE_IS
	%s rumuzu icin gerekli aktivasyon kodu %s.
NICK_FORCE_REG
	%s rumuzu onaylandı.

###########################################################################
#
# ChanServ messages
#
###########################################################################

# Access level descriptions
CHAN_LEVEL_AUTOOP
	Kanala girişte ChanServ tarafından otomatik op (+o)
CHAN_LEVEL_AUTOVOICE
	Kanala girişte ChanServ tarafından otomatik voice (+v)
CHAN_LEVEL_AUTOHALFOP
	Kanala girişte ChanServ tarafından otomatik yarım op (+h)
CHAN_LEVEL_AUTOPROTECT
	Kanala girişte ChanServ tarafından otomatik koruma (+a)
CHAN_LEVEL_AUTODEOP
	Kanal içinde op olmasını yasaklar.
CHAN_LEVEL_NOJOIN
	RESTRICTED özelliğinin aktif olması halinde kanala giremez.
CHAN_LEVEL_INVITE
	INVITE komutunu kullanmaya izinlidir.
CHAN_LEVEL_AKICK
	AKICK komutunu kullanmaya izinlidir.
CHAN_LEVEL_SET
	SET komutunu (FOUNDER/PASSWORD hariç) kullanmaya izinlidir.
CHAN_LEVEL_CLEAR
	CLEAR komutunu kullanmaya izinlidir.
CHAN_LEVEL_UNBAN
	UNBAN komutunu kullanmaya izinlidir.
CHAN_LEVEL_OPDEOP
	OP/DEOP komutlarını kullanmaya izinlidir.
CHAN_LEVEL_ACCESS_LIST
	Kanalın Access listesini görüntülemeye izinlidir.
CHAN_LEVEL_ACCESS_CHANGE
	Kanalın Access listesinde değişiklik yapmaya izinlidir.
CHAN_LEVEL_MEMO
	Kanala gelen mesajlari listelemeye/okumaya izinlidir.
CHAN_LEVEL_ASSIGN
	Botun assign/unassign komutlarını kullanmaya izinlidir.
CHAN_LEVEL_BADWORDS
	BADWORDS komutunu kullanmaya izinlidir.
CHAN_LEVEL_NOKICK
	Bot tarafından kicklenmemeyi sağlar.
CHAN_LEVEL_FANTASIA
	Kanalda fantazi komutlarını kullanmaya izinlidir. 
CHAN_LEVEL_SAY
	SAY ve ACT komutlarını kullanmaya izinlidir.
CHAN_LEVEL_GREET
	Karşılama mesajı alabilir.
CHAN_LEVEL_VOICEME
	Kendini (de)voice etmeye izinlidir.
CHAN_LEVEL_VOICE
	VOICE/DEVOICE komutlarını kullanmaya izinlidir.
CHAN_LEVEL_GETKEY
	GETKEY komutunu kullanmaya izinlidir.
CHAN_LEVEL_OPDEOPME
	Kendini (de)op etmeye izinlidir.
CHAN_LEVEL_HALFOPME
	Kendini (de)halfop etmeye izinlidir.
CHAN_LEVEL_HALFOP
	HALFOP/DEHALFOP komutlarını kullanmaya izinlidir.
CHAN_LEVEL_PROTECTME
	Kendini (de)protect etmeye izinlidir.
CHAN_LEVEL_PROTECT
	PROTECT/DEPROTECT komutlarını kullanmaya izinlidir.
CHAN_LEVEL_KICKME
	Kendini atmaya izinlidir.
CHAN_LEVEL_KICK
	KICK komutunu kullanmaya izinlidir.
CHAN_LEVEL_SIGNKICK
	SIGNKICK LEVEL kullanıldığında işaretli atma yapılmaz.
CHAN_LEVEL_BANME
	Kendini banlamaya yetkili
CHAN_LEVEL_BAN
	BAN komutunu kullanmaya yetkili
CHAN_LEVEL_TOPIC
	TOPIC komutunu kullanmaya yetkili
CHAN_LEVEL_INFO
	INFO komutunu ALL seçenegiyle kullanmaya yetkili

# Automatic responses
CHAN_IS_REGISTERED
	Bu kanal %s ile kayıtlıdır.
CHAN_NOT_ALLOWED_OP
	%s kanalında op olmaya yetkiniz yok.
CHAN_MAY_NOT_BE_USED
	Bu kanal kullanılamaz.
CHAN_NOT_ALLOWED_TO_JOIN
	Bu kanalda bulunmanıza müsaade yok.

# REGISTER responses
CHAN_X_INVALID
	%s geçerli bir kanal değil.

# REGISTER responses
CHAN_REGISTER_SYNTAX
	REGISTER kanaladı şifre açıklama
CHAN_REGISTER_DISABLED
	Kanal kaydı geçici olarak devre dışıdır.
CHAN_REGISTER_NOT_LOCAL
	Local kanallar kayıt edilemezler.
CHAN_MUST_REGISTER_NICK
	Önce nickinizi kayıt etmeniz gerekiyor.  Nick kayıt hakkında bilgi için %R%s HELP yazınız.
CHAN_MUST_IDENTIFY_NICK
	Lütfen önce %s ile bu komutu kullanarak nickinizi tanıtın:
	%R%s IDENTIFY şifreniz
CHAN_MAY_NOT_BE_REGISTERED
	%s kanalı kayıt edilemez.
CHAN_ALREADY_REGISTERED
	%s kanalı zaten kayıtlı!
CHAN_MUST_BE_CHANOP
	Kanal kayıt edebilmeniz için kayıt edilmemiş bir kanala ilk girip op olmanız gerekmektedir.
CHAN_REACHED_CHANNEL_LIMIT
	%d kanallık limitinizi doldurdunuz.
CHAN_EXCEEDED_CHANNEL_LIMIT
	%d kanallık limitinizi aştınız.
CHAN_REGISTRATION_FAILED
	Kanal kaydı başarısız.
CHAN_REGISTERED
	%s kanalı bu nicke kayıt edildi: %s
CHAN_PASSWORD_IS
	Kanal şifreniz %s - ilerde kullanacağınız için unutmayınız ve kimseye söylemeyiniz.
CHAN_REGISTER_NONE_CHANNEL
	Geçersiz bir kanalı kaydetmek istiyorsunuz %s
CHAN_SYMBOL_REQUIRED
	Kanalı kayıt etmek için # sembolunu kanal isminin başına eklemeniz gereklidir.


# IDENTIFY responses
CHAN_IDENTIFY_SYNTAX
	IDENTIFY kanaladı şifreniz
CHAN_IDENTIFY_FAILED
	Geçersiz şifre.
CHAN_IDENTIFY_SUCCEEDED
	Şifre kabul edildi - %s kanalında founder seviyesinde erişim kazandınız.

# LOGOUT responses
CHAN_LOGOUT_SYNTAX
	LOGOUT kanaladı nick
CHAN_LOGOUT_SERVADMIN_SYNTAX
	LOGOUT kanaladı [nick]
CHAN_LOGOUT_SUCCEEDED
	Kullanıcı %s artık %s kanalı tarafından tanınmıyor.
CHAN_LOGOUT_ALL_SUCCEEDED
	Tüm tanımlı kullanıcılar artık %s kanalı tarafından tanınmıyor (kanal sahibi haric).
CHAN_LOGOUT_FOUNDER_FAILED
	%s Kanalından yetki cıkısı yapamazsınız (kanal sahibi sizsiniz).

# DROP responses
CHAN_DROP_SYNTAX
	DROP kanaladı
CHAN_DROP_DISABLED
	Kanal kaydının silinmesi(DROP) geçici olarak devre dışıdır.
CHAN_DROPPED
	%s kanalının kaydı silinmiştir (dropped).

# SET responses
CHAN_SET_SYNTAX
	SET kanaladı özellik parametre
CHAN_SET_DISABLED
	Chanserv'ün SET komutu geçici olarak devre dışıdır.
CHAN_SET_UNKNOWN_OPTION
	Varolmayan SET özelliği: %s.

# SET FOUNDER responses
CHAN_SET_FOUNDER_TOO_MANY_CHANS
	%s çok fazla kanala sahip.
CHAN_FOUNDER_CHANGED
	%s kanalının founderı %s olarak değiştirildi.

# SET SUCCESSOR responses
CHAN_SUCCESSOR_CHANGED
	%s için successor %s olarak değiştirildi.
CHAN_SUCCESSOR_UNSET
	%s için successor kaldırıldı.
CHAN_SUCCESSOR_IS_FOUNDER
	%s %s kanalında successor olamaz çünkü zaten o kanalın founderı.

# SET PASSWORD responses
CHAN_SET_PASSWORD_FAILED
	Şifre değişimi başarısız.
CHAN_PASSWORD_CHANGED
	%s kanalının şifresi değiştirildi.
CHAN_PASSWORD_CHANGED_TO
	%s kanalının şifresi %s olarak değiştirildi.

# SET DESC responses
CHAN_DESC_CHANGED
	%s kanalının açıklaması %s olarak değiştirildi.

# SET URL responses
CHAN_URL_CHANGED
	%s kanalının URL adresi %s olarak değiştirildi.
CHAN_URL_UNSET
	%s kanalının URL adresi kaldırıldı.

# SET EMAIL responses
CHAN_EMAIL_CHANGED
	%s kanalının e-mail adresi %s olarak değiştirildi.
CHAN_EMAIL_UNSET
	%s kanalının e-mail adresi kaldırıldı.

# SET ENTRYMSG responses
CHAN_ENTRY_MSG_CHANGED
	%s kanalının giriş mesajı değiştirildi.
CHAN_ENTRY_MSG_UNSET
	%s kanalının giriş mesajı kaldırıldı.
	
# SET BANTYPE responses
CHAN_SET_BANTYPE_INVALID
	%s geçerli bir ban tipi değil.
CHAN_SET_BANTYPE_CHANGED
	%s kanalının ban tipi #%d olarak değiştirildi.

# SET MLOCK responses
CHAN_SET_MLOCK_UNKNOWN_CHAR
	Varolmayan mod karakteri %c yoksayıldı.
CHAN_SET_MLOCK_IMPOSSIBLE_CHAR
	%c modunu kitleyemezsiniz, yoksayildi.
CHAN_SET_MLOCK_L_REQUIRED
	+L modunu kullanabilmek için +l modunuda kullanmalisiniz.
CHAN_SET_MLOCK_K_REQUIRED
	+K modunu kullanabilmek için +i modunuda kullanmalisiniz.
CHAN_MLOCK_CHANGED
	%s kanalının mod kilidi %s olarak değiştirildi.

# SET KEEPTOPIC responses
CHAN_SET_KEEPTOPIC_SYNTAX
	SET kanaladı KEEPTOPIC {ON | OFF}
CHAN_SET_KEEPTOPIC_ON
	Kanal başlığı saklama %s kanalı için aktif duruma gecti.
CHAN_SET_KEEPTOPIC_OFF
	Kanal başlığı saklama %s kanalı için pasif duruma gecti.

# SET TOPICLOCK responses
CHAN_SET_TOPICLOCK_SYNTAX
	SET kanaladı TOPICLOCK {ON | OFF}
CHAN_SET_TOPICLOCK_ON
	Kanal başlığı kilidi %s kanalı için aktif duruma gecti.
CHAN_SET_TOPICLOCK_OFF
	Kanal başlığı kilidi %s kanalı için pasif duruma gecti.

# SET PEACE responses
CHAN_SET_PEACE_SYNTAX
	SET kanaladi PEACE {ON | OFF}
CHAN_SET_PEACE_ON
	Bariş secenegi %s kanalı icin aktif.
CHAN_SET_PEACE_OFF
	Bariş secenegi %s kanalı icin pasif.

# SET PRIVATE responses
CHAN_SET_PRIVATE_SYNTAX
	SET kanaladı PRIVATE {ON | OFF}
CHAN_SET_PRIVATE_ON
	Özel kanal konumu %s kanalı icin  aktif.
CHAN_SET_PRIVATE_OFF
	Özel kanal konumu %s kanalı icin  pasif.

# SET SECUREOPS responses
CHAN_SET_SECUREOPS_SYNTAX
	SET kanaladı SECUREOPS {ON | OFF}
CHAN_SET_SECUREOPS_ON
	Operator koruması %s kanalı icin  aktif.
CHAN_SET_SECUREOPS_OFF
	Operator koruması %s kanalı icin  pasif.

# SET SECUREFOUNDER responses
CHAN_SET_SECUREFOUNDER_SYNTAX
	SET kanaladı SECUREFOUNDER {ON | OFF}
CHAN_SET_SECUREFOUNDER_ON
	Kanal Sahibi koruması %s kanalı icin  aktif.
CHAN_SET_SECUREFOUNDER_OFF
	Kanal Sahibi koruması %s kanalı icin  pasif.

# SET RESTRICTED responses
CHAN_SET_RESTRICTED_SYNTAX
	SET kanaladı RESTRICTED {ON | OFF}
CHAN_SET_RESTRICTED_ON
	Ayrıcalıklı giriş %s kanalı icin  aktif.
CHAN_SET_RESTRICTED_OFF
	Ayrıcalıklı giriş %s kanalı icin  pasif.

# SET SECURE responses
CHAN_SET_SECURE_SYNTAX
	SET kanal SECURE {ON | OFF}
CHAN_SET_SECURE_ON
	Yetki seviyesi korumasi %s kanalı icin  aktif.
CHAN_SET_SECURE_OFF
	Yetki seviyesi korumasi %s kanalı icin  pasif.

# SET SIGNKICK responses
CHAN_SET_SIGNKICK_SYNTAX
	SET kanaladı SIGNKICK {ON | LEVEL | OFF}
CHAN_SET_SIGNKICK_ON
	%s Kanalında kullanılan atma komutları icin imza gosterimi aktif.
CHAN_SET_SIGNKICK_LEVEL
	%s kanalı icin yetki kullanan kisi gosterimi aktif, fakat
	kanal icinde ayma komutu uygulanan kişinin yetkisi göz önünde tutulur.
CHAN_SET_SIGNKICK_OFF
	%s Kanalında kullanılan atma komutları icin imza gosterimi pasif.

# SET OPNOTICE responses
CHAN_SET_OPNOTICE_SYNTAX
	SET kanaladı OPNOTICE {ON | OFF}
CHAN_SET_OPNOTICE_ON
	Op-notice  %s kanalı icin ON.
CHAN_SET_OPNOTICE_OFF
	Op-notice  %s kanalı icin OFF.

# SET XOP responses
CHAN_SET_XOP_SYNTAX
	SET kanaladi XOP {ON | OFF}
CHAN_SET_XOP_ON
	xOP listesi %s kanalı icin ON.
CHAN_SET_XOP_OFF
	xOP listesi  %s kanalı icin OFF.

# SET NOEXPIRE responses
CHAN_SET_NOEXPIRE_SYNTAX
	SET kanaladı NOEXPIRE {ON | OFF}
CHAN_SET_NOEXPIRE_ON
	%s kanalı zaman aşımından çıkarıldı.
CHAN_SET_NOEXPIRE_OFF
	%s kanalı zaman aşımına eklendi.

# xOP messages
CHAN_XOP_REACHED_LIMIT
	Bir kanala toplam %d AOP/SOP/VOP kayit edilebilir.
CHAN_XOP_LIST_FORMAT
	  %3d  %s
CHAN_XOP_ACCESS
	Bu komutu kullanamazsiniz. Yerine ACCESS komutunu kullanin.
	Daha fazla bilgi için %R%s HELP ACCESS yazin.
CHAN_XOP_NOT_AVAILABLE
	xOP sistemi geçerli degil.

# AOP messages
CHAN_AOP_SYNTAX
	AOP kanal {ADD|DEL|LIST|CLEAR} [nick | liste-no]
CHAN_AOP_DISABLED
	Kanal AOP listesi degisiklikleri geçici olarak devre disidir.
CHAN_AOP_NICKS_ONLY
	Kanal AOP listeleri sadece kayitli nicklerden olusabilir.
CHAN_AOP_ADDED
	%s %s kanalinin AOP listesine eklenmistir.
CHAN_AOP_MOVED
	%s nicki %s kanalı AOP listesine taşındı.
CHAN_AOP_NO_SUCH_ENTRY
	(#%d) %s kanalinin AOP listesinde böyle bir kayit bulunamadi.
CHAN_AOP_NOT_FOUND
	%s %s kanali AOP listesinde bulunamadi.
CHAN_AOP_NO_MATCH
	%s kanali AOP listesinde uyusan kayit bulunamadi.
CHAN_AOP_DELETED
	%s %s kanali AOP listesinden silindi.
CHAN_AOP_DELETED_ONE
	%s kanalinin AOP listesinden 1 kayit silindi.
CHAN_AOP_DELETED_SEVERAL
	Deleted %d entries from %s AOP list.
CHAN_AOP_LIST_EMPTY
	%s kanalinin AOP listesi bos.
CHAN_AOP_LIST_HEADER
	%s kanali AOP listesi:
	  Num  Nick
CHAN_AOP_CLEAR
	Kanalin %s AOP listesi temizlendi.

# HOP messages
CHAN_HOP_SYNTAX
	HOP kanaladi {ADD|DEL|LIST|CLEAR} [nick | liste-no]
CHAN_HOP_DISABLED
	Kanal HOP listesi degisiklikleri geçici olarak devre disidir.
CHAN_HOP_NICKS_ONLY
	Kanal HOP listeleri sadece kayitli nicklerden olusabilir.
CHAN_HOP_ADDED
	%s %s kanali HOP listesine eklendi.
CHAN_HOP_MOVED
	%s nicki %s kanalı HOP listesine taşındı.
CHAN_HOP_NO_SUCH_ENTRY
	(#%d) %s kanali HOP listesinde uyusan kayit bulunamadi.
CHAN_HOP_NOT_FOUND
	%s %s kanali HOP listesinde bulunamadi.
CHAN_HOP_NO_MATCH
	%s kanali HOP listesinde uyusan kayit bulunamadi.
CHAN_HOP_DELETED
	%s %s kanali HOP listesinden silindi.
CHAN_HOP_DELETED_ONE
	%s kanali HOP listesinden 1 kayit silindi.
CHAN_HOP_DELETED_SEVERAL
	Deleted %d entries from %s HOP list.
CHAN_HOP_LIST_EMPTY
	%s kanali HOP listesi bos.
CHAN_HOP_LIST_HEADER
	%s kanali HOP listesi:
	  Num  Nick
CHAN_HOP_CLEAR
	Kanal %s HOP listesi temizlendi.

# SOP messages
CHAN_SOP_SYNTAX
	SOP kanaladi {ADD|DEL|LIST|CLEAR} [nick | liste-no]
CHAN_SOP_DISABLED
	Kanal SOP listesi degisikligi geçici olarak devre disidir.
CHAN_SOP_NICKS_ONLY
	Kanal SOP listesi sadece kayitli nicklerden olusabilir.
CHAN_SOP_ADDED
	%s %s kanali SOP listesine eklendi.
CHAN_SOP_MOVED
	%s nicki %s kanalı SOP listesine taşındı.
CHAN_SOP_NO_SUCH_ENTRY
	(#%d) %s kanali SOP listesinde uyusan kayit bulunamadi.
CHAN_SOP_NOT_FOUND
	%s %s kanali SOP listesinde bulunamadi.
CHAN_SOP_NO_MATCH
	%s kanali SOP listesinde uyusan kayit bulunamadi.
CHAN_SOP_DELETED
	%s %s kanali SOP listesinden silindi.
CHAN_SOP_DELETED_ONE
	%s kanali SOP listesinden 1 kayit silindi.
CHAN_SOP_DELETED_SEVERAL
	Deleted %d entries from %s SOP list.
CHAN_SOP_LIST_EMPTY
	%s kanali SOP listesi bos.
CHAN_SOP_LIST_HEADER
	%s kanali SOP listesi:
	  Num  Nick
CHAN_SOP_CLEAR
	Kanal %s SOP listesi temizlendi.

# VOP messages
CHAN_VOP_SYNTAX
	VOP kanaladi {ADD|DEL|LIST|CLEAR} [nick | liste-no]
CHAN_VOP_DISABLED
	Kanal VOP listesi degisikligi geçici olarak devre disidir.
CHAN_VOP_NICKS_ONLY
	Kanal VOP listeleri sadece kayitli nicklerden olusabilir.
CHAN_VOP_ADDED
	%s %s kanali VOP listesine eklendi.
CHAN_VOP_MOVED
	%s nicki %s kanalı VOP listesine taşındı.
CHAN_VOP_NO_SUCH_ENTRY
	(#%d) %s kanali VOP listesinde uyusan kayit bulunamadi.
CHAN_VOP_NOT_FOUND
	%s %s kanali VOP listesinde bulunamadi.
CHAN_VOP_NO_MATCH
	%s kanali VOP listesinde uyusan kayit bulunamadi.
CHAN_VOP_DELETED
	%s %s kanali VOP listesinden silindi.
CHAN_VOP_DELETED_ONE
	%s kanali VOP listesinden 1 kayit silindi.
CHAN_VOP_DELETED_SEVERAL
	Silindi %d VOP listesinden kayit %s kanali.
CHAN_VOP_LIST_EMPTY
	%s kanali VOP listesi bos.
CHAN_VOP_LIST_HEADER
	%s kanali VOP listesi:
	  Num  Nick
CHAN_VOP_CLEAR
	Kanal %s VOP listesi temizlendi.

# ACCESS messages
CHAN_ACCESS_SYNTAX
	ACCESS kanaladı {ADD|DEL|LIST|CLEAR} [nick [seviye] | kayıt-listesi]
CHAN_ACCESS_XOP
	Bu komutu kullanamazsiniz. 
	Yerine AOP, SOP veya VOP komutlarini kullanin.
	Daha fazla bilgi için %R%s HELP komut yazin.
CHAN_ACCESS_XOP_HOP
	Bu komutu kullanamazsınız. 
	AOP, SOP, HOP ve VOP komutlarını deneyiniz.
	%R%s HELP command şeklinde daha ayrıntılı bilgi elde edebilirsiniz.
CHAN_ACCESS_DISABLED
	Kanal access listesinin değiştirilmesi geçici olarak devre dışıdır.
CHAN_ACCESS_LEVEL_NONZERO
	Access seviyesi sıfırdan farklı bir sayı olmalıdır.
CHAN_ACCESS_LEVEL_RANGE
	Access seviyesi %d ve %d arasında olmalıdır.
CHAN_ACCESS_NICKS_ONLY
	Kanal access listesi sadece kayıtlı kullanıcıları içermelidir.
CHAN_ACCESS_REACHED_LIMIT
	Kanalda sadece %d tane access kaydı olabilir.
CHAN_ACCESS_LEVEL_UNCHANGED
	%s nickinin access seviyesi %s kanalında zaten %d.
CHAN_ACCESS_LEVEL_CHANGED
	%s nickinin access seviyesi %s kanalında %d olarak değiştirildi.
CHAN_ACCESS_ADDED
	%s nicki %s kanalinin access listesine %d seviyeden eklendi.
CHAN_ACCESS_NO_SUCH_ENTRY
	(#%d) şeklinde bir kayıt %s kanalının access listesinde bulunamadı.
CHAN_ACCESS_NOT_FOUND
	%s %s kanalının access listesinde bulunamadı.
CHAN_ACCESS_NO_MATCH
	Uyuşan kayıt %s kanalının access listesinde yok.
CHAN_ACCESS_DELETED
	%s %s kanalının access listesinden silindi.
CHAN_ACCESS_DELETED_ONE
	%s kanalının access listesinden 1 kayıt silindi.
CHAN_ACCESS_DELETED_SEVERAL
	Deleted %d entries from %s access list.
CHAN_ACCESS_LIST_EMPTY
	%s kanalının access listesi boş.
CHAN_ACCESS_LIST_HEADER
	%s kanalı için access listesi:
	  Sıra   Seviye  Nick
CHAN_ACCESS_LIST_FOOTER
	access listenin sonu.
CHAN_ACCESS_LIST_XOP_FORMAT
	  %3d   %s  %s
CHAN_ACCESS_LIST_AXS_FORMAT
	  %3d  %4d  %s
CHAN_ACCESS_CLEAR
	Kanal %s access listesi temizlendi.

# AKICK responses
CHAN_AKICK_SYNTAX
	AKICK kanaladı {ADD | STICK | UNSTICK | DEL | LIST | VIEW | ENFORCE | CLEAR} [nick-veya-usermask] [sebep]
CHAN_AKICK_DISABLED
	Kanal Akick listesinin değiştirilmesi geçici olarak devre dışıdır.
CHAN_AKICK_ALREADY_EXISTS
	%s nicki %s kanalının akick listesinde zaten var.
CHAN_AKICK_REACHED_LIMIT
	Bir kanalın akick listesinde en fazla %d kişi olabilir.
CHAN_AKICK_ADDED
	%s nicki %s kanalının akick listesine eklendi.
CHAN_AKICK_NO_SUCH_ENTRY
	(#%d) şeklinde bir kayıt %s kanalının akick listesinde bulunamadı.
CHAN_AKICK_NOT_FOUND
	%s %s kanalının akick listesinde bulunamadı.
CHAN_AKICK_NO_MATCH
	Uyuşan kayıt %s kanalının akick listesinde bulunamadı.
CHAN_AKICK_STUCK
	%s artik %s kanalinda sürekli aktif.
CHAN_AKICK_UNSTUCK
	%s artik %s kanalinda sürekli aktif degil.
CHAN_AKICK_DELETED
	%s %s kanalının akick listesinden silindi.
CHAN_AKICK_DELETED_ONE
	%s kanalının akick listesinden 1 kayıt silindi.
CHAN_AKICK_DELETED_SEVERAL
	Deleted %d entries from %s autokick list.
CHAN_AKICK_LIST_EMPTY
	%s kanalının akick listesi boş.
CHAN_AKICK_LIST_HEADER
	%s kanalının akick listesi:
CHAN_AKICK_LIST_FORMAT
	  %3d %s (%s)
CHAN_AKICK_VIEW_FORMAT
	%3d %s (by %s on %s)
	    %s
CHAN_AKICK_VIEW_FORMAT_STUCK
	%3d %s (kalici) (by %s on %s)
	    %s
CHAN_AKICK_ENFORCE_DONE
	 %s için AKICK uygulaması tamam; %d kullanıcı için geçerli.
CHAN_AKICK_CLEAR
	Kanal %s akick listesi temizlendi.

# LEVELS responses
CHAN_LEVELS_SYNTAX
	LEVELS kanaladı {SET | DIS[ABLE] | LIST | RESET} [madde [seviye]]
CHAN_LEVELS_XOP
	Bu modda bu komut kullanilmaz.
CHAN_LEVELS_RANGE
	Level %d ile %d arasında olmalıdır.
CHAN_LEVELS_CHANGED
	%s için level %s kanalında %d olarak değiştirildi.
CHAN_LEVELS_UNKNOWN
	Varolmayan ayar: %s. Geçerli ayar listesi için %R%s HELP LEVELS DESC yazınız.
CHAN_LEVELS_DISABLED
	%s %s kanalında iptal edildi.
CHAN_LEVELS_LIST_HEADER
	%s kanalı için access level ayarları:
CHAN_LEVELS_LIST_DISABLED
	    %-*s  (kapatıldı)
CHAN_LEVELS_LIST_FOUNDER
	    %-*s  (sadece founder)
CHAN_LEVELS_LIST_NORMAL
	    %-*s  %d
CHAN_LEVELS_RESET
	%s için access levelleri varsayılanlarla değiştirildi.

# Status Messages
CHAN_STATUS_SYNTAX
	Durum HATASI
CHAN_STATUS_NOT_REGGED
	Durum HATASI %s kanal kayıtlı degil
CHAN_STATUS_FORBIDDEN
	Durum HATASI %s kanalı yasaklı
CHAN_STATUS_NOTONLINE
	Durum HATASI Nic %s sunucuda degil
CHAN_STATUS_INFO
	Durum %s %s %d

# INFO responses
CHAN_INFO_SYNTAX
	INFO kanaladı [ALL]
CHAN_INFO_HEADER
	%s kanalı için bilgi:
CHAN_INFO_FOUNDER
	        Kanal Sahibi: %s (%s)
CHAN_INFO_NO_FOUNDER
	        Kanal Sahibi: %s
CHAN_INFO_SUCCESSOR
	      Kanal vârisi: %s (%s)
CHAN_INFO_NO_SUCCESSOR
	      Kanal vârisi: %s
CHAN_INFO_DESCRIPTION
	       Açıklama: %s
CHAN_INFO_ENTRYMSG
	   Giriş mesajı: %s
CHAN_INFO_TIME_REGGED
	   Kayıt tarihi: %s
CHAN_INFO_LAST_USED
	 Son kullanılış: %s
CHAN_INFO_LAST_TOPIC
	      Son topic: %s
CHAN_INFO_TOPIC_SET_BY
	   Topici yazan: %s
CHAN_INFO_URL
	            URL: %s
CHAN_INFO_EMAIL
	  E-mail adresi: %s
CHAN_INFO_BANTYPE
	       Ban tipi: %d
CHAN_INFO_OPTIONS
	     Özellikler: %s
CHAN_INFO_OPT_KEEPTOPIC
	Topic hatırlama
CHAN_INFO_OPT_OPNOTICE
	OP Notu
CHAN_INFO_OPT_PEACE
	Baris
CHAN_INFO_OPT_PRIVATE
	Özel
CHAN_INFO_OPT_RESTRICTED
	Kisitli Erisim.
CHAN_INFO_OPT_SECURE
	Güvenlik
CHAN_INFO_OPT_SECUREOPS
	Secure Ops
CHAN_INFO_OPT_SECUREFOUNDER
	Secure Founder
CHAN_INFO_OPT_SIGNKICK
	İşaretli atma
CHAN_INFO_OPT_TOPICLOCK
	Topic kilidi
CHAN_INFO_OPT_XOP
	xOP sistemi
CHAN_INFO_OPT_NONE
	YOK
CHAN_INFO_MODE_LOCK
	     Mod kilidi: %s
CHAN_INFO_EXPIRE
	      Zaman Aşımı: %s
CHAN_INFO_NO_EXPIRE
	Bu kanal için zaman aşımı söz konusu değil.

# LIST responses
CHAN_LIST_SYNTAX
	LIST model
CHAN_LIST_SERVADMIN_SYNTAX
	LIST model [FORBIDDEN] [NOEXPIRE]
CHAN_LIST_HEADER
	%s ile uyuşan kayıt listesi:
CHAN_LIST_FORMAT
	    %-20s  %s
CHAN_LIST_END
	Liste sonu - %d/%d uyan kayıt bulundu.

# CLIST responses
CHAN_INVITE_SYNTAX
	INVITE kanaladı

# UNBAN responses
CHAN_UNBAN_SYNTAX
	UNBAN kanaladı
CHAN_UNBANNED
	%s kanalındaki banınız kaldırıldı.

# TOPIC responses
CHAN_TOPIC_SYNTAX
	TOPIC kanaladi [konu]

# CLEAR responses
CHAN_CLEAR_SYNTAX
	CLEAR kanaladı neyi
CHAN_CLEARED_BANS
	%s kanalındaki tüm banlar kaldırıldı.
CHAN_CLEARED_EXCEPTS
	%s kanalındaki tüm ayrıcalıklar kaldırıldı.
CHAN_CLEARED_MODES
	%s kanalındaki tüm modlar resetlendi.
CHAN_CLEARED_OPS
	Mod +o %s kanalında temizlendi.
CHAN_CLEARED_HOPS
	Mod +h  %s kanalında temizlendi.
CHAN_CLEARED_VOICES
	Mod +v %s kanalında temizlendi.
CHAN_CLEARED_USERS
	%s kanalındaki tüm kullanıcılar atıldı.
CHAN_CLEARED_INVITES
	%s kanalıdaki tüm davetler kaldırıldı.

# GETPASS responses
CHAN_GETPASS_SYNTAX
	GETPASS kanaladı
CHAN_GETPASS_UNAVAILABLE
	GETPASS komutu devre dışı çünkü şifreleme(encryption) devrede.
CHAN_GETPASS_PASSWORD_IS
	%s kanalının şifresi %s.
	
# SENDPASS responses
CHAN_GETKEY_SYNTAX
	GETKEY channel
CHAN_GETKEY_NOKEY
	%s kanalı sifreli degil.
CHAN_GETKEY_KEY
	KEY %s %s

# SENDPASS responses
CHAN_SENDPASS_SYNTAX
	SENDPASS kanaladı
CHAN_SENDPASS_UNAVAILABLE
	SENDPASS komutu devre dışı çünkü şifreleme(encryption) devrede.
CHAN_SENDPASS_SUBJECT
	Kanal şifresi (%s)
CHAN_SENDPASS_HEAD
	Selam,
CHAN_SENDPASS_LINE_1
	%s kanalınızın şifresinin e-mail adresinize gönderilmesini istemişsiniz.
CHAN_SENDPASS_LINE_2
	Kanal Şifresi %s. Güvenlik nedenlerinden dolayı, şifrenizi bu maili aldıktan sonra değiştirirseniz iyi olur.
CHAN_SENDPASS_LINE_3
	Eğer bu mailin niye size gönderildiğini bilmiyorsanız, lütfen ciddiye almayın.
CHAN_SENDPASS_LINE_4
	LÜTFEN BU MAİLE CEVAP VERMEYİN!
CHAN_SENDPASS_LINE_5
	%s yönetimi.
CHAN_SENDPASS_OK
	%s kanalının şifresi gönderildi.

# FORBID responses
CHAN_FORBID_SYNTAX
	FORBID kanaladı [sebep]
CHAN_FORBID_SYNTAX_REASON
	FORBID kanaladı sebep
CHAN_FORBID_SUCCEEDED
	%s kanalının Kullanımı yasaklandı.
CHAN_FORBID_FAILED
	%s kanalının Kullanımı yasaklanamadı!

# Misc responses
CHAN_FORBID_REASON
	Bu kanal yasaklanmış durumda.

# SUSPEND responses
CHAN_SUSPEND_SYNTAX
	SUSPEND channel [reason]
CHAN_SUSPEND_SYNTAX_REASON
	SUSPEND channel reason
CHAN_SUSPEND_SUCCEEDED
	%s bu kanal kullanıma kapatıldı
CHAN_SUSPEND_FAILED
	%s kanalı için islem yapılamadi!
CHAN_SUSPEND_REASON
	Kanal kullanıma kapatılmış.

# UNSUSPEND responses
CHAN_UNSUSPEND_SYNTAX
	UNSUSPEND channel
CHAN_UNSUSPEND_ERROR
	' # ' işareti kanal isminde bulunmuyor.
CHAN_UNSUSPEND_SUCCEEDED
	%s kanalı kullanıma acildi.
CHAN_UNSUSPEND_FAILED
	%s kanalı kullanıma acilamadi!

# Misc responses
CHAN_EXCEPTED
	%s %s kanalında ayrıcalıklı konumda bulunuyor ve bu konum kaldırılmadan kişiyi kanaldan atamazsınız.

###########################################################################
#
# MemoServ messages
#
###########################################################################

# Automatic messages
MEMO_HAVE_NEW_MEMO
	1 yeni mesajınız var.
MEMO_HAVE_NEW_MEMOS
	%d yeni mesajınız var.
MEMO_TYPE_READ_LAST
	Okumak için %R%s READ LAST yazın.
MEMO_TYPE_READ_NUM
	Okumak için %R%s READ %d yazın.
MEMO_TYPE_LIST_NEW
	Listelemek için %R%s LIST NEW yazın.
MEMO_AT_LIMIT
	Dikkat: Maksimum mesaj sayınıza ulaştınız (%d).  Şimdiki mesajlarınızdan bir kaçını silmezseniz yeni mesaj alamayacaksınız.
MEMO_OVER_LIMIT
	Dikkat: Maksimum mesaj sayınızı aştınız (%d).  Şimdiki mesajlarınızdan bir kaçını silmezseniz yeni mesaj alamayacaksınız.
MEMO_X_MANY_NOTICE
	%d adet %s kanalına ait mesaj bulunuyor.
MEMO_X_ONE_NOTICE
	%d adet %s kanalına ait mesaj bulunuyor.
MEMO_NEW_X_MEMO_ARRIVED
	%s kanalında okunmamış bir mesaj bulunuyor.
	%R%s READ %s %d şeklinde mesajı okuyabilirsiniz.
MEMO_NEW_MEMO_ARRIVED
	%s nickinden yeni mesajınız var.
	Okumak için %R%s READ %d yazın.

# Multi-use responses
MEMO_HAVE_NO_MEMOS
	Hiç mesajınız yok.
MEMO_X_HAS_NO_MEMOS
	%s nickinin hiç mesajı yok.
MEMO_DOES_NOT_EXIST
	%d numaralı mesaj bulunamadı!
MEMO_LIST_NOT_FOUND
	Uyuşan mesaj bulunamadı.

# SEND responses
MEMO_SEND_SYNTAX
	SEND {nick | kanaladı} mesaj
MEMO_SEND_DISABLED
	Mesaj yollama geçici olarak devre dışıdır.
MEMO_SEND_PLEASE_WAIT
	Lütfen %d saniye SEND komutunu tekrar kullanmak için bekleyin.
MEMO_X_GETS_NO_MEMOS
	%s nicki mesaj alamaz.
MEMO_X_HAS_TOO_MANY_MEMOS
	%s nickinin limiti dolduğundan daha fazla mesaj alamaz.
MEMO_SENT
	%s nickine mesajınız gönderildi.
	
# CANCEL responses
MEMO_MASS_SENT
	Mesaj tüm kayıtlı kullanıcılara iletildi.
	
# STAFF responses
MEMO_STAFF_SYNTAX
	STAFF memo-text
	
# CANCEL responses
MEMO_CANCEL_SYNTAX
	CANCEL {nick | kanaladı}
MEMO_CANCEL_DISABLED
	Mesaj iptal etme geçici olarak devre dışıdır.
MEMO_CANCEL_NONE
	İptal edilecek mesaj yoktu.
MEMO_CANCELLED
	%s nickine gönderilen son mesaj iptal edildi.

# LIST responses
MEMO_LIST_SYNTAX
	LIST [kanaladı] [liste | NEW]
MEMO_HAVE_NO_NEW_MEMOS
	Hiç yeni mesajınız yok.
MEMO_X_HAS_NO_NEW_MEMOS
	%s nickinin hiç yeni mesajı yok.
MEMO_LIST_MEMOS
	%s nicki için mesajlar.  Okumak için: %R%s READ num yazın.
MEMO_LIST_NEW_MEMOS
	%s nicki için yeni mesajlar.  Okumak için: %R%s READ num yazın.
MEMO_LIST_CHAN_MEMOS
	%s kanali için mesajlar.  Okumak için: %R%s READ %s num yazın.
MEMO_LIST_CHAN_NEW_MEMOS
	%s kanali için yeni mesajlar.  Okumak için: %R%s READ %s num yazın.
MEMO_LIST_HEADER
	 Num  Gönderen          Tarih/Zaman
MEMO_LIST_FORMAT
	%c%3d  %-16s  %s

# READ responses
MEMO_READ_SYNTAX
	READ [kanaladı] {liste | LAST | NEW}
MEMO_HEADER
	%d nolu mesaj %s nickinden (%s).  Silmek için: %R%s DEL %d yazın.
MEMO_CHAN_HEADER
	%d nolu mesaj %s nickinden (%s).  Silmek için: %R%s DEL %s %d yazın.
MEMO_TEXT
	%s

# DEL responses
MEMO_DEL_SYNTAX
	DEL [kanaladı] {num | liste | ALL}
MEMO_DELETED_NONE
	Hiç mesaj silinmedi.
MEMO_DELETED_ONE
	%d nolu mesaj silindi.
MEMO_DELETED_SEVERAL
	%s mesajları silindi.
MEMO_DELETED_ALL
	Tüm mesajlarınız silindi.

# SET responses
MEMO_CHAN_DELETED_ALL
	%s kanalına ait tüm mesajlar silindi.

# SET responses
MEMO_SET_SYNTAX
	SET özellik parametre
MEMO_SET_DISABLED
	MemoServ'ün SET komutu geçici olarak devre dışıdır.
MEMO_SET_UNKNOWN_OPTION
	Varolmayan SET özelliği: %s.

# SET NOTIFY responses
MEMO_SET_NOTIFY_SYNTAX
	SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}
MEMO_SET_NOTIFY_ON
	%s sizi yeni mesajlar için bağlandığınızda veya mesajlar size gönderildiği anda uyaracak.
MEMO_SET_NOTIFY_LOGON
	%s sizi yeni mesajlar için bağlandığınızda veya AWAY modundan dönüşte uyaracak.
MEMO_SET_NOTIFY_NEW
	%s sizi yeni mesajlar için size gönderildiği anda uyaracak.
MEMO_SET_NOTIFY_OFF
	%s sizi yeni mesajlar için uyarmayacak.

# SET LIMIT responses
MEMO_SET_NOTIFY_MAIL
	Yeni mesajlar hakkında mail adresiniz aracılıgı ile bilgilendirileceksiniz.
MEMO_SET_NOTIFY_NOMAIL
	Mail yolu ile bilgilendirme kapatıldı.
MEMO_SET_NOTIFY_INVALIDMAIL
	Rumuzunuza ait gecerli bir mail adresi bulunmuyor.

# SET LIMIT responses
MEMO_SET_LIMIT_SYNTAX
	SET LIMIT [kanaladı] limit
MEMO_SET_LIMIT_SERVADMIN_SYNTAX
	SET LIMIT [kullanıcı | kanaladı] {limit | NONE} [HARD]
MEMO_SET_YOUR_LIMIT_FORBIDDEN
	Mesaj limitinizi belirlemeye izinli değilsiniz.
MEMO_SET_LIMIT_FORBIDDEN
	%s nickinin mesaj limiti değiştirelemez.
MEMO_SET_YOUR_LIMIT_TOO_HIGH
	Mesaj limitinizi %d sayısından daha fazla yapamazsınız.
MEMO_SET_LIMIT_TOO_HIGH
	%s nickinin mesaj limitini %d sayısından daha fazla yapamazsınız.
MEMO_SET_LIMIT_OVERFLOW
	Mesaj limiti çok fazla; limit %d olarak değiştiriliyor.
MEMO_SET_YOUR_LIMIT
	Mesaj limitiniz %d olarak ayarlandı.
MEMO_SET_YOUR_LIMIT_ZERO
	Limitiniz sıfır olduğundan artık mesaj alamayacaksınız.
MEMO_UNSET_YOUR_LIMIT
	Mesaj limitiniz kapatıldı.
MEMO_SET_LIMIT
	%s nickinin mesaj limiti %d olarak ayarlandı.
MEMO_SET_LIMIT_ZERO
	%s nickinin mesaj limiti 0 olarak ayarlandı.
MEMO_UNSET_LIMIT
	%s nickinin mesaj limiti kapatıldı.

# INFO responses
MEMO_INFO_SYNTAX
	INFO [kanaladı]
MEMO_INFO_SERVADMIN_SYNTAX
	INFO [nick | kanaladı]
MEMO_INFO_NO_MEMOS
	Şu an hiç mesajınız yok.
MEMO_INFO_MEMO
	Şu an 1 mesajınız var.
MEMO_INFO_MEMO_UNREAD
	Şu an 1 mesajınız var, ve henüz okunmadı.
MEMO_INFO_MEMOS
	Şu an %d mesajınız var.
MEMO_INFO_MEMOS_ONE_UNREAD
	Şu an %d mesajınız var, 1 tanesi okunmamış.
MEMO_INFO_MEMOS_SOME_UNREAD
	Şu an %d mesajınız var, %d tanesi okunmamış.
MEMO_INFO_MEMOS_ALL_UNREAD
	Şu an %d mesajınız var; hiçbiri okunmamış.
MEMO_INFO_LIMIT
	Mesaj limitiniz %d.
MEMO_INFO_HARD_LIMIT
	Mesaj limitiniz %d, ve değiştirilemez.
MEMO_INFO_LIMIT_ZERO
	Mesaj limitiniz 0; hiç mesaj alamayacaksınız.
MEMO_INFO_HARD_LIMIT_ZERO
	Mesaj limitiniz 0; hiç yeni mesaj alamayacaksınız.  Bu limiti değiştiremezsiniz.
MEMO_INFO_NO_LIMIT
	Saklayabileceğiniz mesaj sayısında limit yok.
MEMO_INFO_NOTIFY_OFF
	Yeni mesajlar için uyarılmayacaksınız.
MEMO_INFO_NOTIFY_ON
	Yeni mesajlar için bağlandığınızda ve size ulaştığında uyarılacaksınız.
MEMO_INFO_NOTIFY_RECEIVE
	Yeni mesajlar için ulaştıkları anda uyarılacaksınız.
MEMO_INFO_NOTIFY_SIGNON
	Yeni mesajlar için bağlandığınızda uyarılacaksınız.
MEMO_INFO_X_NO_MEMOS
	%s nickinin şu an hiç mesajı yok.
MEMO_INFO_X_MEMO
	%s nickinin şu an 1 mesajı var.
MEMO_INFO_X_MEMO_UNREAD
	%s nickinin şu an 1 mesajı var, ve daha okunmamış.
MEMO_INFO_X_MEMOS
	%s nickinin şu an %d mesajı var.
MEMO_INFO_X_MEMOS_ONE_UNREAD
	%s nickinin şu an %d mesajı var, 1 tanesi okunmamış.
MEMO_INFO_X_MEMOS_SOME_UNREAD
	%s nickinin şu an %d mesajı var, %d tanesi okunmamış.
MEMO_INFO_X_MEMOS_ALL_UNREAD
	%s nickinin şu an %d mesajı var; hiçbiri okunmamış.
MEMO_INFO_X_LIMIT
	%s nickinin mesaj limiti %d.
MEMO_INFO_X_HARD_LIMIT
	%s nickinin mesaj limiti %d, ve değiştirilemez.
MEMO_INFO_X_NO_LIMIT
	%s nickinin mesaj limiti yok.
MEMO_INFO_X_NOTIFY_OFF
	%s yeni mesajlar için uyarılmayacak.
MEMO_INFO_X_NOTIFY_ON
	%s yeni mesajlar için bağlandığında ve mesajlar ulaştığı anda uyarılacak.
MEMO_INFO_X_NOTIFY_RECEIVE
	%s yeni mesajlar ulaştığı anda uyarılacak.
MEMO_INFO_X_NOTIFY_SIGNON
	%s yeni mesajlar için bağlandığında uyarılacak.
	
###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
MEMO_MAIL_SUBJECT
	Yeni CevrimDışı Mesaj Bildirimi
MEMO_MAIL_TEXT1
	Nerhabalar sayın %s ,
MEMO_MAIL_TEXT2
	Bu mail yeni gönderilen Cevrimdısı mesajları bilgilendirmek amaci ile gonderilmis bir e-postadır. Mesajı yollayan %s. Mesaj numaranız %d.
MEMO_MAIL_TEXT3
	Mesaj icerigi:

###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
MEMO_RSEND_PLEASE_WAIT
	RSEND komutunu kullanmadan önce %d saniye bekleyiniz sonra tekrar deneyiniz.
MEMO_RSEND_DISABLED
	Uzgunuz RSEND bu sunucuda aktif degil.
MEMO_RSEND_SYNTAX
	RSEND {nick | channel} memo-text
MEMO_RSEND_NICK_MEMO_TEXT
	[auto-memo] Gondermis oldugunuz mesaj okundu.
MEMO_RSEND_CHAN_MEMO_TEXT
	[auto-memo] %s na gondermis oldugunuz mesaj okundu.
MEMO_RSEND_USER_NOTIFICATION
	%s rumuzuna göndermis oldugu mesajın okudugunu bildiren bir bildirim
	yollanacaktır.

###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
MEMO_CHECK_SYNTAX
	CHECK nickname
MEMO_CHECK_NOT_READ
	%s rumuzuna son yollanan mesaj (yollayan %s) okunmamış.
MEMO_CHECK_READ
	%s rumuzuna son yollanan mesaj (yollayan %s) okunmus durumda.
MEMO_CHECK_NO_MEMO
	%s rumuzunun sizin tarafınızdan yollanmıs bir mesajı bulunmuyor.

###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
MEMO_NO_RSEND_SELF
	Kendinize yolladıgınız mesajların durumunu kontrol edemezsiniz.

###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
BOT_DOES_NOT_EXIST
	Bot %s mevcut değil.
BOT_NOT_ASSIGNED
	Bu komutu kullanmadan önce kanala bir bot sokmalısınız.
	Daha fazla bilgi için %R%S HELP ASSIGN yazın.
BOT_NOT_ON_CHANNEL
	Bot %s kanalında değil.
	
# Kick reasons (must be a single line)
BOT_REASON_BADWORD
	%s kelimesinin bu kanalda kullanılması yasaktır!
BOT_REASON_BADWORD_GENTLE
	Konuşmalarına dikkat et!
BOT_REASON_BOLD
	Bu kanalda kalın yazı kullanılması yasaktır!
BOT_REASON_CAPS
	Lütfen büyük harf kullanmayın!
BOT_REASON_COLOR
	Lütfen bu kanalda renkli yazı kullanmayın!
BOT_REASON_FLOOD
	Flood yapma!
BOT_REASON_REPEAT
	Kendini tekrar etme!
BOT_REASON_REVERSE
	Lütfen bu kanalda Ctrl+R ile yazılmış yazı kullanmayın!
BOT_REASON_UNDERLINE
	Lütfen bu kanalda altı çizili yazı kullanmayın!

# !seen replies
BOT_SEEN_BOT
	Beni buldun, %s!
BOT_SEEN_YOU
	Kendinimi arıyorsun, %s?
BOT_SEEN_ON_CHANNEL
	%s şu anda kanalda!
BOT_SEEN_ON_CHANNEL_AS
	%s şu anda kanalda (%s olarak) ! 
BOT_SEEN_ON
	%s %s önce buradaydı.
BOT_SEEN_NEVER
	%s diye birini bu kanalda hiç görmedim.
BOT_SEEN_UNKNOWN
	%s şahsının kim olduğunu bilmiyorum.

# BOT responses
BOT_BOT_SYNTAX
	BOT ADD nick user host gerçekismi
	BOT CHANGE eskinick yeninick [user [host [gerçekismi]]]
	BOT DEL nick
BOT_BOT_ALREADY_EXISTS
	%s nickli bot zaten var.
BOT_BOT_CREATION_FAILED
	Bot yaratma başarısız.
BOT_BOT_READONLY
	Botta değişiklik yapma geçici olarak devre dışı.
BOT_BOT_ADDED
	%s!%s@%s (%s) bot listesine eklendi.
BOT_BOT_ANY_CHANGES
	Eski bilgiler şimdikilerle aynı.
BOT_BOT_CHANGED
	%s botu %s!%s@%s (%s) olarak değiştirildi.
BOT_BOT_DELETED
	%s botu silindi.
	
# BOTLIST responses
BOT_BOTLIST_HEADER
	Bot listesi:
BOT_BOTLIST_PRIVATE_HEADER
	IRCoplara ayrilmis botlar:
BOT_BOTLIST_FOOTER
	%d bot mevcut.
BOT_BOTLIST_EMPTY
	Şu an mevcut bot yok.
	Server adminine bir tane yaratmasını söyleyin!
	
# ASSIGN responses
BOT_ASSIGN_SYNTAX
	ASSIGN kanaladı nick
BOT_ASSIGN_READONLY
	Kanala bot sokma geçici olarak devre dışı.
BOT_ASSIGN_ALREADY
	%s botu zaten %s kanalında bulunuyor.
BOT_ASSIGN_ASSIGNED
	%s botu %s kanalına sokuldu.
	
# UNASSIGN responses
BOT_UNASSIGN_SYNTAX
	UNASSIGN kanaladı
BOT_UNASSIGN_UNASSIGNED
	%s kanalından bot çıkarıldı.
	
# INFO responses
BOT_INFO_SYNTAX
	INFO {kanaladı | nick}
BOT_INFO_NOT_FOUND
	%s geçerli bir bot yada kanal değil.
BOT_INFO_BOT_HEADER
	%s botunun bilgileri:
BOT_INFO_BOT_MASK
	               Mask : %s@%s
BOT_INFO_BOT_REALNAME
	        Gerçek ismi : %s
BOT_INFO_BOT_CREATED
	          Yaratılış : %s
BOT_INFO_BOT_USAGE
	Kullanılan kanallar : %d kanalda
BOT_INFO_BOT_OPTIONS
	    Ayarlar : %s
BOT_INFO_OPT_PRIVATE
	Özel
BOT_INFO_CHAN_HEADER
	%s kanalının bilgileri:
BOT_INFO_CHAN_BOT
	           Botun nicki : %s
BOT_INFO_CHAN_BOT_NONE
	           Botun nicki : şu an yok.
BOT_INFO_CHAN_KICK_BADWORDS
	          Küfürde atma : %s
BOT_INFO_CHAN_KICK_BADWORDS_BAN
	          Küfürde atma : %s (%d tanede ban)
BOT_INFO_CHAN_KICK_BOLDS
	     Kalın yazıda atma : %s
BOT_INFO_CHAN_KICK_BOLDS_BAN
	     Kalın yazıda atma : %s (%d tanede ban)
BOT_INFO_CHAN_KICK_CAPS_ON
	     Büyük yazıda atma : %s (minimum %d/%d%%)
BOT_INFO_CHAN_KICK_CAPS_BAN
	     Büyük yazıda atma : %s (%d tanede ban; minimum %d/%d%%)
BOT_INFO_CHAN_KICK_CAPS_OFF
	     Büyük yazıda atma : %s
BOT_INFO_CHAN_KICK_COLORS
	    Renkli yazıda atma : %s
BOT_INFO_CHAN_KICK_COLORS_BAN
	    Renkli yazıda atma : %s (%d tanede ban)
BOT_INFO_CHAN_KICK_FLOOD_ON
	          Floodda atma : %s (%d sıra %ds)
BOT_INFO_CHAN_KICK_FLOOD_BAN
	          Floodda atma : %s (%d tanede ban; %d sıra %ds)
BOT_INFO_CHAN_KICK_FLOOD_OFF
	          Floodda atma : %s
BOT_INFO_CHAN_KICK_REPEAT_ON
	         Tekrarda atma : %s (%d kez)
BOT_INFO_CHAN_KICK_REPEAT_BAN
	         Tekrarda atma : %s (%d tanede ban; %d kez)
BOT_INFO_CHAN_KICK_REPEAT_OFF
	         Tekrarda atma : %s
BOT_INFO_CHAN_KICK_REVERSES
	        Ctrl+R de atma : %s
BOT_INFO_CHAN_KICK_REVERSES_BAN
	        Ctrl+R de atma : %s (%d tanede ban)
BOT_INFO_CHAN_KICK_UNDERLINES
	Altıçizili yazıda atma : %s
BOT_INFO_CHAN_KICK_UNDERLINES_BAN
	Altıçizili yazıda atma : %s (%d tanede ban)
BOT_INFO_ACTIVE
	Aktif
BOT_INFO_INACTIVE
	Kapalı
BOT_INFO_CHAN_OPTIONS
	         Özellikler : %s
BOT_INFO_OPT_DONTKICKOPS
	Opları koruma
BOT_INFO_OPT_DONTKICKVOICES
	Voiceları koruma
BOT_INFO_OPT_FANTASY
	Fantazi
BOT_INFO_OPT_GREET
	Karşılama
BOT_INFO_OPT_NOBOT
	Bot yok
BOT_INFO_OPT_SYMBIOSIS
	Gerçek bot
BOT_INFO_OPT_NONE
	YOK
	
# SET responses
BOT_SET_SYNTAX
	SET kanaladı özellik ayarlar
BOT_SET_DISABLED
	Bot özellik ayarı geçici olarak devre dışı.
BOT_SET_UNKNOWN
	Varolmayan özellik %s.
	Daha fazla bilgi için %R%S HELP SET yazın.
	
# SET DONTKICKOPS messages
BOT_SET_DONTKICKOPS_SYNTAX
	SET kanaladı DONTKICKOPS {ON|OFF}
BOT_SET_DONTKICKOPS_ON
	Bot %s kanalında opları atmayacak .
BOT_SET_DONTKICKOPS_OFF
	Bot %s kanalında oplarıda atacak.
	
# SET DONTKICKVOICES messages
BOT_SET_DONTKICKVOICES_SYNTAX
	SET kanaladı DONTKICKVOICES {ON|OFF}
BOT_SET_DONTKICKVOICES_ON
	Bot %s kanalında voiceları atmayacak.
BOT_SET_DONTKICKVOICES_OFF
	Bot %s kanalında voicelarıda atacak.

# SET FANTASY messages
BOT_SET_FANTASY_SYNTAX
	SET kanaladı FANTASY {ON|OFF}
BOT_SET_FANTASY_ON
	Fantazi modu %s kanalında AKTİF.
BOT_SET_FANTASY_OFF
	Fantazi modu %s kanalında KAPALI.
	
# SET GREET messages
BOT_SET_GREET_SYNTAX
	SET kanaladı GREET {ON|OFF}
BOT_SET_GREET_ON
	Karşılama modu %s kanalında AKTİF.
BOT_SET_GREET_OFF
	Karşılama modu %s kanalında KAPALI.

# SET NOBOT
BOT_SET_NOBOT_SYNTAX
	SET kanaladı NOBOT {ON|OFF}
BOT_SET_NOBOT_ON
	Bot yok modu %s kanalı için AKTİF.
BOT_SET_NOBOT_OFF
	Bot yok modu %s kanalı için KAPALI.

# SET PRIVATE
BOT_SET_PRIVATE_SYNTAX
	SET kanaladi PRIVATE {ON|OFF}
BOT_SET_PRIVATE_ON
	%s botunun özel seçenegi artik AKTIF.
BOT_SET_PRIVATE_OFF
	%s botunun özel seçenegi artik KAPALI.
	
# SET SYMBIOSIS
BOT_SET_SYMBIOSIS_SYNTAX
	SET kanaladı SYMBIOSIS {ON|OFF}
BOT_SET_SYMBIOSIS_ON
	Gerçek bot modu %s kanalında AKTİF.
BOT_SET_SYMBIOSIS_OFF
	Gerçek bot modu %s kanalında KAPALI.
	
# KICK responses
BOT_KICK_SYNTAX
	KICK kanaladı özellik {ON|OFF} [ayarlar]
BOT_KICK_DISABLED
	Atma ayarları geçici olarak devre dışı.
BOT_KICK_UNKNOWN
	Varolmayan özellik %s.
	Daha fazla bilgi için %R%S HELP KICK yazın.
BOT_KICK_BAD_TTB
	%s değeri kullanılamaz.
BOT_KICK_BADWORDS_ON
	Bot şimdi küfürlerde atacak. BADWORDS komutunu kullanarak
	listeye küfür ekleyip silebilirsiniz.
BOT_KICK_BADWORDS_ON_BAN
	Bot şimdi küfürlerde atacak, ve %d atma sonrasında 
	aynı kullanıcıyı banlayacak. BADWORDS komutunu
	kullanarak küfür ekleyip çıkarabilirsiniz.
BOT_KICK_BADWORDS_OFF
	Bot artık küfürlerde atmayacak.
BOT_KICK_BOLDS_ON
	Bot şimdi kalın yazıda atacak.
BOT_KICK_BOLDS_ON_BAN
	Bot şimdi kalın yazıda atacak, ve 
	%d atma sonrasında aynı kullanıcıyı banlayacak.
BOT_KICK_BOLDS_OFF
	Bot artık kalın yazıda atmayacak.
BOT_KICK_CAPS_ON
	Bot şimdi büyük yazıda atacak(Tüm mesajın en az
	%d karakterini ve %d%% kadarını içermelidir).
BOT_KICK_CAPS_ON_BAN
	Bot şimdi büyük yazıda atacak(Tüm mesajın en az
	%d karakterini ve %d%% kadarını içermelidir), ve 
	%d atma sonrasında aynı kullanıcıyı banlayacak.
BOT_KICK_CAPS_OFF
	Bot artık büyük yazıda atmayacak.
BOT_KICK_COLORS_ON
	Bot şimdi renkli yazıda atacak.
BOT_KICK_COLORS_ON_BAN
	Bot şimdi renkli yazıda atacak, ve 
	%d atma sonrasında aynı kullanıcıyı banlayacak.
BOT_KICK_COLORS_OFF
	Bot artık renkli yazıda atmayacak.
BOT_KICK_FLOOD_ON
	Bot şimdi text floodda atacak(%d sıra %d saniyede).
BOT_KICK_FLOOD_ON_BAN
	Bot şimdi text floodda atacak(%d sira %d saniyede), ve 
	%d atma sonrasında aynı kullanıcıyı banlayacak.
BOT_KICK_FLOOD_OFF
	Bot artık text floodda atmayacak.
BOT_KICK_REPEAT_ON
	Bot şimdi tekrarda atacak(kullanıcı %d kez
	aynı şeyi söylerse).
BOT_KICK_REPEAT_ON_BAN
	Bot şimdi tekrarda atacak(kullanıcı %d kez
	aynı şeyi söylerse), ve %d atma sonrasında
	aynı kullanıcıyı banlayacak.
BOT_KICK_REPEAT_OFF
	Bot artık tekrarda atmayacak.
BOT_KICK_REVERSES_ON
	Bot şimdi Ctrl+R de atacak.
BOT_KICK_REVERSES_ON_BAN
	Bot şimdi Ctrl+R de atacak, ve %d atma sonrasında 
	aynı kullanıcıyı banlayacak.
BOT_KICK_REVERSES_OFF
	Bot artık Ctrl+R de atmayacak.
BOT_KICK_UNDERLINES_ON
	Bot şimdi altıçizili yazıda atacak.
BOT_KICK_UNDERLINES_ON_BAN
	Bot şimdi altıçizili yazıda atacak, ve %d atma 
	sonrasında aynı kullanıcıyı banlayacak.
BOT_KICK_UNDERLINES_OFF
	Bot artık altıçizili yazıda atmayacak.
	
# BADWORDS messages
BOT_BADWORDS_SYNTAX
	BADWORDS kanaladı {ADD|DEL|LIST|CLEAR} [nick | kayıt-listesi]
BOT_BADWORDS_DISABLED
	Kanalın küfür listesinde değişiklik yapma geçici olarak devre dışıdır.
BOT_BADWORDS_REACHED_LIMIT
	Bir kanalda sadece %d tane küfür kaydı olabilir.
BOT_BADWORDS_ALREADY_EXISTS
	%s zaten %s kanalının küfür listesinde var.
BOT_BADWORDS_ADDED
	%s %s kanalının küfür listesine eklendi.
BOT_BADWORDS_NO_SUCH_ENTRY
	(#%d) şeklinde bir kayıt %s kanalının küfür listesinde bulunamadı.
BOT_BADWORDS_NOT_FOUND
	%s %s kanalının küfür listesinde bulunamadı.
BOT_BADWORDS_NO_MATCH
	Uyuşan kayıt %s kanalının küfür listesinde bulunamadı.
BOT_BADWORDS_DELETED
	%s %s kanalının küfür listesinden çıkarıldı.
BOT_BADWORDS_DELETED_ONE
	%s kanalının küfür listesinden 1 kayıt silindi.
BOT_BADWORDS_DELETED_SEVERAL
	Deleted %d entries from %s bad words list.
BOT_BADWORDS_LIST_EMPTY
	%s kanalının küfür listesi boş.
BOT_BADWORDS_LIST_HEADER
	%s kanalının küfür listesi:
	  Sayı   Kelime                           Tipi
BOT_BADWORDS_LIST_FORMAT
	  %3d   %-30s %s
BOT_BADWORDS_CLEAR
	Küfür listesi şimdi boş.

# SAY responses
BOT_SAY_SYNTAX
	SAY kanaladı yazı

# ACT responses
BOT_ACT_SYNTAX
	ACT kanaladı yazı

###########################################################################
#
# OperServ messages
#
###########################################################################

# General messages
BOT_EXCEPT
	Kullanıcı kanal ayrıcalıklı kullanıcıları listesinde bulunuyor.

###########################################################################
#
# OperServ messages
#
###########################################################################

# General messages
BOT_BAD_NICK
	Bot rumuzu geçerli karakterlerden oluşmalıdır.
BOT_BAD_HOST
	Bot'un adresi geçerli karakterlerden oluşmalıdır.
BOT_BAD_IDENT
	Bot ident'i geçerli karakterlerden oluşmalıdır..
BOT_LONG_IDENT
	Bot Ident'i en fazla %d karakter olmalıdır.
BOT_LONG_HOST
	Bot adresi en fazla %d karakter olmalıdır.

###########################################################################
#
# OperServ messages
#
###########################################################################

# General messages
OPER_BOUNCY_MODES
	Servisler mod değiştiremiyor.  Serverin doğru ayarlandığına emin olun.
OPER_BOUNCY_MODES_U_LINE
	Servisler mod değiştiremiyor.  Serverin U:line larının doğru ayarlandığına emin olun.

# GLOBAL responses
OPER_GLOBAL_SYNTAX
	GLOBAL mesaj

# STATS responses
OPER_STATS_UNKNOWN_OPTION
	Varolmayan STATS özelliği: %s.
OPER_STATS_CURRENT_USERS
	Şu anki kullanıcı sayısı: %d (%d op)
OPER_STATS_MAX_USERS
	Maximum kullanıcı sayısı: %d (%s)
# This is ugly, but at least it's language-portable...
# Note that you can include seconds in any of these--my personal preference
# is to only give resolution to the nearest minute when uptime is one hour
# or more, but just add a %d to get seconds as well.
OPER_STATS_UPTIME_DHMS
	Servisler %d gündür çalışıyor, %02d:%02d
OPER_STATS_UPTIME_1DHMS
	Servisler %d gündür çalışıyor, %02d:%02d
OPER_STATS_UPTIME_HMS
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_HM1S
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_H1MS
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_H1M1S
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_1HMS
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_1HM1S
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_1H1MS
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_1H1M1S
	Servisler %d saat, %d dakikadır çalışıyor.
OPER_STATS_UPTIME_MS
	Servisler %d dakika, %d saniyedir çalışıyor.
OPER_STATS_UPTIME_M1S
	Servisler %d dakika, %d saniyedir çalışıyor.
OPER_STATS_UPTIME_1MS
	Servisler %d dakika, %d saniyedir çalışıyor.
OPER_STATS_UPTIME_1M1S
	Servisler %d dakika, %d saniyedir çalışıyor.
OPER_STATS_BYTES_READ
	Okunan veri  : %5d kB
OPER_STATS_BYTES_WRITTEN
	Yazılan veri : %5d kB
OPER_STATS_USER_MEM
	Kullanıcı  : %6d kayıt, %5d kB
OPER_STATS_CHANNEL_MEM
	Kanal      : %6d kayıt, %5d kB
OPER_STATS_GROUPS_MEM
	NS Groups     : %6d records, %5d kB
OPER_STATS_ALIASES_MEM
	NS Aliases    : %6d records, %5d kB
OPER_STATS_CHANSERV_MEM
	ChanServ   : %6d kayıt, %5d kB
OPER_STATS_BOTSERV_MEM
	BotServ    : %6d kayıt, %5d kB
OPER_STATS_HOSTSERV_MEM
	HostServ      : %6d records, %5d kB
OPER_STATS_OPERSERV_MEM
	OperServ   : %6d kayıt, %5d kB
OPER_STATS_SESSIONS_MEM
	Oturumlar  : %6d kayıt, %5d kB
OPER_STATS_AKILL_COUNT
	Şu anki AKILL sayısı: %d
OPER_STATS_AKILL_EXPIRE_DAYS
	Varsayılan AKILL zaman aşımı: %d gün
OPER_STATS_AKILL_EXPIRE_DAY
	Varsayılan AKILL zaman aşımı: 1 gün
OPER_STATS_AKILL_EXPIRE_HOURS
	Varsayılan AKILL zaman aşımı: %d saat
OPER_STATS_AKILL_EXPIRE_HOUR
	Varsayılan AKILL zaman aşımı: 1 saat
OPER_STATS_AKILL_EXPIRE_MINS
	Varsayılan AKILL zaman aşımı: %d dakika
OPER_STATS_AKILL_EXPIRE_MIN
	Varsayılan AKILL zaman aşımı: 1 dakika
OPER_STATS_AKILL_EXPIRE_NONE
	Varsayılan AKILL zaman aşımı: zaman aşımı yok
OPER_STATS_SGLINE_COUNT
	Şu anki SGLINE sayısı: %d
OPER_STATS_SGLINE_EXPIRE_DAYS
	Varsayılan SGLINE zaman aşımı süresi: %d gün
OPER_STATS_SGLINE_EXPIRE_DAY
	Varsayılan SGLINE zaman aşımı süresi: 1 gün
OPER_STATS_SGLINE_EXPIRE_HOURS
	Varsayılan SGLINE zaman aşımı süresi: %d saat
OPER_STATS_SGLINE_EXPIRE_HOUR
	Varsayılan SGLINE zaman aşımı süresi: 1 saat
OPER_STATS_SGLINE_EXPIRE_MINS
	Varsayılan SGLINE zaman aşımı süresi: %d dakika
OPER_STATS_SGLINE_EXPIRE_MIN
	Varsayılan SGLINE zaman aşımı süresi: 1 dakika
OPER_STATS_SGLINE_EXPIRE_NONE
	Varsayılan SGLINE zaman aşımı süresi: Zaman aşımı yok
OPER_STATS_SQLINE_COUNT
	Su anki SQLINE sayisi: %d
OPER_STATS_SQLINE_EXPIRE_DAYS
	Varsayilan SQLINE zaman asimi süresi: %d gün
OPER_STATS_SQLINE_EXPIRE_DAY
	Varsayilan SQLINE zaman asimi süresi: 1 gün
OPER_STATS_SQLINE_EXPIRE_HOURS
	Varsayilan SQLINE zaman asimi süresi: %d saat
OPER_STATS_SQLINE_EXPIRE_HOUR
	Varsayilan SQLINE zaman asimi süresi: 1 saat
OPER_STATS_SQLINE_EXPIRE_MINS
	Varsayilan SQLINE zaman asimi süresi: %d dakika
OPER_STATS_SQLINE_EXPIRE_MIN
	Varsayilan SQLINE zaman asimi süresi: 1 dakika
OPER_STATS_SQLINE_EXPIRE_NONE
	Varsayilan SQLINE zaman asimi süresi: Zaman asimi yok
OPER_STATS_SZLINE_COUNT
	Şu anki SZLINE sayısı: %d
OPER_STATS_SZLINE_EXPIRE_DAYS
	Varsayılan SZLINE zaman aşımı süresi: %d gün
OPER_STATS_SZLINE_EXPIRE_DAY
	Varsayılan SZLINE zaman aşımı süresi: 1 gün
OPER_STATS_SZLINE_EXPIRE_HOURS
	Varsayılan SZLINE zaman aşımı süresi: %d saat
OPER_STATS_SZLINE_EXPIRE_HOUR
	Varsayılan SZLINE zaman aşımı süresi: 1 saat
OPER_STATS_SZLINE_EXPIRE_MINS
	Varsayılan SZLINE zaman aşımı süresi: %d dakika
OPER_STATS_SZLINE_EXPIRE_MIN
	Varsayılan SZLINE zaman aşımı süresi: 1 dakika
OPER_STATS_SZLINE_EXPIRE_NONE
	Varsayılan SZLINE zaman aşımı süresi: Zaman aşımı yok
OPER_STATS_RESET
	İstatistikler resetlendi.

# MODE responses
OPER_STATS_UPLINK_SERVER
	Baglı bulunulan sunucu: %s
OPER_STATS_UPLINK_CAPAB
	Baglı Ağın ozellikleri: %s
OPER_STATS_UPLINK_SERVER_COUNT
	Bulunan sunucular: %d

# MODE responses
OPER_MODE_SYNTAX
	MODE kanaladı modlar

# CLEARMODES responses
OPER_UMODE_SYNTAX
	UMODE nick modes

# OLINE responses
OPER_UMODE_SUCCESS
	%s rumuzunun modları değiştirildi.
OPER_UMODE_CHANGED
	%s nickli kullanıcı sizin modlarınızı değiştirdi.

# OLINE responses
OPER_OLINE_SYNTAX
	OLINE nick flags
OPER_OLINE_SUCCESS
	%s yetkileri %s rumuzu icin eklendi.

# CLEARMODES responses
OPER_OLINE_IRCOP
	Su anda irc operatoru konumuna gectiniz.

# CLEARMODES responses
OPER_CLEARMODES_SYNTAX
	CLEARMODES kanaladı [ALL]
OPER_CLEARMODES_DONE
	%s kanalında modlar ve banlar temizlendi.
OPER_CLEARMODES_ALL_DONE
	%s kanalındaki tüm modlar temizlendi.


# KICK responses
OPER_KICK_SYNTAX
	KICK kanaladı kullanıcı sebep

# ADMIN responses
OPER_SVSNICK_SYNTAX
	SVSNICK nick newnick 
OPER_SVSNICK_NEWNICK
	%s rumuzu %s olarak degistirildi.
	
# ADMIN responses
OPER_ADMIN_SYNTAX
	ADMIN {ADD|DEL|LIST|CLEAR} [nick | kayıt-listesi]
OPER_ADMIN_SKELETON
	Servisler iskelet modunda(skeleton); ADMIN komutu devre dışı.
OPER_ADMIN_EXISTS
	%s zaten Servis adminleri listesinde.
OPER_ADMIN_REACHED_LIMIT
	Sadece %d tane servis admini olabilir.
OPER_ADMIN_ADDED
	%s Servis adminleri listesine eklendi.
OPER_ADMIN_NOT_FOUND
	%s Servisler admin listesinde bulunamadı.
OPER_ADMIN_NO_MATCH
	Servis adminleri listesinde uyuşan kayıt yok.
OPER_ADMIN_DELETED
	%s servis adminleri listesinden silindi.
OPER_ADMIN_DELETED_ONE
	Servis adminleri listesinden 1 kayıt silindi.
OPER_ADMIN_DELETED_SEVERAL
	Servis adminleri listesinden %d kayıt silindi.
OPER_ADMIN_LIST_EMPTY
	Servis adminleri listesi boş.
OPER_ADMIN_LIST_HEADER
	Servis adminleri listesi:
	  Num   Nick
OPER_ADMIN_LIST_FORMAT
	  %3d   %s
OPER_ADMIN_CLEAR
	Servis adminleri listesi temizlendi.
OPER_ADMIN_MOVED
	%s rumuzu servis adminleri listesine alındı.

# OPER responses
OPER_OPER_SYNTAX
	OPER {ADD|DEL|LIST|CLEAR} [nick | kayıt-listesi]
OPER_OPER_SKELETON
	Servisler iskelet modunda(skeleton); OPER komutu devre dışı.
OPER_OPER_EXISTS
	%s zaten servis operatörleri listesinde.
OPER_OPER_REACHED_LIMIT
	Sadece %d tane servis operatörü olabilir.
OPER_OPER_ADDED
	%s servis operatörleri listesine eklendi.
OPER_OPER_NOT_FOUND
	%s servis operatörleri listesinde bulunamadı.
OPER_OPER_NO_MATCH
	Servis operatörleri listesinde uyuşan kayıt bulunamadı.
OPER_OPER_DELETED
	%s servis operatörleri listesinden silindi.
OPER_OPER_DELETED_ONE
	Servis operatörleri listesinden 1 kayıt silindi.
OPER_OPER_DELETED_SEVERAL
	Servis operatörleri listesinden %d kayıt silindi.
OPER_OPER_LIST_EMPTY
	Servis operatörleri listesi boş.
OPER_OPER_LIST_HEADER
	Servis operatörleri listesi:
	  Num   Nick
OPER_OPER_LIST_FORMAT
	  %3d   %s
OPER_OPER_CLEAR
	Servis operatörleri listesi temizlendi.
OPER_OPER_MOVED
	%s rumuzu servis operatorleri listesine alındı.

# AKILL responses
OPER_AKILL_SYNTAX
	AKILL {ADD | DEL | LIST | VIEW | CLEAR} [[+zamanaşımı] {mask | kayıt-no} [sebep]]
OPER_AKILL_EXISTS
	%s zaten AKILL listesinde.
OPER_AKILL_ALREADY_COVERED
	%s zaten %s tarafından değiştirildi.
OPER_AKILL_REACHED_LIMIT
	Sadece %d kişi AKILL listesinde olabilir.
OPER_AKILL_NO_NICK
	Hatırlatma: AKILL maskına nick eklenemez; AKILL maskına nick eklemediğinizden emin olun.
OPER_AKILL_ADDED
	%s AKILL listesine eklendi.
OPER_AKILL_CHANGED
	%s nickinin zaman aşımı süresi değiştirildi.
OPER_AKILL_NOT_FOUND
	%s AKILL listesinde bulunamadı.
OPER_AKILL_NO_MATCH
	Uyuşan kayıt AKILL listesinde bulunamadı.
OPER_AKILL_DELETED
	%s AKILL listesinden silindi.
OPER_AKILL_DELETED_ONE
	AKILL listesinden 1 kayıt silindi.
OPER_AKILL_DELETED_SEVERAL
	AKILL listesinden %d kayıt silindi.
OPER_AKILL_LIST_EMPTY
	AKILL listesi boş.
OPER_AKILL_LIST_HEADER
	Şu anki AKILL listesi:
	  No    Mask                              Sebep
OPER_AKILL_LIST_FORMAT
	  %3d   %-32s  %s
OPER_AKILL_VIEW_HEADER
	Şu anki AKILL listesi:
# number, mask, set-by, set-time, expires, reason
OPER_AKILL_VIEW_FORMAT
	%3d  %s (%s tarafından %s tarihinde; %s)
	      %s
OPER_AKILL_CLEAR
	AKILL listesi temizlendi.

# SGLINE responses
OPER_CHANKILL_SYNTAX
	CHANKILL [+expiry] {#channel} [reason]
# SGLINE responses
OPER_SGLINE_SYNTAX
	SGLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+zamanaşımı] {mask | kayıt-sırası} [sebep]]
OPER_SGLINE_UNSUPPORTED
	SGLINE bu networkte mevcut değil.
OPER_SGLINE_EXISTS
	%s zaten SGLINE listesinde.
OPER_SGLINE_ALREADY_COVERED
	%s zaten %s tarafından değiştirildi.
OPER_SGLINE_REACHED_LIMIT
	Sadece %d kişi SGLINE listesinde olabilir.
OPER_SGLINE_ADDED
	%s SGLINE listesinde eklendi.
OPER_SGLINE_CHANGED
	%s nickinin zaman aşımı süresi değiştirildi.
OPER_SGLINE_NOT_FOUND
	%s SGLINE listesinde bulunamadı.
OPER_SGLINE_NO_MATCH
	SGLINE listesinde uyuşan kayıt bulunamadı.
OPER_SGLINE_DELETED
	%s SGLINE listesinden silindi.
OPER_SGLINE_DELETED_ONE
	SGLINE listesinden 1 kayıt silindi.
OPER_SGLINE_DELETED_SEVERAL
	SGLINE listesinden %d kayıt silindi.
OPER_SGLINE_LIST_EMPTY
	SGLINE listesi boş.
OPER_SGLINE_LIST_HEADER
	Şu anki SGLINE listesi:
	  No   Mask                              Sebep
OPER_SGLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SGLINE_VIEW_HEADER
	Şu anki SGLINE listesi:
# number, mask, set-by, set-time, expires, reason
OPER_SGLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SGLINE_CLEAR
	SGLINE listesi temizlendi.

# SQLINE responses
OPER_SQLINE_SYNTAX
	SQLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+zaman asimi] {mask | kayit-sirasi} [sebep]]
OPER_SQLINE_CHANNELS_UNSUPPORTED
	SQLINE kullandiginiz IRCd tarafindan desteklenmiyor, bu yüzden kullanmazsiniz.
OPER_SQLINE_EXISTS
	%s zaten SQLINE listesinde mevcut.
OPER_SQLINE_ALREADY_COVERED
	%s zaten %s tarafindan degistirildi.
OPER_SQLINE_REACHED_LIMIT
	Toplam %d SQLINE olabilir.
OPER_SQLINE_ADDED
	%s SQLINE listesine eklendi.
OPER_SQLINE_CHANGED
	%s için zaman asimi süresi degistirildi.
OPER_SQLINE_NOT_FOUND
	%s SQLINE listesinde bulunamadi.
OPER_SQLINE_NO_MATCH
	SQLINE listesinde uyusan kayit bulunamadi.
OPER_SQLINE_DELETED
	%s SQLINE listesinden silindi.
OPER_SQLINE_DELETED_ONE
	SQLINE listesinden 1 kayit silindi.
OPER_SQLINE_DELETED_SEVERAL
	SQLINE listesinden %d kayit silindi.
OPER_SQLINE_LIST_EMPTY
	SQLINE listesi bos.
OPER_SQLINE_LIST_HEADER
	Mevcut SQLINE listesi:
	  Num   Mask                              Sebep
OPER_SQLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SQLINE_VIEW_HEADER
	Mevcut SQLINE listesi:
# number, mask, set-by, set-time, expires, reason
OPER_SQLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SQLINE_CLEAR
	SQLINE listesi temizlendi.

# SZLINE responses
OPER_SZLINE_SYNTAX
	SZLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+zamanaşımı] {mask | kayıt-sırası} [sebep]]
OPER_SZLINE_UNSUPPORTED
	SZLINE bu networkte mevcut değil.
OPER_SZLINE_EXISTS
	%s zaten SZLINE listesinde.
OPER_SZLINE_ALREADY_COVERED
	%s zaten %s tarafından değiştirildi.
OPER_SZLINE_REACHED_LIMIT
	Sadece %d kişi SZLINE listesinde olabilir.
OPER_SZLINE_ONLY_IPS
	Hatırlatma: SZLINE listesine sadece IP masklarını ekleyebilirsiniz.
OPER_SZLINE_ADDED
	%s SZLINE listesine eklendi.
OPER_SZLINE_CHANGED
	%s nickinin zaman aşımı süresi değiştirildi.
OPER_SZLINE_NOT_FOUND
	%s SZLINE listesinde bulunamadı.
OPER_SZLINE_NO_MATCH
	SZLINE listesinde uyuşan kayıt bulunamadı.
OPER_SZLINE_DELETED
	%s SZLINE listesinden silindi.
OPER_SZLINE_DELETED_ONE
	SZLINE listesinden 1 kayıt silindi.
OPER_SZLINE_DELETED_SEVERAL
	SZLINE listesinden %d kayıt silindi.
OPER_SZLINE_LIST_EMPTY
	SZLINE listesi boş.
OPER_SZLINE_LIST_HEADER
	Şu anki SZLINE listesi:
	  No   Mask                              Sebep
OPER_SZLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SZLINE_VIEW_HEADER
	Şu anki SZLINE listesi:
# number, mask, set-by, set-time, expires, reason
OPER_SZLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SZLINE_CLEAR
	SZLINE listesi temizlendi.

# SET responses
OPER_SET_SYNTAX
	SET özellik ayar
OPER_SET_IGNORE_ON
	Ignore kodu AKTIF.
OPER_SET_IGNORE_OFF
	Ignore kodu KAPALI.
OPER_SET_IGNORE_ERROR
	IGNORE ayarı ON veya OFF şeklinde olmalıdır.
OPER_SET_READONLY_ON
	Servisler şimdi read-only modunda.
OPER_SET_READONLY_OFF
	Servisler şimdi read-write modunda.
OPER_SET_READONLY_ERROR
	READONLY ayarı ON veya OFF şeklinde olmalıdır.
OPER_SET_LOGCHAN_ON
	Services is now reporting log messages to %s.
OPER_SET_LOGCHAN_OFF
	Services is no longer reporting log messages to a channel.
OPER_SET_LOGCHAN_ERROR
	Setting for LOGCHAN must be ON or OFF and LogChannel must be defined.
OPER_SET_DEBUG_ON
	Servisler şimdi debug modunda.
OPER_SET_DEBUG_OFF
	Servisler şimdi non-debug modunda.
OPER_SET_DEBUG_LEVEL
	Servisler şimdi debug modunda (seviye %d).
OPER_SET_DEBUG_ERROR
	DEBUG ayarı ON, OFF, veya pozitif bir sayı olmalıdır.
OPER_SET_NOEXPIRE_ON
	Servisler şimdi no expire modunda.
OPER_SET_NOEXPIRE_OFF
	Servisler şimdi expire modunda.
OPER_SET_NOEXPIRE_ERROR
	NOEXPIRE ayarı ON yada OFF olmalıdır.
OPER_SET_UNKNOWN_OPTION
	Varolmayan özellik %s.
OPER_SET_SQL_ON
	SQL code kullanılabilir.
OPER_SET_SQL_OFF
	SQL code kullanılamaz.
OPER_SET_SQL_ERROR
	Sql özelliği sadece ON veya OFF olarak ayarlanabilir.
OPER_SET_SQL_ERROR_INIT
	Error during init of SQL, check your logs to correct.
OPER_SET_SQL_ERROR_DISABLED
	SQL ayarları bu sunucu icin duzenlenmiş durumda degil. lütfen ayar dosyasını
	(services.conf) duzenleyiniz.
OPER_SET_LIST_OPTION_ON
	%s acık
OPER_SET_LIST_OPTION_OFF
	%s kapalı

# NOOP responses
OPER_NOOP_SYNTAX
	NOOP {SET|REVOKE} server
OPER_NOOP_SET
	%s serverındaki tüm O:line lar silindi.
OPER_NOOP_REVOKE
	%s serverındaki tüm O:line lar resetlendi.

# JUPE responses
OPER_JUPE_SYNTAX
	JUPE serverismi [sebep]

# RAW responses
OPER_JUPE_HOST_ERROR
	Gecerli bir sunucu adı giriniz
OPER_JUPE_INVALID_SERVER
	Bağlı oldugunuz sunucuda bu uygulamayı yapamazsınız.
	
# RAW responses
OPER_RAW_SYNTAX
	RAW yazı

# UPDATE responses
OPER_UPDATING
	Veritabanı güncelleniyor.

# RELOAD responses
OPER_RELOAD
	Servislerin conf dosyası yeniden yüklendi.

# RESTART responses
OPER_CANNOT_RESTART
	SERVICES_BIN tanımlanmamış; restart edilemiyor.  Yeniden \2configure\2 edin ve RESTART komutunu aktifleştirmek için Servisleri yeniden derleyin.

# LISTIGNORE responses
OPER_IGNORE_SYNTAX
	IGNORE {ADD|DEL|LIST|CLEAR} [time] [nick | mask]
OPER_IGNORE_VALID_TIME
	Gecerli bir zaman giriniz.
OPER_IGNORE_TIME_DONE
	%s rumuzu %s saniyeligine servisler tarafından engellendi.
OPER_IGNORE_PERM_DONE
	%s rumuzunu engelledim. Artık beni kullanamaz.
OPER_IGNORE_DEL_DONE
	%s rumuzu servis engellerinden kaldırıldı.
OPER_IGNORE_LIST
	Servisler ignore listesi:
OPER_IGNORE_LIST_NOMATCH
	%s rumuzu sunucunun engelledigi kişiler arasında bulunmuyor.
OPER_IGNORE_LIST_EMPTY
	Ignore listesi boş.

# KILLCLONES responses
OPER_IGNORE_LIST_CLEARED
	Ignore listesi temizlendi.

# KILLCLONES responses
OPER_KILLCLONES_SYNTAX
	KILLCLONES nick
OPER_KILLCLONES_UNKNOWN_NICK
	Kullanıcı %s bulunamadı.
	
# CHANLIST responses
OPER_CHANLIST_HEADER
	Kanal listesi:
	İsim              Kullanici Modlari  Konu
OPER_CHANLIST_HEADER_USER
	%s kanal listesi:
	İsim              Kullanici Modlari  Konu
OPER_CHANLIST_RECORD
	%-20s  %4d +%-6s %s
OPER_CHANLIST_END
	Kanal listesi sonu.
	
# USERLIST responses
OPER_USERLIST_HEADER
	Kullanıcı listesi:
	Nick                 Mask
OPER_USERLIST_HEADER_CHAN
	%s kullanıcı listesi:
	Nick                 Mask
OPER_USERLIST_RECORD
	%-20s %s@%s
OPER_USERLIST_END
	Kullanıcı listesi sonu.

# CACHE responses
OPER_SUPER_ADMIN_ON
	Su anda SuperAdminsiniz
OPER_SUPER_ADMIN_OFF
	SuperAdmin Kapatıldı
OPER_SUPER_ADMIN_SYNTAX
	Bu özellik ON ve OFF olarak kullanılabilir.
OPER_SUPER_ADMIN_WALL_ON
	%s Super-Admin
OPER_SUPER_ADMIN_WALL_OFF
	%s Super-Admin durumunda degil

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################

# EXCEPTION responses
OPER_SUPER_ADMIN_ONLY
	Sadece SuperAdmin kullanımına acıktır.

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################

# EXCEPTION responses
OPER_STAFF_LIST_HEADER
	Durum Seviye Rumuz

# DefCon Messages

OPER_STAFF_FORMAT
	 %c %s  %s
OPER_STAFF_AFORMAT
	 %c %s  %s [%s]

# DefCon Messages

OPER_DEFCON_SYNTAX
	DEFCON [1|2|3|4|5]
OPER_DEFCON_DENIED
	Bu servis su anda kullanılamaz, daha sonra tekrar deneyiniz
OPER_DEFCON_NO_CONF
	DEFCON sistemi services.conf dosyasından acılabilir
OPER_DEFCON_CHANGED
	Servislerin DEFCON girdigi artık %d
OPER_DEFCON_WALL
	%s DEFCON seviyesi %d olarak degiştirildi
DEFCON_GLOBAL
	Defcon Seviyesi Su anda: %d

# Modules strings

OPER_MODULE_LOADED
	Eklenti %s yuklendi
OPER_MODULE_UNLOADED
	Eklenti %s kaldırıldı
OPER_MODULE_LOAD_FAIL
	Bilinmeyen eklenti %s
OPER_MODULE_REMOVE_FAIL
	Geçersiz eklenti %s
OPER_MODULE_NO_UNLOAD
	Bu eklenti kaldırılamıyor.
OPER_MODULE_LOAD_SYNTAX
	MODLOAD FileName
OPER_MODULE_UNLOAD_SYNTAX
	MODUNLOAD FileName
OPER_MODULE_LIST_HEADER
	Mevcut eklenti listesi:
OPER_MODULE_LIST
	Module: %s [%s] [%s]
OPER_MODULE_LIST_FOOTER
	%d eklenti yüklü bulunuyor.
OPER_MODULE_INFO_LIST
	Eklenti: %s Versiyon: %s Yapımcı: %s Yuklenme tarihi: %s
OPER_MODULE_CMD_LIST
	Belirtilmis komut: %R%s %s
OPER_MODULE_MSG_LIST
	Belirtilmis IRCD bağlantısı: %s
OPER_MODULE_NO_LIST
	Eklenti bulunmuyor
OPER_MODULE_NO_INFO
	%s eklentisi icin bir bilgi bulunmuyor
OPER_MODULE_INFO_SYNTAX
	MODINFO EklentiIsmi

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################

# EXCEPTION responses
MODULE_HELP_HEADER
	Modulu yuklemek icin icerigi takip ediniz:

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################

# EXCEPTION responses
OPER_EXCEPTION_SYNTAX
	EXCEPTION {ADD | DEL | MOVE | LIST | VIEW} [parametreler]
OPER_EXCEPTION_ADD_SYNTAX
	EXCEPTION ADD [+zamanaşımı] mask limit sebep
OPER_EXCEPTION_DEL_SYNTAX
	EXCEPTION DEL {mask | liste}
OPER_EXCEPTION_MOVE_SYNTAX
	EXCEPTION MOVE num pozisyon
OPER_EXCEPTION_DISABLED
	Session limit koyma devre dışı.
OPER_EXCEPTION_ALREADY_PRESENT
	Mask %s zaten exception listesinde bulunuyor.
OPER_EXCEPTION_TOO_MANY
	Session-limit exception listesi dolu!
OPER_EXCEPTION_ADDED
	%s için session limit %d olarak değiştirildi.
OPER_EXCEPTION_MOVED
	%s (#%d) için exception %d pozisyonuyla değiştirildi.
OPER_EXCEPTION_NO_SUCH_ENTRY
	(#%d) böyle bir kayıt yok. session-limit exception listesi.
OPER_EXCEPTION_NOT_FOUND
	%s session-limit exception listesinde bulunamadı.
OPER_EXCEPTION_NO_MATCH
	session-limit exception listesinde uyuşan kayıt bulunamadı.
OPER_EXCEPTION_DELETED
	%s session-limit exception listesinden silindi.
OPER_EXCEPTION_DELETED_ONE
	Session-limit exception listesinden 1 kayıt silindi.
OPER_EXCEPTION_DELETED_SEVERAL
	Session-limit exception listesinden %d kayıt silindi.
OPER_EXCEPTION_LIST_HEADER
	Şu anki Session Limit Exception listesi:
# mask, limit
OPER_EXCEPTION_LIST_FORMAT
	%3d  %4d   %s
OPER_EXCEPTION_LIST_COLHEAD
	Sayı  Limit  Host
# mask, set-by, set-time, expires, limit, reason
OPER_EXCEPTION_VIEW_FORMAT
	%3d.  %s  (by %s on %s; %s)
	    Limit: %-4d  - %s
OPER_EXCEPTION_INVALID_LIMIT
	Geçersiz session limiti. Sıfırdan büyük yada eşit ve %d den az bir geçerli tamsayı olmalıdır.
OPER_EXCEPTION_INVALID_HOSTMASK
	Geçersiz hostmask. Sadece gerçek hostmasklar exception olarak geçerlidir.
OPER_EXCEPTION_EXISTS
	%s Zaten listede bulunuyor.
OPER_EXCEPTION_CHANGED
	%s - %d olarak güncellendi.

# SESSION responses
OPER_SESSION_SYNTAX
	SESSION {LIST limit | VIEW host}
OPER_SESSION_LIST_SYNTAX
	SESSION LIST limit
OPER_SESSION_VIEW_SYNTAX
	SESSION VIEW host
OPER_SESSION_DISABLED
	Session limit koyma devre dışı.
OPER_SESSION_INVALID_THRESHOLD
	Geçersiz threshold değeri. 1 den büyük geçerli tamsayı olmalıdır.
OPER_SESSION_NOT_FOUND
	%s session listesinde bulunamadı.
OPER_SESSION_LIST_HEADER
	En az %d sessionlı hostlar:
OPER_SESSION_LIST_COLHEAD
	Sessionlar  Host
# limit, host
OPER_SESSION_LIST_FORMAT
	%6d    %s
# host, sessions, limit
OPER_SESSION_VIEW_FORMAT
	Host %s şu anda %d session a sahip ve %d ile limitli.

# EXCEPTION help

OPER_HELP_EXCEPTION
	Kullanımı: EXCEPTION ADD [+zamanaşımı] mask limit sebep
	           EXCEPTION DEL {mask | liste}
	           EXCEPTION MOVE num pozisyon
	           EXCEPTION LIST [mask | liste]
	           EXCEPTION VIEW [mask | liste]
	
	Servis adminlerinin, belirli oturum limiti olan hostların 
	listesini değiştirmesini sağlar. Shell server gibi bazı 
	makinaların varsayılandan daha fazla kullanıcıyı aynı anda
	taşımasını sağlar. Eğer bir host session(oturum) limitine
	ulaşmışsa o hosttan bağlanmaya çalışan tüm kullanıcılar 
	kill lenir. Kill lenmeden önce, %S'ün /NOTICE i ile
	uyarılarak session limiti hakkında yardım verilir. Bu uyarının
	içeriği ayar yapmayla ilgilidir.
	
	EXCEPTION ADD exception(istisna) listesine belirtilen hostmaskı
	ekler. nick!user@host ve user@host masklarının geçersiz 
	olduğunu unutmayın! Sadece box.host.dom ve *.host.dom gibi 
	gerçek hostmasklar kullanılabilinir, çünkü session limitleme 
	nickleri ve username leri hesaba almaz. limit sıfırdan büyük 
	yada eşit bir rakam olmalıdır. Bu o host un aynı anda kaç oturum
	(session) kaldırabileceğini belirler. Sıfır değeri o host un
	sınırsız oturum limiti olduğunu belirtir. Opsiyonel zamanaşımı 
	parametresinin formatı ile ilgili yardım için AKILL in 
	yardımına bakınız.
	EXCEPTION DEL listesinden belirtilen mask ı çıkarır.
	EXCEPTION MOVE exception numarasını(num) pozisyona (position)
	çevirir. Aralarındaki exceptionların yeri aralığı doldurmak için 
	yukarı yada aşşağı değiştirilecektir.
	EXCEPTION LIST ve EXCEPTION VIEW tüm mevcut exceptionları 
	gösterir; eğer opsiyonel olarak mask belirtilmişse, liste
	bu masklarla uyuşan exceptionlarla sınırlandırılır. Aradaki fark
	EXCEPTION VIEW daha gelismis bir komuttur ve exception ı ekleyenin 
	nickini, o exceptionın session limitini, sebebi, host maskı ve zaman 
	aşımı tarih ve zamanını gösterir.
	
	Bağlanan kullanıcı, hostuyla uyuşan ilk exceptionı kullanır. Büyük 
	exception listeleri ve geniş olarak uyuşan exception maskları 
	servislerin performansını düşürür. 
	
	Servis adminleri tarafından kullanılabilir.

OPER_HELP_SESSION
	Kullanımı: SESSION LIST threshold
	           SESSION VIEW host
	
	Servis adminlerinin session listesini görüntülemesini sağlar.
	
	SESSION LIST en az threshold sessionlardaki hostları listeler.
	Threshold(eşik) 1 den büyük bir sayı olmalıdır. Bu büyük 
	ölçüdeki tek session hostların yanlışlıkla listelenmelerini 
	önlemek içindir.
	SESSION VIEW belirli bir host hakkında ayrıntılı bilgileri 
	görüntüler. Bu o anki session sayısını ve session limitinide
	gösterir. host değeri wildcard(açık olarak yazılmalıdır) 
	içermemelidir.
	
	Session limitleme ve belirli hostlara ve gruplara nasıl session 
	limit koyulacağı hakkında yardım için EXCEPTION yardımına bakın.
	
	Servis adminleri tarafından kullanılabilir.

###########################################################################
#
# News system messages
#
###########################################################################

OPER_HELP_STAFF
	Kullanımı: STAFF

	Sunucu üzerinde yetkili bulunan nicklerin yetki seviyelerini
	ve su anda bağlı olup olmadıklarını gösterir.

OPER_HELP_DEFCON
	Kullanımı: DEFCON [1|2|3|4|5]

	Defcon sistemı sunucu icin onceden tanımlanmıs ayarlardır
	servislerin daha iyi calısmaları ve herhangi bir saldırı anında
	servislerin mevcut durumunu korumak icin düzenlenmistir.

OPER_HELP_DEFCON_NO_NEW_CHANNELS
	* Yeni kanal kayıt edilemez
OPER_HELP_DEFCON_NO_NEW_NICKS
	* Yeni rumuz kayıt edilemez
OPER_HELP_DEFCON_NO_MLOCK_CHANGE
	* Mlock degiştirilemez
OPER_HELP_DEFCON_FORCE_CHAN_MODES
	* (%s) tüm kanallar icin zorunlu mod olarak atandı
OPER_HELP_DEFCON_REDUCE_SESSION
	* Bağlantı limiti azaltıldı %d
OPER_HELP_DEFCON_NO_NEW_CLIENTS
	* Yeni baglantılar kopartır
OPER_HELP_DEFCON_OPER_ONLY
	* Operler haric servisleri diger kullanıcıları engeller
OPER_HELP_DEFCON_SILENT_OPER_ONLY
	* Sessizleri engelle(operler haric)
OPER_HELP_DEFCON_AKILL_NEW_CLIENTS
	* Yeni bağlantıları akill listesine ekle


###########################################################################
#
# News system messages
#
###########################################################################

OPER_HELP_DEFCON_NO_NEW_MEMOS
	* Yeni cevrimdisi mesaj gonderilemez
OPER_HELP_CHANKILL
	Kullanımı: CHANKILL [+expiry] channel reason

	Belirtilmis kanaldaki herkezi akill listesine ekler.
	Kullanımı sonucu ident@host seklinde tüm rumuzları akill listesine alır,
	bu listeden yasak kaldırmak icin normal akill listesi kontrol edilmeli ve aynı yöntem kullanılmalıdır. 

###########################################################################
#
# News system messages
#
###########################################################################

NEWS_LOGON_TEXT
	[Bağlantı Haberleri - %s] %s
NEWS_OPER_TEXT
	[Operatör Haberleri - %s] %s
NEWS_RANDOM_TEXT
	[Karisik Haberler - %s] %s

NEWS_LOGON_SYNTAX
	LOGONNEWS {ADD|DEL|LIST} [yazı|num]
NEWS_LOGON_LIST_HEADER
	Bağlantı haberleri:
NEWS_LOGON_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_LOGON_LIST_NONE
	Hiç bağlantı haberi yok.
NEWS_LOGON_ADD_SYNTAX
	LOGONNEWS ADD yazı
NEWS_LOGON_ADD_FULL
	Haber listesi dolu!
NEWS_LOGON_ADDED
	Yeni bağlantı haberleri maddesi eklendi (#%d).
NEWS_LOGON_DEL_SYNTAX
	LOGONNEWS DEL {num | ALL}
NEWS_LOGON_DEL_NOT_FOUND
	Bağlantı haberleri maddesi #%d bulunamadı!
NEWS_LOGON_DELETED
	Bağlantı haberleri maddesi #%d silindi.
NEWS_LOGON_DEL_NONE
	Silebileceğiniz bağlantı haberleri maddesi yok!
NEWS_LOGON_DELETED_ALL
	Tüm bağlantı haberleri silindi.

NEWS_OPER_SYNTAX
	Kullanımı: OPERNEWS {ADD|DEL|LIST} [yazı|num]
NEWS_OPER_LIST_HEADER
	Operatör haberleri:
NEWS_OPER_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_OPER_LIST_NONE
	Hiç operatör haberi yok.
NEWS_OPER_ADD_SYNTAX
	Kullanımı: OPERNEWS ADD yazı
NEWS_OPER_ADD_FULL
	Haber listesi dolu!
NEWS_OPER_ADDED
	Yeni operatör haberleri maddesi eklendi (#%d).
NEWS_OPER_DEL_SYNTAX
	Kullanımı: OPERNEWS DEL {num | ALL}
NEWS_OPER_DEL_NOT_FOUND
	Operatör haberleri maddesi #%d bulunamadı!
NEWS_OPER_DELETED
	Operatör haberleri maddesi #%d silindi.
NEWS_OPER_DEL_NONE
	Silebileceğiniz operatör haberleri maddesi yok!
NEWS_OPER_DELETED_ALL
	Tüm operatör haberleri maddeleri silindi.

NEWS_RANDOM_SYNTAX
	RANDOMNEWS {ADD|DEL|LIST} [yazi|no]
NEWS_RANDOM_LIST_HEADER
	Karisik haberler:
NEWS_RANDOM_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_RANDOM_LIST_NONE
	Hiç karisik haber yok.
NEWS_RANDOM_ADD_SYNTAX
	RANDOMNEWS ADD yazi
NEWS_RANDOM_ADD_FULL
	Haber listesi dolu!
NEWS_RANDOM_ADDED
	Yeni karisik haber eklendi (#%d).
NEWS_RANDOM_DEL_SYNTAX
	RANDOMNEWS DEL {no | ALL}
NEWS_RANDOM_DEL_NOT_FOUND
	#%d numarali karisik haber bulunamadi!
NEWS_RANDOM_DELETED
	#%d numarali karisik haber silindi.
NEWS_RANDOM_DEL_NONE
	Silinecek karisik haber yok!
NEWS_RANDOM_DELETED_ALL
	Tüm karisik haberler silindi.

NEWS_HELP_LOGON
	Kullanımı: LOGONNEWS ADD yazı
	        LOGONNEWS DEL {num | ALL}
	        LOGONNEWS LIST
	
	Giriş haberleri ve mesajlarını düzenlemek icin kullanılır. 
	Kullanıcı sunucuya bağlantığı anda bu belirtilen mesajlar giris yapan kullanıcıya 
	iletilir.  (Bununla beraber, %s adetten fazla mesaj kullanıcıya
	gonderilmez.  Eğer cok fazla mesaj eklenmiş bulunuyor ise
	bunlardan en yenileri kullanıcıya ulaştırılır.)
	NewsCount(Giriş haberleri) Özellikleri services.conf'ta belirtilmiştir ve bu dosyadan ayarlanabilir.
	
	LOGONNEWS may only be used by Services admins. 

NEWS_HELP_OPER
	Kullanımı: OPERNEWS ADD text
	        OPERNEWS DEL {num | ALL}
	        OPERNEWS LIST
	
	Giriş haberleri ve mesajlarını düzenlemek icin kullanılır(Yönetici girişleri). 
	Kullanıcı sunucu içerisinde yönetici konumuna gectiği anda bu belirtilen mesajlar giris yapan operatore 
	iletilir.  (Bununla beraber, %s adetten fazla mesaj yöneticiye
	gonderilmez.  Eğer cok fazla mesaj eklenmiş bulunuyor ise
	bunlardan en yenileri kullanıcıya ulaştırılır.)
	NewsCount(Giriş haberleri) Özellikleri services.conf'ta belirtilmiştir ve bu dosyadan ayarlanabilir.
	
	OPERNEWS may only be used by Services admins. 

NEWS_HELP_RANDOM
	Kullanimi: RANDOMNEWS ADD yazi
	           RANDOMNEWS DEL {no | ALL}
	           RANDOMNEWS LIST
	
	Karisik haberleri düzenlemenizi saglar. Bir kullanici
	network e baglandigi zaman, karisik haberlerden bir tanesi
	seçilerek kullaniciya gönderilir.
	
	RANDOMNEWS may only be used by Services admins. 

###########################################################################
#
# HelpServ help message
#
###########################################################################

HELP_HELP
	%S servisler hakkında bilgi vermek için tasarlanmıştır.
	Yardım konularına diğer servislerin HELP komutuyla ulaşılır.
	
	%R%s HELP
	     nick kayıt hakkında bilgiler içerir.
	
	%R%s HELP
	     kanal kayıdı ve kontrolü hakkında bilgi içerir.
	
	%R%s HELP
	     kullanıcılara internette olmasalar bile mesaj göndermek
	     için gerekli bilgileri içerir.

HELP_HELP_BOT

	%R%s HELP
	     kanallara bot sokulması ve ayarları hakkında bilgi içerir.

HELP_HELP_HOST

	%R%s HELP
	     for information on setting up nick vHosts

###########################################################################
#
# NickServ help messages
#
###########################################################################
NICK_HELP_CMD_CONFIRM
	    CONFIRM    Nick kayıt aktivasyonu için kullanılır. Aktivasyon kodunu tanıtma komutudur.
NICK_HELP_CMD_RESEND
	    RESEND     Nick Servisleri aktivasyon kodunu tekrar gönderir

NICK_HELP_CMD_REGISTER
	    REGISTER   Nickinizi kaydeder
NICK_HELP_CMD_GROUP
	    GROUP      Bir gruba dahil eder
NICK_HELP_CMD_IDENTIFY
	    IDENTIFY   Şifrenizle nickinizi tanıtır
NICK_HELP_CMD_ACCESS
	    ACCESS     İzinli adreslerin listesini düzenler
NICK_HELP_CMD_SET
	    SET        Ayarlar, kill korumasını içerir
NICK_HELP_CMD_SASET
	    SASET      Başka bir rumuzun ayarlarını düzenlemede kullanılır
NICK_HELP_CMD_DROP
	    DROP       Nickin kaydını siler
NICK_HELP_CMD_RECOVER
	    RECOVER    Nickinizi kullanan birini kill ler
NICK_HELP_CMD_RELEASE
	    RELEASE    RECOVER komutundan sonra nickinizi serbest 
	               bırakır
NICK_HELP_CMD_SENDPASS
	    SENDPASS   Şifrenizimi unuttunuz? Bunu deneyin
NICK_HELP_CMD_GHOST
	    GHOST      "askıda kalmış" bir rumuzu sunucudan atar 
NICK_HELP_CMD_ALIST
	    ALIST      Yetkili olduğunuz kanallari listeler
NICK_HELP_CMD_GLIST
	    GLIST      Nick grubunuzdaki nickleri listeler
NICK_HELP_CMD_INFO
	    INFO       Belirlenen rumuza ait olan bilgileri gösterir
NICK_HELP_CMD_LIST
	    LIST       Kayıtlı olan nickleri seçilen parametrelere göre listeler
NICK_HELP_CMD_LOGOUT
	    LOGOUT     Sisteme tanıttığınız(identify) rumuzun sistemden cıkışını sağlar.(Böylece yetkisiz konuma gecersiniz.)
NICK_HELP_CMD_STATUS
	    STATUS     Seçilen rumuzun durum ve seviyesini gösterir
NICK_HELP_CMD_UPDATE
	    UPDATE     Durumuzunu günceller, Örnekle. Cevrimdisi mesajlarınız, Vhost vs.
NICK_HELP_CMD_GETPASS
	    GETPASS    Bir nickin şifresini öğrenmek içindir
	               (Sadece şifreleme(encryption) devre dışıysa)
NICK_HELP_CMD_GETEMAIL
	    GETEMAIL   Girilen mail adresi ile o adresi kayıtta kullanan kisileri eşleştirir 
NICK_HELP_CMD_FORBID
	    FORBID     Bir nickin kullanılmasını yasaklar
NICK_HELP_CMD_SUSPEND
	    SUSPEND    Seçilen rumuzu askıya alır.
NICK_HELP_CMD_UNSUSPEND
	    UNSUSPEND  Geçici olarak kullanıma kapatılmış rumuzu kullanıma açar.

NICK_HELP
	%S nickinizi "kayıt" etmenizi ve diğerlerinin nickinizi 
	kullanmalarını engellemeyi sağlar. Aşağıdaki komutlar nicki
	kayıt etmeye ve korumaya izin verir, kullanmak için, 
	%R%S komut yazın. Belirli bir komut hakkında daha 
	fazla bilgi için, %R%S HELP komut yazın.
	
NICK_HELP_FOOTER
	NOT: Bu servis kullanıcıların kimliklerini tehlikeye 
	atmayacak şekilde tasarlanmıştır. Bu nickleri "çalmayı" 
	veya diğer kötü niyetli hareketleri kolaylaştırmayı sağlama
	amaçlı değildir. %S 'ün kötüye Kullanımı kötüye 
	kullanılan kişinin nickini kaybetmesiyle sonuçlanacaktır.

NICK_HELP_EXPIRES
	
	Daha fazla kullanılmayan nicklerin otomatik olarak
	kaydının silinmesi söz konusudur, mesela kullanılmayan
	nickler %d gün sonra silinirler.

NICK_HELP_REGISTER
	Kullanımı: REGISTER şifre [email]
	
	%S 'ün veritabanına nickinizi kaydeder. Nickinizi 
	bir kere kayıt ettikten sonra nickinizin özelliklerini 
	istediğiniz gibi belirlemek için SET ve ACCESS 
	komutlarını kullanabilirsiniz. Kayıtta kullandığınız şifrenin
	hatırlanabilecek birşey olmasına dikkat edin - ilerde
	nickinizin özelliklerinde değişiklik yaparken ve sunucuda
	kullanabilmek için ihtiyacınız olacak. (Şifrelerin büyük
	küçük harf hassasiyeti olduğunu unutmayın! İXİR, İxir, 
	ve ixir şifreleri birbirinden farklıdır.)
	
	Şifreleri seçme konusunda rehber:
	
	Şifreler kolayca tahmin edilebilir olmamalıdır.  Örneğin,
	gerçek isminizi şifre olarak kullanmak kötü bir fikirdir.
	Nickinizi şifre olarak kullanmak daha kötü bir fikirdir :)
	ve zaten %S buna izin vermez. Ayrıca kısa şifreler 
	deneme yanılma yöntemiyle bulunabilirler, bu yüzden şifrenizin
	en az 5 karakter olmasına dikkat edin. Son olarak şifrede
	boşluk kullanmamanız gerekir.
	
	email parametresi opsiyoneldir ve nickiniz için bir 
	email adresi belirler. Fakat bazı networklerde bu
	parametrenin kullanılması zorunlu olabilir.(Unutmayın
	email adresinizi doğru olarak vermeniz ilerde şifrenizi 
	unutmanız halinde çok işe yarayacaktır)
	Gizliliğinize saygı duyulacak ve mail adresiniz herhangi 
	üçüncü şahıslara söylenmeyecektir.

	Bu komut ayrıca nickiniz için yeni bir grup oluşturur ki bu
	ilerde gruba kaydedeceğiniz nickler için aynı özellikleri, 
	memo ayarlarını ve aynı kanal ayrıcalıklarını paylaşmanızı 
	sağlar. Bu özellik hakkında daha fazla bilgi için, 
	%R%S HELP GROUP yazın.


NICK_HELP_GROUP
	Kullanımı: GROUP hedef şifre
	
	Bu komut nickinizin hedef gösterilen nickin grubuna katılmasını
	sağlar. şifre hedef gösterilen nickin şifresidir.
	
	Bir gruba dahil olmak size o gruba dahil olan tüm nicklerinizin
	ayarlarını, memolarını, ve kanal ayrıcalıklarını paylaşmanızı ve 
	daha fazlasını sağlar!
	 
	Bir grup kullanışlı olduğu sürece kalıcıdır. Bu demektirki eğer
	gruba dahil nickleriniz kaydını silerseniz, grupta en az bir nick 
	kalması kaydiyle yukarda açıklanan paylaşımları kaybetmezseniz.
	
	Bu komutu nickinizi kaydetmemiş olsanız bile kullanabilirsiniz.
	Eğer nickiniz zaten kayıtlı ise, bu komutu kullanmadan önce
	nickinizi tanıtmanız gerekir, daha fazla bilgi için
	%R%S HELP IDENTIFY yazın. Sizin IRC networkunuzda
	bu mümkün olmayabilir.
	
	Bu komutu kayıtlı olmayan bir nickle kullanmanız önerilir çünkü
	bu komutu kullanıcı o nick otomatik olarak kaydedilir. Bunu
	kayıtlı bir nicklede eğer network adminleri buna izin veriyorsa
	kullanabilirsiniz.
	
	Bir seferde sadece bir grupta olabilirsiniz. Grup karıştırma
	mümkün değildir.
	
	Not: bir gruptaki tüm nickler bir şifreye sahip olurlar.

NICK_HELP_IDENTIFY
	Kullanımı: IDENTIFY şifreniz
	
	%S 'e kullandığınız nickin gerçek sahibinin siz olduğunu
	belirtir. Çoğu komut kullanılmadan önce bu komutla 
	tanıtılmanızı gerektirir. Şifreniz nickinizi kayıt ederken 
	REGISTER komutuyla beraber kullandığınızla aynıdır.

NICK_HELP_UPDATE
	Kullanımı: UPDATE

	Durumunuzu günceller, Örneğin; Yeni cevrimdisi mesajlarınızı,
	sahib oldugunuz kanal modlarını (ModeonID aktif olmalıdır), vhost'unuzu  ve
	kişisel bilgilerinizi günceller (son görünme zamanı, vs.).
	
NICK_HELP_LOGOUT
	Kullanımı: LOGOUT
	
	IDENTIFY komutunun yaptığı etkiyi tersine çevirir,
	yani artık o nickin gerçek sahibi olarak tanınmamanızı
	sağlar. Fakat sizden nickinizi tekrar identify etmeniz 
	istenmez.

NICK_HELP_DROP
	Kullanımı: DROP [nick]
	
	%S 'ün veritabanından nickinizi siler. Silinmiş bir nick
	başkası tarafından kayıt edilebilir.

	nick parametresini kullanarak belirttiğiniz nicki
	grubunuzdan silebilirsiniz.
	
	Bu komutu kullanmadan önce, şifrenizle kendinizi tanıtmanız
	gereklidir (Daha fazla bilgi için %R%S HELP IDENTIFY 
	yazın).

NICK_HELP_ACCESS
	Kullanımı:  ACCESS ADD mask
	        ACCESS DEL mask
	        ACCESS LIST
	
	Nickinizin access litesini görüntüler ve değişiklikler 
	yapmanızı sağlar. Bu listede belirtilen adresler %S 
	tarafından nickinizi kullanabilmek için otomatik olarak 
	tanınacak adreslerdir. (böylece identify komutunu 
	kullanmanıza gerek kalmaz.) Eğer belirtilenden farklı bir 
	adresle bağlanmışsanız %S 'ün sizi tanıması için 
	IDENTIFY komutunu kullanmanız gerekir.
	
	Örnekler:
	
	    ACCESS ADD birisi@*.ixir.com
	        Kullanıcı birisi'ne ixir.com 
	        domaininden herhangi bir makineden 
	        erişim sağlar.
	
	    ACCESS DEL birisi@*.ixir.com
	        Önceki komutun tersini yapar(siler).
	
	    ACCESS LIST
	        Mevcut access listesini görüntüler.

NICK_HELP_SET
	Kullanımı: SET özellik parametre
	
	Çeşitli nick özelliklerini ayarlar.  özellik şunlardan biri 
	olabilir:
	
	    DISPLAY    Grubunuzun servislerde nasıl görüneceğini ayarlar
	    PASSWORD   Nickinize şifre belirtir
	    LANGUAGE   Servislerin size hitap edeceği 
	                  dili belirler
	    URL        Nickinizle bir URL yi ilişkilendirir
	    EMAIL      Nickinizle bir email adresini ilişkilendirir
	    ICQ        Nickinizle bir ICQ numarasını ilişikilendirir
	    GREET      Nickiniz için bir karşılama mesajı belirler
	    KILL       Korumayı açar kapatır
	    SECURE     Nick güvenliğini açar kapatır
	    PRIVATE    Nickinizin %R%S LIST yazıldığında görünmesini
	                  engeller
	    HIDE       Nickinizle ilgili bazı bilgileri saklar
	    AUTOOP     Servisler sizi otomatik op yapar.    
	
	Bu komutu kullanabilmek için önce, şifrenizle 
	kendinizi tanıtmanız gerekir (Daha fazla bilgi için 
	%R%S HELP IDENTIFY yazın).
	
	Belirli bir özellik(option) hakkında bilgi almak için
	%R%S HELP SET option yazın.

NICK_HELP_SET_DISPLAY
	Kullanımı: SET DISPLAY yeni-görünüm
	
	Servislerde grubunuzdaki nicklerden hangisinin gözükeceğini
	ayarlar. Yeni görünüm grubunuzda bulunan nicklerden biri 
	olmalıdır.

NICK_HELP_SET_PASSWORD
	Kullanımı: SET PASSWORD yeni şifre
	
	Nickinizi tanıtmak için kullandığınız şifreyi
	değiştirir.

NICK_HELP_SET_LANGUAGE
	Kullanımı: SET LANGUAGE numara
	
	Servislerin size hitap edeceği dili belirlemenizi sağlar.
	(örneğin, bir komut yazdığınızda gelecek cevabın dili gibi).
	numara aşağıdaki listede desteklenen dillerden biri olarak 
	belirlenir:

NICK_HELP_SET_URL
	Kullanımı: SET URL url
	
	Nickiniz için bir URL adresi belirtir. Bu URL adresi birisi
	sizin hakkınızda bilgi almak için INFO komutunu 
	kullandığında görünür.

NICK_HELP_SET_EMAIL
	Kullanımı: SET EMAIL email adresiniz
	
	Nickiniz için bir email adresi belirtir. Bu email adresi
	birisi sizin hakkınızda bilgi almak için INFO komutunu 
	kullandığında görünür.

NICK_HELP_SET_ICQ
	Kullanımı: SET ICQ icqnumaranız
	
	Nickiniz için bir ICQ numarası belirtir. Bu ICQ numarası
	birisi sizin hakkınızda bilgi almak için INFO komutunu
	kullandığında görünür.

NICK_HELP_SET_GREET
	Kullanımı: SET GREET mesaj
	
	Yazdığınız mesajı nickinizin karşılama mesajı olarak
	belirler, bu mesaj GREET özelliği aktif bir kanala 
	girdiğinizde gönderilir, kanaldaki access seviyenize
	bağlıdır.

NICK_HELP_SET_KILL
	Kullanımı: SET KILL {ON | QUICK | IMMED | OFF}
	
	Nickiniz için otomatik koruma özelliğini açar ve kapatır.
	Koruma açıkken eğer bir başkası sizin nickinizi kullanmaya 
	kalkarsa, o kişiye nicki değiştirmesi için bir dakika süre 
	verilir, eğer değiştirmezse %S tarafından otomatik olarak
	değiştirilir.
	
	Eğer QUICK parametresini seçerseniz, kullanıcıya nickini
	değiştirmesi için 60 saniye yerine sadece 20 saniye verilir.
	Eğer IMMED parametresini seçerseniz kullanıcının nicki
	uyarılmadan hemen değiştirilir; lütfen çok gerekmedikçe
	bu özelliği kullanmayın. Hatta network yöneticileri bu
	özelliği devre dışı bırakmış olabilirler.

NICK_HELP_SET_SECURE
	Kullanımı: SET SECURE {ON | OFF}
	
	%S'ün güvenlik özelliklerini açar ve kapatır. SECURE 
	ayarı ile, nickin sahibi olarak tanınmanız için önce şifreyle 
	kendinizi tanıtmanız gerekir(adresinizin nickin access
	listesinde olup olmamasına bağlı olarak). Fakat, eğer 
	adresiniz nickin access listesindeyse KILL özelliği
	kullanılmış olsa bile %S sizi otomatik olarak kill
	lemeyecektir.

NICK_HELP_SET_PRIVATE
	Kullanımı: SET PRIVATE {ON | OFF}
	
	%S'ün özel nick özelliğini açar kapatır. PRIVATE ayarı
	ile, %S'ün LIST komutu kullanıldığında nickiniz listede
	gözükmeyecektir.(Buna rağmen, nickinizi bilen biri INFO 
	komutunu kullanarak hakkınızda bilgi alabilir.)

NICK_HELP_SET_HIDE
	Kullanımı: SET HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
	
	Birisi hakkınızda bilgi almak için %S INFO komutunu 
	kullandığında bazı bilgilerin burada gözükmemesini sağlar.
	E-mail adresinizi (EMAIL), son göründüğünüz user@host 
	maskını (USERMASK), ve son çıkış mesajınızı (QUIT)
	saklayabilirsiniz. İkinici parametre bilginin görünüp (OFF)
	görünmeyeceğini (ON) belirtmenizi sağlar.

NICK_HELP_SET_MSG
	Kullanımı: SET MSG {ON | OFF}
	
	Eğer bağlı bulunduğunuz sunucu bunu destekliyor ise servisler sizinle 
	MSG(Düz mesajlar) ile konuşurlar, bu ayar aktif durumda olmazsa sizinle 
	iletişimde duyuru(notice) kullanırız.

NICK_HELP_SET_AUTOOP
	Kullanımı: SET AUTOOP {ON | OFF}
	
	Servislerin otomatik op vermesini sağlar. Eğer aktif duruma getirilir ise 
	servisler kanala girdiginizde sizi otomatik operator konumuna getirirler.

NICK_HELP_SASET
	Kullanımı: SASET nickname option bilgi.
	
	Secilen rumuzun ayarlarını düzenler.  kullanılabilecek option(ayarlar) :
	
	    DISPLAY    Nick Grubunu düzenler
	    PASSWORD   Secilen rumuzun şifresini degiştirir
	    URL        Secilen rumuzun kişisel sitesini degiştirir
	    EMAIL      Secilen rumuzun e-posta adresini degiştirir
	    ICQ        Secilen rumuzun icq numarasını degiştirir
	    GREET      Secilen rumuzun karşılama mesajını degiştirir
	    KILL       Rumuzun güvenligini acar veya kapatır
	    SECURE     Rumuzun korumasını acar veya kapatır
	    PRIVATE    Nick'i nick listesinden ayrıcalıklı konuma getirir
	                   %R%S LIST
	    HIDE       Rumuzun belirlenen bilgisini INFO'da gösterimden kaldırır
	    MSG        Servislerin geri cevap secenegini belirler
	    NOEXPIRE   Nick zaman aşım süresini kaldırır
	    LANGUAGE   Rumuzun servisleri kullanırken alacagı cevap
	               ve yardimlarda kullanılacak olan dil'i belirler
	
	Daha fazla bilgiye %R%S HELP SASET option 
	şeklinde parametrelerin yardımları ile ulasabilirsiniz. Secilen
	nickname bilgilerini değiştir. 
	
	Services admins kullanımı ile sınırlıdır.

NICK_HELP_SASET_DISPLAY
	Kullanımı: SASET nickname DISPLAY new-display
	
	Secilen rumuzun servisler icerisinde kullandıgı nick grubunu değiştirir 
	Yeni grup kullanılan grup ile aynı olamaz.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_PASSWORD
	Kullanımı: SASET nickname PASSWORD new-password
	
	Nick sahibinin sisteme nickini tanıtırken kullandıgı sifreyi degiştirir.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_URL
	Kullanımı: SASET nickname URL url
	
	Kişi bilgilerinde görülen Url'i degiştirir.  Bu URL
	kişinin tercihi ile belirledigi bir bilgidir
	ve INFO bilgilerinde gösterilebilir.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_EMAIL
	Kullanımı: SASET nickname EMAIL address
	
	Rumuzun e-posta olarak belirlediği adresi degiştirir.
	
	Services admins Kullanımı ile sınırlınır.
	
NICK_HELP_SASET_ICQ
	Kullanımı: SASET nickname ICQ number
	
	Kişi bilgilerinde görülen ICQ numarasını degiştirir.  Bu 
	ICQ numarası kişinin tercihi ile belirledigi bir bilgidir
	ve INFO bilgilerinde gösterilebilir.
	
	Services admins Kullanımı ile sınırlınır.
	
NICK_HELP_SASET_GREET
	Kullanımı: SASET nickname GREET message
	
	Secilen rumuza karsılama mesajı belirler, 
	bu mesaj kişi kanala girdiginde servisler tarafından 
	karşılama mesajı olarak gönderilir.  
	GREET(karşılama) kişinin yetkili oldugu kanallarda gönderilir.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_KILL
	Kullanımı: SASET nickname KILL {ON | QUICK | IMMED | OFF}
	
	Nickin otomatik koruma özelliğini açar ve kapatır.
	Koruma açıkken eğer bir başkası o rumuzu kullanmaya 
	kalkarsa, o kişiye nicki değiştirmesi için bir dakika süre 
	verilir, eğer değiştirmezse %S tarafından otomatik olarak
	değiştirilir.
	
	Eğer QUICK parametresini seçerseniz, kullanıcıya nickini
	değiştirmesi için 60 saniye yerine sadece 20 saniye verilir.
	Eğer IMMED parametresini seçerseniz kullanıcının nicki
	uyarılmadan hemen değiştirilir; lütfen çok gerekmedikçe
	bu özelliği kullanmayın. Hatta bu
	özellik devre dışı bırakılmış olabilirler.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_SECURE
	Kullanımı: SASET nickname SECURE {ON | OFF}
	
	%S'ün güvenlik özelliklerini açar ve kapatır. SECURE 
	ayarı ile, nickin sahibi olarak tanınmasi için önce şifreyle 
	kişinin kendini tanıtmasi gerekir(adresinin nickin access
	listesinde olup olmamasına bağlı olarak). Fakat, eğer 
	adresi nickin access listesindeyse KILL özelliği
	kullanılmış olsa bile %S sizi otomatik olarak kill
	lemeyecektir..
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_PRIVATE
	Kullanımı: SASET nickname PRIVATE {ON | OFF}
	
	%S'ün özel nick özelliğini açar kapatır. PRIVATE ayarı
	ile, %S'ün LIST komutu kullanıldığında nickin listede
	gözükmemesi sağlanır.(Buna rağmen, nicki bilen biri INFO 
	komutunu kullanarak 
	nick hakkında bilgi alabilir.)
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_HIDE
	Kullanımı: SASET nickname HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	
	Birisi rumuz hakkında bilgi almak için %S INFO komutunu 
	kullandığında bazı bilgilerin burada gözükmemesini sağlar.
	E-mail adresini (EMAIL), son göründüğünü user@host 
	maskını (USERMASK), ve son çıkış mesajını (QUIT)
	görünmez şekle alabilirsiniz. İkinici parametre bilginin görünüp (OFF)
	görünmeyeceğini 
	(ON) belirtmenizi sağlar.
	
	Services admins Kullanımı ile sınırlınır.
	
NICK_HELP_SASET_MSG
	Kullanımı: SASET nickname MSG {ON | OFF}
	
	Servislerin kişiye cevapta kullanacağı yolu belirtir 
	Eğer MSG özelliği aktif ise, servisler mesaj kullanır,
	değilse uyarı kullanır.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_NOEXPIRE
	Kullanımı: SASET nickname NOEXPIRE {ON | OFF}
	
	Secilen nicki zaman aşımına kapatır.  Bu düzenleme 
	ON şekline getirilir ise rumuz zaman aşımı yüzünden silinmez.
	
	Services admins Kullanımı ile sınırlınır.

NICK_HELP_SASET_AUTOOP
	Kullanımı: SASET nickname AUTOOP {ON | OFF}
	
	rumuzun otomatik yetki almasını sağlar.
	Eğer ON şekline getirlir ise nick kanala girişinde 
	otomatik olarak operator konumuna geçer.

NICK_HELP_SASET_LANGUAGE
	Kullanımı: SASET nickname LANGUAGE number
	
	Servislerin rumuza yolladıgı mesajlardaki dil secenegini ayarlamanıza yarar
	(Örneğin kişi türkçe seçmiş ise, servisler türkçe metinleri kullanır).
	Dilnumaralari hakkında bilgilere
	%R%S HELP SET LANGUAGE komutu ile ulasabilirsiniz.

NICK_HELP_RECOVER
	Kullanımı: RECOVER nickname [password]
	
	Rumuzunu başkasının kullandıgında kullanabileceginiz bir komuttur
	%S otomatik olarak nickinizi kullanımdan kaldırır
	Böylece rumuzunuza otomatik gecebilirsiniz.
	gecebilirsiniz.
	
	Bu komutu kullandıgınızda, %S sahte kullanıcıdan
	nickinizi alır ve kişiyi sunucuda tutar
	ve rumuzunuzu geri alma sansi verir.  
	Eğer girer kullanıcı tekrar bağlanır ve o rumuzu almaya kalkarsa
	%s kullanımında olan rumuzu alamaz
	bundan sonra rumuzunuzu isterseniz, kullanmak icin RELEASE komutunu uygulamanız 
	gerekmektedir.
	Bu komut hakkında (%R%S HELP RELEASE) 
	.
	
	RECOVER komutunu kullandıktan sonra
	rumuzu serbest bırakmalı ve nickinize geçiş yapmalısınız.
	yetkilerinizi ancak bu sekilde kullanabilirsiniz
	ancak bu sekilde
	kullanabilirsiniz. RECOVER sonrası rumuzu kimin kullandıgını WHOIS komutu ile ogrenebilirsiniz

NICK_HELP_RELEASE
	Kullanımı: RELEASE nickname [password]
	
	%S belirli sebebler tarafından kullanılan rumuzları serbest bırakmak
	icin kullanılır. Zaman korumalı rumuzlar veya RECOVER
	komutu ile %s kullanımına gecen rumuzlar icin kullanılır;
	boylece rumuzu kullanılabilir duruma getirirsiniz.
	
	RELEASE komutu ancak nickserv tarafından kullanılan nickler icin işe yarar
	/WHOIS komutu ile rumuzu kullanan adrese ulasabilirsiniz.
	RELEASE kullanımı sonrası nick kullanıma acılır
	bundan sonra u rumuza geçis yapılmalı ve 
	ve nick sifresi girilmelidir.

NICK_HELP_GHOST
	Kullanımı: GHOST nick [şifre]
	
	Asılı kalan nickinizin bağlantısını koparır. Asılı kalan nick 
	aslında hayalet nicktir fakat IRC serverı bunun hala hatta
	olduğunu sanar. Genellikle bu durum bilgisayarınızın çökmesi 
	yada modem bağlantınızın serverdayken kopması durumunda 
	gerçekleşir.
	
	GHOST komutunu bir nick üzerinde kullanabilmek için o an
	/WHOIS inizdeki adresin o nickin access listesinde olması, 
	o nick için doğru şifrenin belirtilmiş olması yada o nickin
	grubundaki başka bir nickin tanıtılmış olması gerekir.

NICK_HELP_INFO
	Kullanımı: INFO nick [ALL]
	
	Belirtilen nick hakkında o nickin sahibi, son görüldüğü adres ve 
	zaman, ve nickin özellikleri gibi bilgiler verir. Eğer nick 
	hakkında bilgi alırken o nickin sahibi sizseniz ve tanıtmışsanız 
	ALL parametresini kullandığınızda bilgiler gizli olsa bile o 
	nick hakkındaki tüm bilgiler görünür.

NICK_HELP_LIST
	Kullanımı: LIST model
	
	nick!user@host formatında, belirtilen modeli içeren
	tüm kayıtlı nickleri listeler. PRIVATE özelliği aktif olan
	nickler listelenmez.
	
	Örnekler:
	
	    LIST *!aliuser@ixir.com
	        identi aliuser@ixir.com olan tüm kayıtlı nickleri 
	        listeler.
	
	    LIST *Bot*!*@*
	        Bot kelimesini içeren tüm kayıtlı nickleri listeler.
	       (büyük küçük harf hassasiyeti vardır.)
	
	    LIST *!*@*.ixir.com
	        ixir.com domainine sahip tüm kayıtlı nickleri listeler.

NICK_HELP_ALIST
	Kullanımı: ALIST [level]
	
	Yetkili oldugunuz tüm kanalları ve seviyelerini listeler.
	Listelemede xOP veya access seneceklerine göre tarama yapabilirsiniz. 
	Bir secenek belirtilmez ise tüm yetkili bulundugunuz kanallari listeler.

	Örnekler:
	    ALIST Founder
	        Sahibi bulundugunuz kanallari
	    listeler.

	    ALIST AOP
	        AOP yetkisine sahip oldugunuz kanalları listeler 
	    ve daha buyuk yetkileride gösterir.

	    ALIST 10
	        10 seviyesinde yetkiye sahip oldugunuz kanalları listeler 
	    ve daha buyuk seviyelerinizide kapsar.
	
	Kanallarda zaman aşımı kapalı ise yanı NOEXPIRE özelliği acık ise 
	bunları işaretle belirtir.
	
NICK_HELP_GLIST
	Kullanımı: GLIST
	
	Grubunuzda bulunan tüm rumuzları listeler.

NICK_HELP_STATUS
	Kullanımı: STATUS nick...
	
	Nickin kullanıcı tarafından nickin sahibi olarak tanıtılıp 
	tanıtılmadığını gösterir. Cevap şu formattadır:
	
	    nick durum-kodu
	
	nick komutta yazılan nick, ve durum-kodu da
	aşağıdakilerden biridir:
	
	    0 - Böyle bir kullanıcı bağlı değil veya nick 
	           kayıtlı değil
	    1 - Kullanıcı nickin sahibi olarak tanıtılmamış
	    2 - Kullanıcı nickin sahibi olarak access listesinden 
	           tanıtılmış
	    3 - Kullanıcı nickin sahibi olarak şifreyle tanıtılmış
	
	Her komutta en fazla 16 nick için cevap verilir; gerisi 
	yoksayılır. If no nickname is given, your status
	will be returned.

NICK_HELP_SENDPASS
	Kullanımı: SENDPASS nick
	
	Belirtilen nickin şifresini nickin kayıtlarında belirtilmiş 
	email adresine gönderir.
	
	Bazı networklerde sadece IRC operatörleri kullanabilir.
	
	Eğer şifreleme(encryption) aktifse bu komut devre dışı kalır.

NICK_HELP_CONFIRM
	Kullanımı: CONFIRM aktivasyon-kodu
	
	Bu nick kayıt sırasındaki 2. adımdır.
	Rumuzunuzu kayıt edebilmek icin daha önceden
	%S (veya aktivasyon servisi) tarafından 
	e-posta adresinize yollanan aktivasyon kodunuzu confirm komutu ile sisteme göndermelisiniz.
	Eğer kodu bilmiyorsanız %R%S HELP RESEND ile tekrar edinme bilgilerine ulasabilirsiniz. Daha önceden
	bir kayıt isteginiz yok ise: %R%S HELP REGISTER şeklinde kayıt işlemi hakkında yardım alabilirsiniz.

NICK_HELP_RESEND
	Kullanımı: RESEND
	
	Bu komut ulaşmamış veya doğru olmayan aktivasyon kodunu
	mail adresinize tekrar göndermek icin kullanılır.

NICK_SERVADMIN_HELP
	Servis adminleri herhangi bir nickin tanıtmasına gerek olmadan 
	kaydını silebilir(drop) ve herhangi bir nickin access listesini 
	görüntüleyebilir. (%R%S ACCESS LIST nick).

NICK_SERVADMIN_HELP_LOGOUT
	Kullanımı: LOGOUT [nick [REVALIDATE]]
	
	Parametre kullanılmazsa, IDENTIFY komutunun yaptığı 
	etkiyi tersine çevirir, yani artık o nickin gerçek sahibi
	olarak tanınmamanızı sağlar. Fakat sizden nickinizi tekrar
	identify etmeniz istenmez.
	
	Parametre kullanılırsada aynısını yapar ama buna ek olarak
	REVALIDATE belirtilirse servisler o kişiye nickini yeniden 
	identify etmesini söyler. Servis adminlerinin Kullanımıyla
	sınırlıdır.

NICK_SERVADMIN_HELP_DROP
	Kullanımı: DROP [nick]
	
	Parametreye gerek olmadan, %S veritabanından nickinizi siler.
	
	Parametreyle, belirtilen bir nicki veritabanından siler.
	Grubunuzda bulunan herhangi bir nicki özel ayrıcalıklara
	gerek olmadan silebilirsiniz. Bu işlemler Servis adminleri 
	tarafından yapılabilir.

NICK_SERVADMIN_HELP_INFO
	
	Servis adminleri ALL parametresini herhangi bir nick için 
	kullanabilirler.

NICK_SERVADMIN_HELP_LIST
	Kullanımı: LIST model [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
	
	Belirtilen modele uyuşan tüm kayıtlı nickleri nick!user@host 
	formatında listeler. PRIVATE özelliğ aktif olan kullanıcılar 
	sadece servis adminleri tarafından görüntülenir. NOEXPIRE 
	ayarı olan nicklerde servis adminleri için asılı bir ! bulunur.
	
	If the FORBIDDEN, SUSPENDED, NOEXPIRE or UNCONFIRMED options are given, only
	nicks which, respectively, are FORBIDDEN, SUSPENDED, UNCONFIRMED or have the
	NOEXPIRE flag set will be displayed. If multiple options are
	given, all nicks matching at least one option will be displayed.
	These options are limited to Services admins.  
	
	Örnekler:
	
	    LIST *!aliuser@ixir.com
	        identi aliuser@ixir.com olan tüm kayıtlı nickler 
	        listelenir.
	
	    LIST *Bot*!*@*
	        İsimlerinde Bot yazan tüm kayıtlı nickler listelenir
	        (küçük büyük harf hassasiyeti vardır).
	
	    LIST * NOEXPIRE
	        Zaman asimi olmayan tüm kayıtlı nickler listelenir.

NICK_SERVADMIN_HELP_ALIST
	Kullanımı: ALIST [nickname] [level]
	
	Secilen rumuzun yetkiye sahip oldugu kanlları listeler.
	Belirli parametreler ile daha dar bir alanda listeme yapılabilir 
	Bu taramalarda rumuz için  
	belirlenen seviye ve bunun üstündeki yetkiler gösterilir.

	Sadece Servis adminleri tarafından kullanılır.

NICK_SERVADMIN_HELP_GLIST
	Kullanımı: GLIST [nickname]
	
	Bir parametre eklenmeden de kullanılır. Secilen rumuzun nick grubunu ve o gruptakı
	rumuzları gösterir .
	
	Bir parametre ile kullanılır ise, grupta o parametre ile
	eşleşen rumuzlar gösterilir.
	Sadece Servis adminleri tarafından kullanılır.

NICK_SERVADMIN_HELP_GETPASS
	Kullanımı: GETPASS nick
	
	Belirtilen nickin şifresini söyler. Unutmayınki bu komutun
	her kullanılışında , kullanılan nick ve komutu kullanan
	kişi kaydedilerek WALLOPS/GLOBOPS olarak gönderilir.
	
	Sadece Servis adminleri tarafından kullanılır.
	
	(Bu komut şifreleme(encryption) aktif olduğu zaman devre dışıdır.)

NICK_SERVADMIN_HELP_GETEMAIL
	Kullanımı: GETEMAIL user@emailhost

	Secilen mail ile eşleşen rumuzu gösterir. Not
	Başka rumuzlarin mail adresleri ile kullanmayınız.
	Eşleşmeleri daha sonra paylaşmayınız.
	Kişi bilgilerini kullanmayınız.

	Services admins Kullanımı ile sınırlınır.

NICK_SERVADMIN_HELP_FORBID
	Kullanımı: FORBID nick [sebep]
	
	Belirtilen nickin kullanılmasını ve kayıt edilmesini engeller.
	Nick drop edilerek iptal edilebilir.
	
	Bazı networklerde, sebep yazılması gereklidir.
	
	Sadece Servis adminleri tarafından kullanılır.

###########################################################################
#
# ChanServ help messages
#
###########################################################################

NICK_SERVADMIN_HELP_SUSPEND
	Kullanımı: SUSPEND nickname sebeb / UNSUSPEND nickname

	SUSPENDs / UNSUSPENDs rumuzu kullanımını gecici olarak kapatır.
	
	Sadece Servis adminleri tarafından kullanılır.

###########################################################################
#
# ChanServ help messages
#
###########################################################################

NICK_SERVADMIN_HELP_UNSUSPEND
	Kullanımı: UNSUSPEND nickname

	UNSUSPEND Rumuzu eski bilgileri ile kullanıma acar.

	Sadece Servis adminleri tarafından kullanılır.

###########################################################################
#
# ChanServ help messages
#
###########################################################################
CHAN_HELP_CMD_GETPASS
	    GETPASS    Bir kanalın founder şifresini ister
CHAN_HELP_CMD_FORBID
	    FORBID     Kanalı kullanıma kapatır
CHAN_HELP_CMD_SUSPEND
	    SUSPEND    Kanalı bilgilerini silmeden gecici olarak
	               kullanıma kapatır
CHAN_HELP_CMD_UNSUSPEND
	    UNSUSPEND  Askıya alınmış kanalı kullanıma acçr
CHAN_HELP_CMD_STATUS
	    STATUS     Kullanıcının kanaldaki access seviyesini söyler
CHAN_HELP_CMD_REGISTER
	    REGISTER   Kanalı kaydeder
CHAN_HELP_CMD_IDENTIFY
	    IDENTIFY   Şifreyle sizi kanalın sahibi olarak tanımlar
CHAN_HELP_CMD_SET
	    SET        Kanal özelliklerini ve bilgisini ayarlar
CHAN_HELP_CMD_AOP
	    AOP        AOP listesini düzenler
CHAN_HELP_CMD_SOP
	    SOP        SOP listesini düzenler
CHAN_HELP_CMD_ACCESS
	    ACCESS     Ayrıcalıklı kullanıcıları belirler değiştirir
CHAN_HELP_CMD_LEVELS
	    LEVELS     Access seviyelerini isteğinize göre düzenler
CHAN_HELP_CMD_AKICK
	    AKICK      Autokick listesini düzenler
CHAN_HELP_CMD_DROP
	    DROP       Kanal kaydını siler
CHAN_HELP_CMD_SENDPASS
	    SENDPASS   Kayıp şifrelerinizi söyler
CHAN_HELP_CMD_BAN
	    BAN        Belirtilen nicki kanalda yasaklar
CHAN_HELP_CMD_CLEAR
	    CLEAR      Kanal ayarlarını sıfırlar
CHAN_HELP_CMD_DEVOICE
	    DEVOICE    Secilen rumuzdan Voice yetkisini geri alır
CHAN_HELP_CMD_GETKEY
	    GETKEY     Secilen kanalın anahtar şifresini alır
CHAN_HELP_CMD_INFO
	    INFO       Kanal bilgilerini gösterir
CHAN_HELP_CMD_INVITE
	    INVITE     Chanserv sizi kanala davet eder
CHAN_HELP_CMD_KICK
	    KICK       Rumuzu kanaldan atar
CHAN_HELP_CMD_LIST
	    LIST       Girilen parametreye göre listeme yapar
CHAN_HELP_CMD_LOGOUT
	    LOGOUT     Kanaldan yetki cıkısı yapar
CHAN_HELP_CMD_OP
	    OP         Secilen rumuzu operator yapar
CHAN_HELP_CMD_TOPIC
	    TOPIC      Kanal baslığını ayarlar
CHAN_HELP_CMD_UNBAN
	    UNBAN      Kanaldaki yasaklamaları kaldırır
CHAN_HELP_CMD_VOICE
	    VOICE      Secilen rumuza voice verir
CHAN_HELP_CMD_VOP
	    VOP        Vop (Konuskan insanlar) listesini düzenler
CHAN_HELP_CMD_DEHALFOP
	    DEHALFOP   Secilen rumuzdan Yardımcı operator yetkisini alır 
CHAN_HELP_CMD_DEOWNER
	    DEOWNER    Kanal sahibi konumundan ayırmayı sağlar
CHAN_HELP_CMD_DEPROTECT
	    DEPROTECT  Kanal yönetici konumundan ayırmayı sağlar
CHAN_HELP_CMD_HALFOP
	    HALFOP     Secilen rumuzu yardımcı operator yapar
CHAN_HELP_CMD_HOP
	    HOP        HOP listesini duzenler
CHAN_HELP_CMD_OWNER
	    OWNER      Kanal sahibi konumuna alır
CHAN_HELP_CMD_PROTECT
	    PROTECT    Kanal Yöneticisi konumuna alır
CHAN_HELP_CMD_ADMIN
	    ADMIN      Kanal Admini konumuna alir
CHAN_HELP_CMD_DEADMIN
	    DEADMIN    Kanal Admini konumundan geri alir
CHAN_HELP_CMD_DEOP
	    DEOP       Kanal yöneticisi konumundan geri alır

CHAN_HELP
	%S kanallarınızı kayıt etmenizi ve kontrol etmenizi
	sağlar. %S kötü niyetli kullanıcıların kanalları ele 
	geçirmelerini(takeover), kanalda kimlerin op olacağını sizin
	tarafınızdan beliryerek engeller. Mevcut komutlar aşağıda 
	listelenmiştir; onları kullanmak için %R%S komut
	yazın. Belirli bir komut hakkında daha fazla bilgi için,
	%R%S HELP komut yazın.
	 
	
CHAN_HELP_EXPIRES
	
	Unutmayın %d gün kullanılmayan kanalların
	(kanalın access listesinde olan bir kimse o süre içinde 
	kanala girmezse ) kaydı silinir.

CHAN_HELP_REGISTER
	Kullanımı: REGISTER kanaladı şifre açıklama
	
	%S veritabanına belirtilen kanalı ekler yani kaydeder.
	Bu komutu kullanabilmek için kayıt etmek istediğiniz kanal
	önceden kayıtlı olmamalı ve kanalda op olmalısınız. Şifre
	kanal özelliklerinde değişiklikler yapmanız için ilerde
	lazım olacaktır. Son parametre kanalın genel bir tanımıdır
	ve mutlaka belirtilmelidir.
	
	Kanalı kayıt ettiğiniz zaman, kanalın "founder" 'ı olursunuz.
	Kanal founderı kanalın tüm özelliklerini değiştirme yetkisine 
	sahip olan kişidir; %S kanala girdiğiniz zaman size
	otomatik kanal opu hakkını verecektir. Kanal opu hakkını
	başkalarınada vermek için gerekli bilgiyi ACCESS komutunun
	yardımına bakarak alabilirsiniz (%R%S HELP ACCESS).
	
	NOT: Bir kanalı kaydedebilmek için, önce nickinizi kaydetmelisiniz.
	Eğer kaydetmediyseniz %R%s HELP yazarak nasıl yapacağınız
	hakkında bilgi alabilirsiniz.

CHAN_HELP_IDENTIFY
	Kullanımı: IDENTIFY kanaladı şifre
	
	%S tarafından kanalın founderı olarak tanınmanızı sağlar.
	Birçok komutu kullanabilmek için kendinizi kanalın sahibi
	(founder) olarak bu komutu kullanarak tanıtmanız gerekir.
	Şifre kanalı kaydederken  kullandığınız şifreyle aynıdır.

CHAN_HELP_LOGOUT
	Kullanımı: LOGOUT kanaladı nick
	
	Bu komut belirtilen nickin artık belirtilen kanal için
	tanımlanmamasını sağlar.
	
	Eğer kanalın founderı iseniz istediğiniz kişi üzerinde,
	değilseniz kendi üzerinizde bu komutu kullanabilirsiniz.

CHAN_HELP_DROP
	Kullanımı: DROP kanaladı
	
	Kanalın kaydını siler.  Sadece kanal founderı tarafından
	kullanılabilir ve o kişinin önce IDENTIFY komutunu kullanarak
	kanalın sahibi olduğunu belirtmesi gerekir.

CHAN_HELP_SET
	Kullanımı: SET kanaladı özellik parametre
	
	Kanal founderının çeşitli kanal özelliklerini ve diğer bilgileri
	ayarlamasını sağlar.
	
	Mevcut özellikler:
	
	    FOUNDER       Kanal founderını belirler
	    SUCCESSOR     Kanal successorını belirler
	    PASSWORD      Founder şifresini belirler
	    DESC          Kanal açıklamasını belirler
	    URL           Kanala bir URL adresini ilişkilendirir
	    EMAIL         Kanala bir E-mail adresini ilişkilendirir
	    ENTRYMSG      Kanala giren kullanıcılara gönderilecek mesajı
	                   belirler
	    BANTYPE       Servislerin kanalda ne tip ban koyacağını belirler
	    KEEPTOPIC     Kanalda kimse olmasa bile topiği hatırlar
	    TOPICLOCK     Topic sadece SET TOPIC komutuyla değiştirilir
	    MLOCK         Kanal modlarını kitler yada açar
	    PRIVATE       LIST komutuyla kanal listelenmez
	    RESTRICTED    Kanala izinli giriş gerektirir
	    SECURE        %S güvenlik özelliklerini aktifleştirir
	    SECUREOPS     Kanal opu durumunun sıkı kontrolünü sağlar
	    SECUREFOUNDER Kanal founderı durumunun sıkı kontrolünü sağlar
	    SIGNKICK      KICK komutuyla yapılan atmaları işaretler
	    OPNOTICE      OP/DEOP komutları kullanıldığında mesaj yollar
	    PEACE         kritik komutlarin kullanilmasini engeller
	    XOP           Ayricalik sistemleri arasinda geçisi saglar

	
	Belirli bir özellik hakkında daha fazla bilgi için
	%R%S HELP özellik yazın.

CHAN_HELP_SET_FOUNDER
	Kullanımı: SET kanaladı FOUNDER nick
	
	Kanal founderını değiştirir.  Yeni nickin kayıtlı 
	olması gereklidir.

CHAN_HELP_SET_SUCCESSOR
	Kullanımı: SET kanaladı SUCCESSOR nick
	
	Kanal successorını belirler, değiştirir. Eğer bir kanalın
	founderının nicki zaman aşımına uğrayıp kaydı silinirse
	yada kanal kayıtlıyken nickin kaydı bilerek silinirse(drop)
	successor kanalın yeni founderı durumuna gelir. Fakat eğer
	successorında çok fazla kayıtlı kanalı varsa(%d) veya kanal
	için bir successor belirtilmemişse kanalın kaydı silinir(drop).
	Komutta belirtilen nickin kayıtlı olması gereklidir.

CHAN_HELP_SET_PASSWORD
	Kullanımı: SET kanaladı PASSWORD şifre
	
	Kanal founderının şifresini değiştirir.

CHAN_HELP_SET_DESC
	Kullanımı: SET kanaladı DESC açıklama
	
	LIST ve INFO komutları kullanıldığında gözükecek kanal 
	açıklamasını belirler.

CHAN_HELP_SET_URL
	Kullanımı: SET kanaladı URL [urladresi]
	
	Belirtilen URL adresini kanal ile ilişkilendirir. Bu URL 
	adresi birisi kanal hakkında bilgi almak için INFO 
	komutunu kullandığında gözükür. Eğer urladresi parametresi
	belirtilmezse kanal için önceden belirtilen URL adresi
	silinir.

CHAN_HELP_SET_EMAIL
	Kullanımı: SET kanaladı EMAIL [emailadresi]
	
	Belirtilen E-mail adresini kanal ile ilişkilendirir.Bu E-mail 
	adresi birisi kanal hakkında bilgi almak için INFO komutunu 
	kullandığında gözükür. Eğer emailadresi parametresi
	belirtilmezse kanal için önceden belirtilen E-mail adresi
	silinir.

CHAN_HELP_SET_ENTRYMSG
	Kullanımı: SET kanaladı ENTRYMSG [mesaj]
	
	Kanala giren kullanıcılara notice şeklinde gönderilecek
	mesajı belirler.  Eğer mesaj parametresi belirtilmezse
	giren kullanıcıya bir mesaj gönderilmez.

CHAN_HELP_SET_BANTYPE
	Kullanımı: SET kanaladı BANTYPE bantipi
	
	Servislerin birini kanaldan banlarken kullanacağı ban 
	tipini belirler.
	
	bantipi 0 ile 3 arasında bir sayıdır ve anlamları şudur:
	
	0: *!user@host formatında ban için
	1: *!*user@host formatında ban için
	2: *!*@host formatında ban için
	3: *!*user@*.domain formatında ban için

CHAN_HELP_SET_KEEPTOPIC
	Kullanımı: SET kanaladı KEEPTOPIC {ON | OFF}
	
	Bir kanal için topic hatırlamayı aktifleştirir yada kapatır.
	topic hatırlama aktifse kanal kapansa bile kanal topic i
	%S tarafından hatırlanır ve birisi kanala girdiğinde bu
	topic geçerli olur.

CHAN_HELP_SET_TOPICLOCK
	Kullanımı: SET kanaladı TOPICLOCK {ON | OFF}
	
	Bir kanal için topic kilidini aktifleştirir yada kapatır.
	topic kilidi aktifse, %S SET TOPIC komutunun
	dışında kanal topic inin değiştirilmesine izin vermez.

CHAN_HELP_SET_MLOCK
	Kullanımı: SET kanaladı MLOCK modlar
	
	Bir kanal için mod-kilidini aktifleştirir. %S belirlediğiniz
	modların her zaman açık yada kapalı olacağını ayarlar.

	+ ile belirtilen modlar açik olarak, - ile belirtilen modlar
	kapali olarak kitlenir.
	
	Dikkat:  Eğer ikinci örnekteki gibi bir mod kilidi koyarsanız,
	kanalın RESTRICTED özelliğinide aktifleştirmeniz gerekir
	(HELP SET RESTRICTED e bakın), yoksa kanal boşken ilk
	giren kişi kanal key ini(anahtar) görebilir!
	
	Örnekler:
	
	    SET #kanaladı MLOCK +nt-iklps
	        n ve t modlarını hep açık, i, k, l, p, ve s modlarını hep
	        açık olarak ayarlar. m modu ise istenildiği gibi ayarlanabilir
	        açık yada kapalı.
	
	    SET #kanaladı MLOCK +knst-ilmp anahtar
	        k, n, s, ve t modları hep açık, ve i, l, m, ve p modları
	        hep kapalı. Ayrıca kanal anahtarını belirler ve hep o 
	        anahtar olmasını sağlar.
	
	    SET #kanaladı MLOCK +
	        Mod kilidini kaldırır; ve tüm kanal modlarını açılıp 
	        kapanacak şekilde serbest bırakır.

CHAN_HELP_SET_PEACE
	Kullanimi: SET kanaladi PEACE {ON | OFF}
	
	Bir kanalin peace özelligini açar veya kapatir.
	peace özelligi ayarlandiginda, hic kimse seviyesi kendinden
	yüksek veya esit olanlari atamaz, banlayamaz veya %S
	seviyesini degistiremez.

CHAN_HELP_SET_PRIVATE
	Kullanımı: SET kanaladı PRIVATE {ON | OFF}
	
	Bir kanal için private özelliğini açar kapatır. private özelliği
	aktifse, %R%S LIST komutuyla kanal listelenemez.

CHAN_HELP_SET_RESTRICTED
	Kullanımı: SET kanaladı RESTRICTED {ON | OFF}
	
	Enables or disables the restricted access option for a
	channel.  When restricted access is set, users not on
	the access list will instead be kicked and banned from the channel.

CHAN_HELP_SET_SECURE
	Kullanımı: SET kanaladı SECURE {ON | OFF}
	
	Bir kanal için %S'ün güvenlik özelliklerini açar veya 
	kapatır. SECURE özelliği aktifse, sadece nicki kayıtlı
	ve %s ile nickini tanıtmış kullanıcılar kanalda access 
	alabilirler ve access listesindeki statülerini
	alabilirler.(mesela op olabilirler)

CHAN_HELP_SET_SECUREOPS
	Kullanımı: SET kanaladı SECUREOPS {ON | OFF}
	
	Bir kanal için güvenli op özelliğini açar veya kapatır.
	güvenli op özelliği aktifse, access listesinde olmayan
	kullanıcılar kanalda op olamazlar.

CHAN_HELP_SET_SECUREFOUNDER
	Kullanımı: SET kanaladı SECUREFOUNDER {ON | OFF}
	
	Bir kanal için güvenli founder özelliğini açar yada kapatır.
	güvenli founder özelliği aktifse, sadece gerçek founder 
	kanalın kaydını silebilir, kanal şifresini değiştirebilir yada
	kanal founderını ve successor ını değiştirebilir. Kanal 
	şifresiyle kendilerini %S'e kanal founderı olarak tanıtan 
	ama nicki founderın nicki olmayanlar bu komutları kullanamazlar.

CHAN_HELP_SET_SIGNKICK
	Kullanımı: SET kanaladı SIGNKICK {ON | LEVEL | OFF}
	
	Bir kanal için işaretli atmayı açar yada kapatır.
	SIGNKICK ayarlandığı zaman, %S KICK
	komutuyla yapılan atmalarda komutu kullanan kişinin
	nicki atma sebebinde yer alır.
	
	Eğer LEVEL parametresini kullanırsanız, seviyesi
	SIGNKICK seviyesine eşit yada fazla olanların yaptığı
	atmalarda atanın nicki sebepte gözükmez. Daha fazla
	bilgi için %R%S HELP LEVELS yazın.

CHAN_HELP_SET_XOP
	Kullanimi: SET kanaladi XOP {ON | OFF}
	
	Bir kanalin xOP sistemini açar veya kapatir. XOP
	ayarlandigi zaman, AOP/SOP/VOP komutlariyla
	yetkileri düzenlemelisiniz, aksi takdirde ACCESS
	komutunu kullanmalisiniz.
	
	Teknik Not: Access sisteminden xOP sisteminde
	geçtiginizde seviye ayarlariniz degistirilir, bu
	yüzden tekrar access sistemine geçtiginizde ayni
	ayarlari bulamazsiniz! 
	
	Access sisteminden xOP sistemine geçtiginizde listedeki
	ayricaliklari kontrol edip listenizdeki nicklerin dogru
	xOP ayarlarinda bulundugunu kontrol edin, çünkü sistemin
	tahmin etmesi her zaman dogru olmayabilir... Eger LEVELS
	komutuyla komut seviye ayarlarini degistirdiyseniz xOP
	sistemini kullanmaniz önerilmez.
	
	Bunlarin disinda xOP sisteminden access sistemine geçmek
	bir problem çikarmaz.

CHAN_HELP_SET_OPNOTICE
	Kullanımı: SET kanaladı OPNOTICE {ON | OFF}
	
	Bir kanal için op-notu özelliğini açar yada kapatır.
	op-notu özelliği aktifse, %S kanala bir kullanıcı 
	üzerinde OP veya DEOP komutlarının kullanıldığını
	belirten bir mesaj gönderir.

CHAN_HELP_AOP
	Kullanımı: AOP kanaladi ADD nick
	           AOP kanaladi DEL {nick | kayit-no | liste}
	           AOP kanaladi LIST [mask | liste]
	           AOP kanaladi CLEAR
	
	Bir kanalin AOP (otoop) listesini düzenler. AOP listesi
	o kanalda kullaniciya otomatik olarak op olma, gerekirse 
	kendi banlarini kaldirma veya davet edilme, giriste karsilama
	mesajlarini görüntüleme, vs yetkilerini verir.
	
	AOP ADD komutu belirtilen nicki AOP listesine ekler.
	
	AOP DEL komutu belirtilen nicki AOP listesinden siler.  
	Eger kayit numaralari belirtilirse, o numaralara ait nickler
	silinir. (Asagidaki örnegi inceleyin.)
	
	AOP LIST komutu AOP listesini gösterir. Eger bir hostmask
	belirtilmisse, sadece onla uyusan kayitlari gösterir. Eger 
	kayit numaralari belirtilmisse o numaralarla uyusan kayitlari
	gösterir; örnegin:

	   AOP #kanal LIST 2-5,7-9
	      2 den 5 e ve 7 den 9 a kadar olan kayitlari gösterir.
	      
	AOP CLEAR komutu AOP listesindeki tüm kayitlari siler.
	
	AOP ADD ve AOP DEL komutlarini kanal SOP lari veya üstü
	kullanabilir. AOP CLEAR komutunu ise sadece kanal founderi
	kullanabilir. Ayrica, AOP listesindeki herhangi biri AOP LIST 
	komutunu kullanabilir.
	
	Bu komutu kanaliniz için devre disi birakabilirsiniz. O zaman
	access komutlarini kullanmalisiniz. Access komutlari hakkinda
	bilgi almak için  %R%S HELP ACCESS yazin. 
	Access ile xOP arasinda geçis yapabilmek için gerekli bilgilere
	%R%S HELP SET XOP yazarak ulasabilirsiniz.

CHAN_HELP_HOP
	Kullanımı: HOP kanaladi ADD nick
	           HOP kanaladi DEL {nick | kayit-no | liste}
	           HOP kanaladi LIST [mask | liste]
	           HOP kanaladi CLEAR
	
	Bir kanalin HOP (HalfOP) listesini düzenler. HOP
	listesinde bulunan bir kisi kanalda otomatik olarak
	halfop olur.
	
	HOP ADD komutu belirtilen nicki HOP listesine ekler.
	
	HOP DEL komutu belirtilen nicki HOP listesinden siler.
	Eger kayit numaralari listesi belirtilirse, bu kayitlar
	silinir. (Asagidaki örnegi inceleyin.)
	
	HOP LIST komutu HOP listesini gösterir. Eger bir hostmask
	belirtilmisse, o hostmask la uyusan kayitlar gösterilir.
	Eger kayit numaralari listesi belirtilmisse, o numaralardaki
	nickler gösterilir; örnegin:

	   HOP #kanaladi LIST 2-5,7-9
	       2 den 5 e ve 7 den 9 a kadar olan kayitlari gösterir.
	      
	HOP CLEAR komutu HOP listesindeki tüm kayitlari temziler.
	
	HOP ADD, HOP DEL ve HOP LIST komutlarini AOP lar ve üstü
	HOP CLEAR komutunu ise sadece founder kullanabilir.
	
	Bu komutu kanaliniz için devre disi birakabilirsiniz. O zaman
	access komutlarini kullanmalisiniz. Access komutlari hakkinda
	bilgi almak için  %R%S HELP ACCESS yazin. 
	Access ile xOP arasinda geçis yapabilmek için gerekli bilgilere
	%R%S HELP SET XOP yazarak ulasabilirsiniz.

CHAN_HELP_SOP
	Kullanımı: SOP kanaladi ADD nick
	           SOP kanaladi DEL {nick | kayit-no | liste}
	           SOP kanaladi LIST [mask | liste]
	           SOP kanaladi CLEAR
	
	Bir kanalin SOP (SuperOP) listesini düzenler. SOP
	listesindekiler AOP larin sahip oldugu tüm yetkilere 
	sahiptir. Ayrica AutoKick ve BadWords listesini
	düzenleyebilirler, kanal memolarini okuyabilirler, vs.
	
	SOP ADD komutu belirtilen nicki SOP listesine ekler.
	
	SOP DEL komutu belirtilen nicki SOP listesinden siler.
	Eger kayit numaralari listesi belirtilmisse, bu kayitlar
	silinir. (Asagidaki örnegi inceleyin.)
	
	SOP LIST komutu SOP listesini görüntüler. Eger bir
	hostmask belirtilmisse o hostmaskla uyusan kayitlar
	gösterilir. Eger kayit numaralari listesi belirtilmisse
	o numaralardaki nickler gösterilir; örnegin:

	   SOP #kanaladi LIST 2-5,7-9
	      2 den 5 e ve 7 den 9 a kadar olan kayitlar gösterilir.
	      
	SOP CLEAR komutu SOP listesindeki tüm kayitlari temizler.
	
	SOP ADD, SOP DEL ve SOP CLEAR komutlarini sadece kanal
	founderi kullanabilir. Ama AOP listesindeki herhangi biri
	SOP LIST komutunu kullanabilir.
	
	Bu komutu kanaliniz için devre disi birakabilirsiniz. O zaman
	access komutlarini kullanmalisiniz. Access komutlari hakkinda
	bilgi almak için  %R%S HELP ACCESS yazin. 
	Access ile xOP arasinda geçis yapabilmek için gerekli bilgilere
	%R%S HELP SET XOP yazarak ulasabilirsiniz.

CHAN_HELP_VOP
	Kullanımı: VOP kanaladi ADD nick
	           VOP kanaladi DEL {nick | kayit-no | liste}
	           VOP kanaladi LIST [mask | liste]
	           VOP kanaladi CLEAR
	
	Bir kanalin VOP (otovoice) listesini düzenler. VOP
	listesindekiler kanalda otomatik olarak voice alirlar.
	
	VOP ADD komutu belirtilen nicki VOP listesine ekler.
	
	VOP DEL komutu belirtilen nicki VOP listesindene siler.
	Eger kayit numaralari listesi belirtilmisse, o kayitlar
	silinir. (Asagidaki örnegi inceleyin.)
	
	VOP LIST komutu VOP listesini görüntüler. Eger bir
	hostmask belirtilmisse o hostmaskla uyusan kayitlar
	listelenir. Eger kayit numaralari listesi belirtilmisse
	o numaralardaki nickler gösterilir; örnegin:

	   VOP #kanaladi LIST 2-5,7-9
	      2 den 5 e ve 7 den 9 a kadar olan kayitlar gösterilir.
	      
	VOP CLEAR komutu VOP listesindeki tüm kayitlari temizler.
	
	VOP ADD, VOP DEL ve VOP LIST komutlarini AOP lar ve üstü,
	VOP CLEAR komutunu ise sadece founder kullanabilir.
	
	Bu komutu kanaliniz için devre disi birakabilirsiniz. O zaman
	access komutlarini kullanmalisiniz. Access komutlari hakkinda
	bilgi almak için  %R%S HELP ACCESS yazin. 
	Access ile xOP arasinda geçis yapabilmek için gerekli bilgilere
	%R%S HELP SET XOP yazarak ulasabilirsiniz.

CHAN_HELP_ACCESS
	Kullanımı:  ACCESS kanaladı ADD nick seviye
	            ACCESS kanaladı DEL {nick | kayıt-no | liste}
	            ACCESS kanaladı LIST [mask | liste]
	            ACCESS kanaladı CLEAR
	
	Bir kanal için access listesi oluşturur. Access listesi
	kanalda kimlerin op olacağını ve %S komutlarına
	kimlerin erişimi olacağını belirtir. Değişik access
	seviyeleri değişik komutlara erişim sağlar. Ayrıntılı bilgi
	için %R%S HELP ACCESS LEVELS yazın. Access
	listesinde olmayan kullanıcıların seviyesi 0 dır.
	
	ACCESS ADD komutu belirtilen nicki belirtilen seviyeden
	access listesine ekler; eğer o kişi zaten access listesindeyse
	seviyesini belirtilen seviyeyle değiştirir. Belirtilen seviye 
	komutu kullanan kişinin seviyesinden az olmalıdır, eğer 
	belirtilen nick zaten access listesindeyse komutu kullanan 
	kişinin access seviyesi onunkinden büyük olmalıdır.
	
	ACCESS DEL komutu belirtilen nicki access listesinden siler.
	eğer kayıt numarası belirtilmişse o kayıt numarası olan kişinin 
	accessi silinir.(Aşağıdaki LIST için verilen örneğe bakın.)
	
	ACCESS LIST komutu access listesini görüntüler. Eğer * lı 
	bir mask belirtilirse o maskla uyuşan kişiler listelenir. 
	Eğer kayıt numarası listesi belirtilirse o kişiler listelenir.
	Örneğin:
	
	   ACCESS #kanaladı LIST 2-5,7-9
	      2'den 5'e ve 7'den 9'a kadar olan access kayıtları
	      listelenir.
	      
	ACCESS CLEAR komutu tüm access listesini temizler.

CHAN_HELP_ACCESS_LEVELS
	Kullanıcı access seviyeleri
	
	Varsayılan olarak, aşağıdaki access seviyeleri tanımlanmıştır:
	
	   Founder   %S fonksiyonlarına tam erişim hakkı vardır.
	                     kanal girer girmez op olur. Unutmayınki
	                     sadece bir kişi founder olma hakkına 
	                     sahiptir. (ACCESS komutuyla verilemez.)
	        10   AKICK komutuna erişimi vardır; otomatik oplanır.
	         5   Otomatik oplanır.
	         3   Otomatik voice lanır.
	         0   Bir özelliği yoktur; diğer oplar tarafından
	                     oplanabilir (güvenli-op kapalıysa).
	        <0   Kanalda oplanamaz.
	
	Bu seviyeler LEVELS komutu kullanılarak değiştirilebilir, veya
	yenileri eklenebilir, bilgi için %R%S HELP LEVELS 
	yazın.

CHAN_HELP_AKICK
	Kullanımı:  AKICK channel ADD {nick | mask} [reason]
	            AKICK channel STICK mask
	            AKICK channel UNSTICK mask
	            AKICK channel DEL {nick | mask | entry-num | list}
	            AKICK channel LIST [mask | entry-num | list]
	            AKICK channel VIEW [mask | entry-num | list]
	            AKICK kanaladı ENFORCE
	            AKICK kanaladı CLEAR
	
	Bir kanal için AutoKick listesi oluşturur.  Eğer Akick 
	listesindeki bir kullanıcı kanala girmeye çalışırsa, Bu
	kişi %S tarafından banlanır ve kanaldan atılır.
	
	AKICK ADD komutu belirtilen nicki yada maskı Akick
	listesine ekler. Eğer komutla beraber birde sebep
	belirtilmişse bu sebep kullanıcı kanaldan atılırken
	kullanılır; eğer kullanılmazsa geçerli sebep olan
	"You have been banned from the channel" kullanılır.

	AKICK STICK komutu belirtilen maski kalici olarak
	banlar. Eger biri bani kaldirmaya çalisirsa, %S
	otomatik olarak yeniden banlar. Bunu kayitli nickler
	için kullanamazsiniz.
	
	AKICK UNSTICK komutu AKICK STICK komutunun etkilerini
	iptal eder, böylece bani kaldirabilirsiniz.
	
	AKICK DEL komutu belirtilen nicki yada maskı Akick
	listesinden siler. Fakat bu komutla önceden Akick 
	listesindeyken banlanmış birinin banı manuel olarak
	açılana kadar kalkmaz.
	
	AKICK LIST komutu Akick listesinde kimlerin olduğunu
	listeler, yada opsiyonel olarak belirtilen maskla uyuşan 
	Akick listesindeki kullanıcıları listeler.
	
	AKICK VIEW komutu AKICK LIST komutunun daha açıklayıcı
	versiyonudur.
	
	AKICK ENFORCE komutu %S'ün mevcut akick listesinde bulunan 
	masklara sahip kullanıcıları kanaldan atmasını sağlar.
	
	AKICK CLEAR komutu akick listesinde bulunan tüm kayıtları
	siler.

CHAN_HELP_LEVELS
	Kullanımı:  LEVELS kanaladı SET tip seviye
	            LEVELS kanaladı {DIS | DISABLE} tip
	            LEVELS kanaladı LIST
	            LEVELS kanaladı RESET
	
	LEVELS komutu bir kanaldaki access seviyelerinin iyi
	kontrolünü sağlar. Bu komutla, %S'ün birçok
	fonksiyonu için gereken access seviyelerini
	belirleyebilirsiniz. (SET FOUNDER ve SET PASSWORD
	komutları ve bu komut sadece kanal founderı tarafından
	kullanılabilir.)
	
	LEVELS SET komutu bir fonksiyon yada fonksiyon grupları için
	access seviyelerini değiştirmeye yarar. LEVELS DISABLE (veya
	kısaca DIS) otomatik bir özelliği kapatır yada founderdan 
	başkasının kullanmasını engeller. LEVELS LIST komutu 
	fonksiyonlar yada fonksiyon grupları için mevcut seviyeleri 
	gösterir. LEVELS RESET komutu seviyeleri varsayılan değerlerine
	geri çevirir. (HELP ACCESS LEVELS e bakın).
	
	Seviyeleri ayarlanabilecek fonksiyonlar için, HELP LEVELS DESC e 
	bakın.

CHAN_HELP_LEVELS_DESC
	Aşağıda seviyeleri değiştirilebilecek  fonksiyonlar listelidir.
	Dikkat edilirse AUTODEOP ve NOJOIN değerleri maximum, diğerleri
	minimum seviyelerdir.

CHAN_HELP_LEVELS_DESC_FORMAT
	    %-*s  %s

CHAN_HELP_INFO
	Kullanımı: INFO kanaladı [ALL]
	
	Belirtilen kayıtlı kanalla ilgili bilgiler sunar. Bu 
	bilgilerin içeriğinde kanalın founderı, kayıt zamanı,
	son kullanıldığı zaman, açıklaması, ve varsa mod kilidi
	bulunur. Eğer kanalın founderı olarak kendinizi 
	tanıtmışsanız ve ALL parametresini belirtmişseniz
	giriş mesajı ve successor hakkındada bilgi alabilirsiniz.

	Varsayilan olarak, ALL seçenegini founderlar kullanabilir.

CHAN_HELP_LIST
	Kullanımı: LIST model
	
	Belirtilen modelle uyuşan tüm kayıtlı kanalları listeler.
	(PRIVATE özelliği aktif olan kanallar listelenmez.)

CHAN_HELP_OP
	Kullanımı: OP [#kanaladı [nick]]
	
	Belirtilen nicki kanalda oplar. Eğer nick belirtilmemişse,
	kendinizi oplarsınız. Eğer kanal ve nick belirtilmemişse,
	bulunduğunuz tüm kanalda sizi oplar, tabi eğer op accessiniz
	ve bu komutu kullanmaya yetkiniz varsa.
	
	Varsayılan olarak, AOP lar ile access seviyesi 5 ve üzeri
	olanlar kullanabilir.

CHAN_HELP_DEOP
	Kullanımı: DEOP [#kanaladı [nick]]
	
	Belirtilen nicki kanalda deoplar. Eğer nick belirtilmemişse,
	kendinizi deoplarsınız. Eğer nick ve kanal belirtilmemişse,
	bulunduğunuz tüm kanallarda sizi deoplar, tabi eğer bu komutu 
	kullanmaya yetkiniz varsa.
	
	Varsayılan olarak, AOP lar veya access seviyesi 5 ve üzeri
	olanlar kullanabilir.

CHAN_HELP_VOICE
	Kullanımı: VOICE [#kanaladı [nick]]
	
	Belirtilen nicke kanalda voice verir. Eğer nick belirtilmemişse,
	size voice verir. Eğer kanal ve nick belirtilmemişse, size
	bulunduğunuz tüm kanallarda voice verir, tabi eğer accessiniz ve
	bu komutu kullanmaya izniniz varsa.
	
	Varsayılan olarak, AOP lar ile access seviyesi 5 ve üzeri olanlar
	kullanabilir, veya VOP lar ile access seviyesi 3 ve yukarı olanlar
	kendilerine voice vermek için kullanabilirler.

CHAN_HELP_DEVOICE
	Kullanımı: DEVOICE [#kanaladı [nick]]
	
	Belirtilen nicki kanalda devoice eder. Eğer nick belirtilmemişse,
	sizi devoice eder. Eğer kanal ve nick belirtilmemişse sizi,
	bulunduğunuz tüm kanallarda devoice eder, tabi eğer accessiniz
	ve bu komutu kullanmaya izniniz varsa.
	
	Varsayılan olarak, AOP lar, access seviyesi 5 ve üzeri olanlar
	kullanabilir, veya VOP lar ile access seviyesi 3 ve üzeri olanlar
	kendilerini devoice etmek için kullanabilirler.

CHAN_HELP_HALFOP
	Kullanımı: HALFOP [#kanaladı [nick]]
	
	Belirtilen nicki kanalda halfop(yarımop) yapar. Eğer nick
	belirtilmemişse, sizi halfop yapar. Eğer nick ve kanal
	belirtilmemişse, sizi bulunduğunuz tüm kanallarda halfop yapar,
	tabi eğer bu komutu kullanmaya izniniz varsa.
	
	Varsayılan olarak, AOP lar ile access seviyesi 5 ve üzeri
	olanlar kullanabilir, veya HOP lar ile access seviyesi 4 ve
	üzeri olanlar kendilerini halfop yapmak için kullanabilir.

CHAN_HELP_DEHALFOP
	Kullanımı: DEHALFOP [#kanaladı [nick]]
	
	Belirtilen nickin halfopunu(yarımop) alır. Eğer nick
	belirtilmemişse, sizin halfopunuz alır. Eğer kanal ve nick 
	belirtilmemişse, bulunduğunuz tüm kanallardan halfopunuzu
	alır, tabi eğer bu komutu kullanmaya izniniz varsa.
	
	Varsayılan olarak, AOP lar veya 5 ve üzeri access seviyesi
	olanlar kullanabilir, ayrica HOP lar veya access seviyesi
	4 ve üzeri olanlar kendi halfoplarını alabilirler.

CHAN_HELP_PROTECT
	Kullanımı: PROTECT [#kanaladı [nick]]
	
	Belirtilen nicki kanalda korur. Eğer nick belirtilmezse,
	sizi korur. Eğer nick ve kanal belirtilmezse sizi bulunduğunuz
	tüm kanallarda koruyacaktır, tabi eğer bu komutu kullanmaya
	izniniz varsa.
	
	Varsayılan olarak, founder kullanabilir, veya SOP lar ile access
	seviyesi 10 ve üzeri olanlar kendilerinde kullanabilirler.

CHAN_HELP_DEPROTECT
	Kullanımı: DEPROTECT [#kanaladı [nick]]
	
	Belirtilen nickin korumasını kaldırır. Eğer nick belirtilmemişse,
	sizin korumanızı kaldırır. Eğer kanal ve nick belirtilmezse, 
	sizin bulunduğunuz tüm kanallardaki korumalarınız kaldırır, 
	tabi eğer bu komutu kullanmaya izniniz varsa.
	
	Varsayılan olarak, founder kullanabilir, veya SOP lar ile
	access seviyesi 10 ve üzeri olanlar kendilerinde kullanabilir.

CHAN_HELP_OWNER
	Kullanımı: OWNER [#kanaladi]
	
	Belirtilen kanalda owner statüsü verilir. Eger kanal
	belirtilmemisse bulundugunuz tüm kanallarda size owner
	statüsü verilir. Tabi bu yetkinizin olup olmamasina
	baglidir.
	
	Belirtilen kanal founderlarinin kullanma yetkisi vardir.

CHAN_HELP_DEOWNER
	Kullanımı: DEOWNER [#kanaladi]
	
	Belirtilen kanaldaki owner statünüzü kaldirir. Eger
	kanal belirtilmezse bulundugunuz tüm kanallardaki owner
	statünüzü kaldirir. Tabi bu yetkinizin olup olmamasina
	baglidir.
	
	Belirtilen kanal founderlarinin kullanma yetkisi vardir.

CHAN_HELP_INVITE
	Kullanımı: INVITE kanaladı
	
	%S'e sizi belirtilen kanala davet etmesini söyler.

	Varsayılan olarak AOP lar ile access seviyesi 5 veya
	üzeri olanlar kullanabilir.

CHAN_HELP_UNBAN
	Kullanımı: UNBAN kanaladı
	
	%S'e sizin kanala girmenizi engelleyen tüm banları kaldırmasını
	söyler.

	Varsayılan olarak, AOP lar ile 5 ve üzeri access seviyesi olanlar
	kullanabilir.

CHAN_HELP_KICK
	Kullanımı: KICK [#kanaladı [nick [sebep]]]
	
	Belirtilen nicki kanaldan atar. Eğer nick belirtilmemişse
	sizi atar. Eğer kanal ve nick belirtilmemişse, sizi 
	bulunduğunuz tüm kanallardan atar.
	
	Varsayılan olarak, AOP lar ile access seviyesi 5 ve üzeri
	olanlar bu komutu kullanabilir.

CHAN_HELP_BAN
	Kullanımı: BAN [#kanaladi [nick [sebep]]]
	
	Belirtilen nicki kanaldan banlar. Eger nick belirtilmezse
	sizi banlar. Eger nick ve kanal belirtilmezse sizi bulundugunuz
	tüm kanallardan banlar.
	
	Varsayilan olarak, AOP larin veya 5. seviyeden access i olanlarin
	ve üstünün kullanma yetkisi vardir.

CHAN_HELP_TOPIC
	Kullanımı: TOPIC kanaladi [konu]
	
	%S belirtilen kanala belirtilen konuyu yazar.Eger
	topic belirtilmemisse, bos bir konu yazilir. Bu
	komut SET TOPICLOCK aktif oldugu zaman kullanislidir.
	Daha fazla bilgi için %R%S HELP SET TOPICLOCK
	yazin.
	
	Varsayilan olarak, founderin kullanma yetkisi vardir.

CHAN_HELP_CLEAR
	Kullanımı: CLEAR kanaladı neyi
	
	%S'e belirtilen ayarı kaldırmasını söyler. neyi
	şunlardan biri olmalıdır:
	
	     MODES    Kanal modlarını temizler. (ör. i,k,l,m,n,p,s,t
	                   modlarını temizler).
	     BANS     Kanaldaki tüm banları kaldırır.
	     EXCEPTS  Clears all excepts on the channel.
	     INVITES  Clears all invites on the channel.
	     OPS      Kanal opu statüsünde olanların (mode +o)
	                  oplarını alır.
	     HOPS     Removes channel-halfoperator status (mode +h) from
	                  all channel halfoperators, if supported.
	     VOICES   Voice statüsünde olanların (mode +v) voice larını
	                  alır.
	     USERS    Tüm kullanıcıları kanaldan atar.
	
	Varsayılan olarak, founder tarafindan kullanilabilir.

CHAN_HELP_GETKEY
	Kullanımı: GETKEY kanaladı
	
	Belirtilen kanalın anahtarını söyler. Bu komut botlar
	veya scriptler tarafından kullanılmak üzere tasarlanmıştır,
	ve çıktısı şu şekildedir:
	
	KEY <kanaladı> <anahtar>
	
	Eğer bir anahtar yoksa anahtar kısmında "NO KEY" olacaktır.

CHAN_HELP_SENDPASS
	Kullanımı: SENDPASS kanaladı
	
	Kanalın şifresini founderın nick kayıtlarında belirtilen
	e-mail adresine gönderir. Bu komut kanal şifresini 
	unutanların çok işine yarayacaktır.
	
	Bazı networklerde IRC operatörlerinin Kullanımıyla 
	sınırlandırılmış olabilir.
	
	Bu komut şifreleme(encryption) aktifken devre dışıdır.

CHAN_SERVADMIN_HELP
	
	Servis adminleri kanalın kaydını şifreyle tanıtmadan silebilir,
	ve access, Akick ve seviye ayarlarını görüntüleyebilirler.

CHAN_SERVADMIN_HELP_LOGOUT
	Kullanımı: LOGOUT kanaladı [nick]
	
	Bu komut belirtilen nickin artık belirtilen kanalda
	tanımlanmamasını sağlar.
	
	Eğer kanal founderı iseniz, istediğiniz kişide, değilseniz
	sadece kendinizde bu komutu kullanabilirsiniz.
	
	Eğer Servis admini iseniz, kanal founderı olmanıza gerek
	olmadan istediğiniz kişide bu komutu kullanabilirsiniz.
	Hatta nick parametresini boş bırakarak o kanalda kendini
	kanala tanıtmış herkesi tanımlanmamış yapabilirsiniz.

CHAN_SERVADMIN_HELP_DROP
	Kullanımı: DROP kanaladı
	
	Belirtilen kanalın kaydını siler. Sadece Servis adminleri
	kanalı tanıtmadan kaydını silebilirler.

CHAN_SERVADMIN_HELP_SET
	
	Servis adminleri NOEXPIRE özelliğini ayarlayarak istedikleri
	kanalın zaman aşımına uğramasını engelleyebilirler.
	Ek olarak, Servis adminleri şifreyle kanalı tanıtmaya gerek 
	olmadan bir kanalın tüm özelliklerini ayarlayabilirler.

CHAN_SERVADMIN_HELP_SET_NOEXPIRE
	Kullanımı: SET kanaladı NOEXPIRE {ON | OFF}
	
	Belirtilen kanalın zaman asimina uğrayıp uğramayacağını 
	belirler. Bunu ON olarak ayarlamak kanalın zaman aşımına 
	uğramasını engelleyecektir.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

CHAN_SERVADMIN_HELP_INFO
	
	Servis adminleri herhangi bir kanal için ALL parametresini
	kullanabilirler.

CHAN_SERVADMIN_HELP_LIST
	Kullanımı: LIST model [FORBIDDEN] [NOEXPIRE]
	
	Belirtilen modelle uyuşan tüm kayıtlı kanalları listeler.
	PRIVATE özelliği ayarlı kanallar sadece Servis adminleri
	tarafından görüntülenir. NOEXPIRE özelliği olan kanalların
	yanında Servis adminleri için ! işareti bulunur.
	
	Eğer FORBIDDEN veya NOEXPIRE özellikleri belirtilmişse,
	sadece yasaklı(FORBIDDEN) yada zaman aşımına(NOEXPIRE) 
	uğramayacak kanallar listelenir. Eğer her iki özellikte 
	belirtilmişse, her iki tip kanalda listelenir. Bu komutlar
	Servis adminlerinin Kullanımıyla sınırlıdır.

CHAN_SERVADMIN_HELP_GETPASS
	Kullanımı: GETPASS kanaladı
	
	Belirtilen kanalın şifresini söyler. Unutmayınki bu
	komut ne zaman kullanılsa, Komutu kullananın ve komutta
	kullanılan kanalın adı kaydedilir ve WALLOPS/GLOBOPS olarak
	gönderilir.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

CHAN_SERVADMIN_HELP_FORBID
	Kullanımı: FORBID kanaladı [sebep]
	
	Belirtilen kanalın birisi tarafından kayıt edilmesini veya 
	kullanılmasını önler. Kanal droplanarak iptal edilir.
	
	Bazı networklerde sebep gereklidir.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

CHAN_SERVADMIN_HELP_SUSPEND
	Kullanımı: SUSPEND channel [reason]
	
	Kanalın kullanımını yasaklar.
	Kanalı tekrar açmak icin UNSUSPEND kullanıldıgında
	kanal bilgi ve ayarlarını tekrar kullanıma acar.
	
	Bir cok sunucuda ihtiyac duyulan bir uygulamadır.
	
	Services admins Kullanımı ile sınırlınır.

CHAN_SERVADMIN_HELP_UNSUSPEND
	Kullanımı: UNSUSPEND channel
	
	Kanalı kullanıma açar. Tüm bilgi ve ayarları
	yasaklanmadan önceki hali ile kullanıma sunar.
	
	Services admins Kullanımı ile sınırlınır.

CHAN_SERVADMIN_HELP_STATUS
	Kullanımı: STATUS kanaladı nick
	
	Belirtilen nickin belirtilen kanaldaki access seviyesini
	söyler. Cevabın formatı şu şekildedir:
	
	    STATUS kanaladı nick access-seviyesi
	
	Eğer bir hata olursa, cevabun formatı şöyle olur:
	
	    STATUS ERROR hata-mesajı
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

###########################################################################
#
# MemoServ help messages
#
###########################################################################

MEMO_HELP_CMD_SEND
	    SEND   Nicke veya kanala mesaj gönderir
MEMO_HELP_CMD_CANCEL
	    CANCEL Son gönderilen mesajı iptal eder
MEMO_HELP_CMD_LIST
	    LIST   Mesajlarınızı listeler
MEMO_HELP_CMD_READ
	    READ   Mesajları okumanızı sağlar
MEMO_HELP_CMD_DEL
	    DEL    Mesajları silmenizi sağlar
MEMO_HELP_CMD_SET
	    SET    Mesajlarla ilgili ayarları yapar
MEMO_HELP_CMD_INFO
	    INFO   Mesajlar Hakkında bilgi almanızı saglar
MEMO_HELP_CMD_RSEND
	    RSEND  Taahhutlu mesaj yollamanızı sağlar:)
MEMO_HELP_CMD_CHECK
	    CHECK  Kişinin son mesajını okuyup okumadıgını kontrol eder
MEMO_HELP_CMD_SENDALL
	    SENDALL  Tüm kayıtlı kullanıcılara mesaj yollamanizi saglar
MEMO_HELP_CMD_STAFF
	    STAFF      Tüm görevlilere mesaj yollamanizi saglar

MEMO_HELP_HEADER
	%S kullanıcıların birbirlerine veya kanallara(*) online 
	olmasalar bile mesaj göndermelerini sağlar. Mesaj gönderebilmek
	için gönderenin nicki, gönderilenin nicki veya kanalın kayıtlı
	olması gereklidir.
	
	%S'ün mevcut komutları:
	

MEMO_HELP_ADMIN
	Kullanılmıyor.
MEMO_HELP_OPER
	Kullanılmıyor.
MEMO_HELP_FOOTER
	
	Yukardaki herhangi bir komut hakkında yardım için 
	%R%S HELP komut yazın.
	
	(*) Varsayılan olarak, kanal mesajlarını o kanalda access
	    seviyesi en az 10 olanlar okuyabilir. Bu %s LEVELS 
	    komutuyla değiştirebilir.

MEMO_HELP_SEND
	Kullanımı: SEND {nick | kanaladı} mesaj
	
	Belirtilen nicke veya kanala yazılan mesajı gönderir.
	Nicke gönderirken, gönderilen kişi yeni mesajı olduğuna dair
	bir not alır. Mesaj gönderilen nick/kanal kayıtlı olmalıdır.

MEMO_HELP_CANCEL
	Kullanımı: CANCEL {nick | kanaladı}
	
	Belirtilen kanala yada nicke gönderilen son mesajı iptal eder,
	tabi eğer o mesaj siz komutu kullandığınız sırada okunmamışsa.

MEMO_HELP_LIST
	Kullanımı: LIST [kanaladı] [liste | NEW]
	
	Mevcut mesajlarınızı listeler. NEW parametresi sadece yeni
	okunmamış mesajları listeler. Okunmamış mesajlar mesaj 
	numarasının solunda "*" ile işaretlidir. Aşağıdaki örnekte
	olduğu gibi belirli numaralarıda listeleyebilirsiniz:
	
	   LIST 2-5,7-9
	      2'den 5'e ve 7'den 9'a kadar olan mesajları listeler.

MEMO_HELP_READ
	Kullanımı: READ [kanaladı] {num | liste | LAST | NEW}
	
	Belirtilen mesajları okumanızı sağlar. Eğer LAST belirtilmişse
	en son gelen mesajınızı okursunuz. Eğer NEW belirtilmişse tüm 
	yeni mesajlarını okursunuz. Eğer bir numara belirtirseniz (num)
	o numaraya ait mesajı okursunuz. Aşağıdaki örnekteki gibi belirli
	numaralarıda okuyabilirsiniz:
	
	   READ 2-5,7-9
	      2'den 5'e ve 7'den 9'a kadar olan mesajları gösterir.

MEMO_HELP_DEL
	Kullanımı: DEL [kanaladı] {num | liste | LAST | ALL}
	
	Belirtilen mesajları siler. Aşağıdaki örnekteki gibi birden
	fazla mesajıda silebilirsiniz.
	
	If LAST is given, the last memo will be deleted.
	Eğer ALL parametresi belirtilmişse, tüm mesajlarınız silinir.
	
	Örnekler:
	
	   DEL 1
	      İlk gelen mesajınızı siler.
	
	   DEL 2-5,7-9
	      2'den 5'e ve 7'den 9'a kadar olan mesajları siler.

MEMO_HELP_SET
	Kullanımı: SET özellik parametre
	
	Çeşitli mesaj ayarlarını yapar. özellik aşağıdakilerden 
	biri olabilir:
	
	    NOTIFY      Yeni mesajlarda ne zaman uyarılacağınızı
	                    belirler (sadece nickler içindir)
	    LIMIT       Alabileceğiniz maksimum mesaj sayısını
	                    belirler
	
	Belirli bir özellik hakkında daha fazla bilgi için, 
	%R%S HELP SET özellik yazın.

MEMO_HELP_SET_NOTIFY
	Kullanımı: SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}
	
	Yeni mesajlarda ne zaman uyarılacağınızı belirler:
	
	    ON      Yeni mesajlar için bağlandığınızda, away den 
	               dönüşte ve size gönderildikleri anda 
	               uyarılırsınız.
	    LOGON   Yeni mesajlar için bağlandığınızda ve away den
	               dönüşte uyarılırsınız.
	    NEW     Yeni mesajlar için sadece size gönderildikleri 
	               anda uyarılırsınız.
	    MAIL    You will be notified of memos by email aswell as
	                any other settings you have.
	    NOMAIL  You will not be notified of memos by email.
	    OFF     Yeni mesajlar için herhangi bir uyarı almazsınız.
	
	ON parametresi LOGON ve NEW 'in kombinasyonudur

MEMO_HELP_SET_LIMIT
	Kullanımı: SET LIMIT [kanaladı] limit
	
	Sizin alabileceğiniz (yada belirtilen kanalın) maksimum mesaj
	sayısını belirler. Eğer bunu 0 yaparsanız kimse size mesaj 
	gönderemeyecektir. Ayrıca bu limiti %d den fazla yapamazsınız.

MEMO_HELP_INFO
	Kullanımı: INFO [kanaladı]
	
	Sahip olduğunuz mesaj sayısı, kaç tanesinin okunmadığı, ve 
	alabileceğiniz maksimum mesaj sayısı gibi bilgiler verir.
	Eğer kanaladı parametresi belirtilirse aynı bilgiyi o kanal
	için gösterir.

MEMO_SERVADMIN_HELP_SET_LIMIT
	Kullanımı: SET LIMIT [kullanıcı | kanaladı] {limit | NONE} [HARD]
	
	Bir kullanıcıcn yada kanalın alabileceği maksimum mesaj
	sayısını belirler. Bunu 0 yapmak kullanıcının mesaj almasını 
	engeller; NONE yapmaksa kullanıcının istediği kadar mesaj
	alıp saklamasını sağlar. Eğer kanal veya nick belirtilmezse,
	kendi limitinizi ayarlarsınız.
	
	HARD parametresini eklemek kullanıcının bu limiti değiştirmesini
	engeller. Bunu eklememekde, kullanıcının limiti değiştirmesine izin
	verir. (Bir önceki limit ayarında HARD kullanılmış olsa bile).
	
	SET LIMIT komutunun Kullanımı Servis adminleriyle sınırlıdır.
	Diğer kullanıcılar limitlerini kaldıramaz, %d üzeri bir limit 
	belirleyemez, ve hard limitini ayarlayamaz. Sadece gerekli 
	ayrıcalıkları varsa bir kanalın mesaj limitini ve kendi mesaj
	limitlerini ayarlayabilirler.

MEMO_SERVADMIN_HELP_INFO
	Kullanımı: INFO [nick | kanaladı]
	
	Parametre kullanılmazsa, sahip olduğunuz mesajları, kaç 
	tanesinin okunmamış olduğunu, ve toplam kaç tane mesaj 
	alabileceğiniz hakkında bilgiler verir.
	
	Kanaladı parametresiyle, aynı bilgiyi belirtilen kanal
	için verir.
	
	Nick parametresiyle, aynı bilgiyi belirtilen nick için
	verir. Kullanımı Servis adminleriyle sınırlıdır.

###########################################################################
#
# OperServ help messages
#
###########################################################################

MEMO_HELP_STAFF
	Kullanımı: STAFF memo-text

	Tüm servis görevlilerine  memaj yollamanızı saglar.
	Note: If you have opers on both the oper list and the
	admin list they will recive the memo twice.  The same
	applies for oper's on the Root list as well as other
	lists.

###########################################################################
#
# OperServ help messages
#
###########################################################################

MEMO_HELP_SENDALL
	Kullanımı: SENDALL mesaj

	Tüm kayıtlı kullanıcılara mesaj yollamanızı saglar.

###########################################################################
#
# OperServ help messages
#
###########################################################################

MEMO_HELP_RSEND
	Kullanımı: RSEND {nick | channel} memo-text
	
	Bir nick veya kanal mesaj yollayabilirsiniz
	memo-text.  Bir rumuza yolladıgınız zaman 
	Kişi yeni mesaj aldıgına dair uyarılır. Yollanan hedef
	kayıtlı bir rumuz veya kanal olmalıdır.
	Mesaj okundugu zaman yollayan kişiye, okuyan kişilerin okuduguna dair
	bir uyari bilgisi iletilir.
	Bir baska deyiş ile iadeli taahhutlu mektup gibidir.:)

###########################################################################
#
# OperServ help messages
#
###########################################################################

MEMO_HELP_CHECK
	Kullanımı: CHECK nick
	
	Yollanan rumuzun son mesajı okudugunu veya okumadıgını gosterir
	Not: Sadece rumuzlarda kullanılır, kanal mesajlarında geçerli degildir.

###########################################################################
#
# OperServ help messages
#
###########################################################################

OPER_HELP_CMD_GLOBAL
	    GLOBAL      Tüm kullanıcılara mesaj gönderir
OPER_HELP_CMD_STATS
	    STATS       Servislerin ve networkun durumunu gösterir
OPER_HELP_CMD_OPER
	    OPER        Servis operatör listesini düzenler
OPER_HELP_CMD_ADMIN
	    ADMIN       Servis adminleri listesini düzenler
OPER_HELP_CMD_STAFF
	    STAFF       Sunucu görevlilerini durumlarına göre listeler
OPER_HELP_CMD_MODE
	    MODE        Bir kanalın modlarını değiştirir
OPER_HELP_CMD_KICK
	    KICK        Bir kullanıcıyı kanaldan atar
OPER_HELP_CMD_CLEARMODES
	    CLEARMODES  Bir kanalın modlarını temizler
OPER_HELP_CMD_KILLCLONES
	    KILLCLONES  Ayni ip'deki tum kullanicilari kill'ler.
OPER_HELP_CMD_AKILL
	    AKILL       AKILL listesini düzenler
OPER_HELP_CMD_SGLINE
	    SGLINE      SGLINE listesini düzenler
OPER_HELP_CMD_SQLINE
	    SQLINE      SQLINE listesini düzenler
OPER_HELP_CMD_SZLINE
	    SZLINE      SZLINE listesini düzenler
OPER_HELP_CMD_CHANLIST
	    CHANLIST    Tüm kanal kayıtlarını listeler
OPER_HELP_CMD_USERLIST
	    USERLIST    Tüm kullanıcı kayıtlarını listeler
OPER_HELP_CMD_LOGONNEWS
	    LOGONNEWS   Bağlantı sırasında kullanıcının göreceği mesajı 
	                belirler
OPER_HELP_CMD_RANDOMNEWS
	    RANDOMNEWS  Baglanti sirasina kullaniciya gönderilen karisik
	                mesajlari belirler
OPER_HELP_CMD_OPERNEWS
	    OPERNEWS    Oper olan kullanıcıların görüntüleyeceği mesajı 
	                belirler
OPER_HELP_CMD_SESSION
	    SESSION     Host session(oturum) ların listesini gösterir
OPER_HELP_CMD_EXCEPTION
	    EXCEPTION   Session-limit exception listesini düzenler
OPER_HELP_CMD_NOOP
	    NOOP        Geçici olarak tüm O:line ları kaldırır
OPER_HELP_CMD_JUPE
	    JUPE        Bir server'ı "Kullanılmaz" yapar
OPER_HELP_CMD_IGNORE
	    IGNORE      Servis engel listesini düzenler
OPER_HELP_CMD_SET
	    SET         Çeşitli global servis özelliklerini ayarlar
OPER_HELP_CMD_RELOAD
	    RELOAD      Servislerin conf dosyasını yeniden yükler
OPER_HELP_CMD_UPDATE
	    UPDATE      Diskteki Servis veritabanının hemen
	                güncellenmesini sağlar

OPER_HELP_CMD_RESTART
	    RESTART     Veritabanını kaydeder ve servisleri yeniden 
	                başlatır

OPER_HELP_CMD_QUIT
	    QUIT        Servis programını kapatır
OPER_HELP_CMD_SHUTDOWN
	    SHUTDOWN    Servisler programını kayıt ederek kapatır
OPER_HELP_CMD_DEFCON
	    DEFCON      DEFCON sistemini elle düzenlemenizi sağlar
OPER_HELP_CMD_CHANKILL
	    CHANKILL    Secilen kanaldaki tüm kullanıcıları sunucudan atar
OPER_HELP_CMD_OLINE
	    OLINE       Eklenen rumuza oper yetkisi verir
OPER_HELP_CMD_UMODE
	    UMODE       Kullanıcının modlarını degiştirir
OPER_HELP_CMD_SVSNICK
	    SVSNICK     Kişi nickini zorla değiştirir
OPER_HELP_CMD_MODLOAD
	    MODLOAD     Eklenti yükler
OPER_HELP_CMD_MODUNLOAD
	    MODUNLOAD   Eklenti kaldırır
OPER_HELP_CMD_MODINFO
	    MODINFO     Eklentinin bilgilerini verir
OPER_HELP_CMD_MODLIST
	    MODLIST     Eklentileri listeler

OPER_HELP
	%S komutlar:

OPER_HELP_LOGGED
	Not: %S'e gönderilen tüm komutların kaydı tutulur!

OPER_HELP_GLOBAL
	Kullanımı: GLOBAL mesaj
	
	IRCopların networkteki tüm kullanıcılara mesaj yollamasını
	sağlar. Mesajlar %s nickinden gönderilir.

OPER_HELP_STATS
	Kullanımı: STATS [AKILL | ALL | RESET]
	
	Hiçbir parametre yokken, mevcut kullanıcı sayısını ve online
	olan IRCopları(Servisler hariç), Servisler başlatıldığından 
	beri bağlı olan en fazla kullanıcı sayısını, ve servislerin
	çalışma süresini gösterir.
	
	AKILL parametresiyle, mevcut AKILL listesini ve o anki 
	varsayılan zaman aşımı süresini gösterir.
	
	ALL parametresi sadece Servis adminleri tarafından 
	kullanılabilir, ve servislerin kullandığı hafıza(memory) 
	hakkında bilgi verir. Büyük networklerde bu komutun kullanılması
	servisleri kısa bir süre dondurabilir, bu yüzden tekrar kullanmaya
	kalkmayın!
	
	RESET parametresi önceki maksimum kullanıcı sayısını o anda
	networkte bulunan kullanıcı sayısıyla değiştirir.
	
	UPTIME komutu STATS komutunun alternatifi olarak kullanılabilir.

OPER_HELP_OPER
	Kullanımı: OPER ADD nick
	           OPER DEL {nick | kayıt-num | liste}
	           OPER LIST [mask | liste]
	           OPER CLEAR
	
	Servis Root Servis operatörleri listesine belirtilen 
	nicki ekleyip çıkarmasını sağlar. Nicki Servis operatörleri
	listesinde olan ve kendini %s ile tanıtmış olan kullanıcılar
	Servis operatörleri komutlarını kullanabilir.
	
	OPER ADD komutu belirtilen nicki servis operatörleri listesine
	ekler.
	
	OPER DEL komutu belirtilen nicki servis operatörleri listesinden
	siler. Eğer bir kayıt numarası listesi verilmişse, bu kayıtlar
	silinir. (Aşağıdaki LIST ile ilgili örneği inceleyin.)
	
	OPER LIST komutu servis operatörleri listesini görüntüler.
	Eğer yıldızlı(wildcard) bir mask belirtilirse, sadece o maskla
	uyuşan kayıtlar listelenir. Eğerbir kayıt numarası listesi 
	belirtilirse, sadece o kayıtlar gösterilir; Örneğin:
	
	   OPER LIST 2-5,7-9
	      Servis operatörlerinden kaydı 2 den 5 e ve 7 den 9 a
	      kadar olanlar listelenir.
	
	OPER CLEAR komutu servis operatörleri listesindeki tüm kayıtları
	siler.
	
	Herhangi bir IRC operatörü OPER LIST komutunu kullanabilir.

OPER_HELP_ADMIN
	Kullanımı: ADMIN ADD nick
	           ADMIN DEL {nick | kayıt-num | liste}
	           ADMIN LIST [mask | liste]
	           ADMIN CLEAR
	
	Servis root unun Servis adminleri listesine 
	belirtilen nicki ekleyip çıkarmasını sağlar. Nicki Servis 
	adminleri listesinde olan ve kendini %s ile tanıtmış olan
	kullanıcı Servis adminlerini komutlarını kullanabilir.
	
	ADMIN ADD komutu servis adminleri listesine belirtilen nicki
	ekler.
	
	ADMIN DEL komutu belirtilen nicki servis adminleri listesinden
	siler. Eğer kayıt numaraları listesi verilmişse, bu kayıtlar 
	silinir. (Aşağıdaki LIST örneğini inceleyin.)
	
	ADMIN LIST komutu servis adminleri listesini görüntüler.
	Eğer yıldızlı(wildcard) bir mask belirtilmişse, sadece bu
	maskla uyuşan kayıtlar görüntülenir. Eğer bir kayıt numarası 
	listesi belirtilmişse, sadece o kayıtlar gösterilir; Örneğin:
	
	   ADMIN LIST 2-5,7-9
	      Servis adminleri kayıtlarından 2 den 5 e ve 7 den 9 a
	      kadar olanlar listelenir.
	      
	ADMIN CLEAR komutu tüm servis adminlerinin kayıtlarını siler.

	Herhangi bir IRC operatörü ADMIN LIST komutunu kullanabilir.
	Diğer tüm ADMIN komutlarını Servis rootları kullanabilir.

OPER_HELP_IGNORE
	Kullanımı: IGNORE {ADD|DEL|LIST|CLEAR} [time] [nick | mask]
	
	Servis adminler tarafından kullanılır. 
	Belirli bir süre veya servisler yeniden başlatılana kadar kişinin servisler tarafından
	engellenmesini sağlar. Varsayılan zaman degeri saniyedir.
	Eğer farklı zaman bicimleri istenir ise: saniye icin s,dakika icin m, 
	saat icin h ve gün icin d kullanılabilir. 
	Birleşik kombinasyonlar desteklenmez.
	Kişiyi servislerden tamamen engellemek icin, 0 girdisi belirtilmelidir.
	Eger mask kullanılacak ise, user@host
	veya nick!user@host,.
	kullanılmalıdır.
	
	Engelleme IRC Operatorleri tarafından kullanılamaz.

OPER_HELP_MODE
	Kullanımı: MODE kanaladı modlar
	
	Servis operatörlerinin herhangi bir kanalın modlarını
	ayarlamasını sağlar. Parametreler standart /MODE komutununkiyle
	aynıdır.
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_UMODE
	Kullanımı: UMODE user modes
	
	Super Admins kullanımına acık olmakla beraber.
	standart /MODE komutu gerine kullanılan komuttur.
	Secilen kişinin modlarını degiştirmek icin kullanılır.

OPER_HELP_OLINE
	Kullanımı: OLINE user flags
	
	Super Admins kullanımına acıktır kişiye Oper yetkisi verir.
	Seçilen parametreler "+" veya "-" şeklinde belirtilmelidir. 
	tüm modları snomaskları kaldırmak icin  "-" kullanılabilir.

OPER_HELP_CLEARMODES
	Kullanımı: CLEARMODES kanaladı [ALL]
	
	Bir kanaldaki tüm modları (i,k,l,m,n,p,s,t) ve banları
	temizler. Eğer ALL parametresi belirtilmişse, tüm
	opları (+o) ve voiceları (+v) temizler.
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_KICK
	Kullanımı: KICK kanaladı kullanıcı sebep
	
	IRCopların herhangi bir kullanıcıyı kanaldan atmalarını
	sağlar. Parametreler standart /KICK komutununkiyle aynıdır.
	Kick mesajında komutu kullanan IRCop un nickide belirtilir.
	Örneğin:
	
	*** SpamMan has been kicked off channel #my_channel by %S (MJJ (Flood))
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SVSNICK
	Kullanımı: SVSNICK nick newnick
	
	Kişinin rumuzunu degiştirmek icin kullanılır.
	Super Admins kullanımı icindir.

OPER_HELP_AKILL
	Kullanımı: AKILL ADD [+zamanaşımı] mask sebep
	           AKILL DEL {mask | kayıt-no | liste}
	           AKILL LIST [mask | liste]
	           AKILL VIEW [mask | liste]
	           AKILL CLEAR
	
	Servis operatörlerinin AKILL listesini işletmesini sağlar.
	Eğer AKILL listesineki mask la uyuşan bir kullanıcı
	bağlanmaya çalışırsa, Servisler o kullanıcıyı KILL ler ve,
	destekleyen server tiplerinde, tüm serverların o maska K-line
	koymasını sağlar.
	
	AKILL ADD belirtilen user@host maskını AKILL listesine
	belirtilen sebeple(mutlaka belirtilmelidir) birlikte
	ekler. AKILL DEL belirtilen maskı eğer listedeyse AKILL 
	listesinden çıkarır. AKILL LIST mevcut tüm AKILL leri
	gösterir; eğer opsiyonel olarak mask belirtilmişse, AKILL
	listesi belirtilen maskla uyuşanlarla sınırlandırılır. 
	
	AKILL VIEW, AKILL LIST in daha açıklayıcı versiyonudur, 
	ve AKILL i ekleyeni, eklenme tarihini, ne zaman sona ereceğini,
	user@host maskıyla ve sebeple birlikte gösterir.
	
	Opsiyonel olarak, zaman aşımı süresi AKILL ADD komutuyla
	birlikte belirtilebilir. Zaman aşımı süresi user@host maskından
	önce gelir, ve bir tamsayı olarak şunlardan birinden önce gelir, 
	d (gün), h (saat), veya m (dakika). 1h30m gibi kombinasyonlar 
	kullanılamaz. Eğer birim belirleyici belirtilmemişse varsayılan 
	olarak gün kullanılır (yani +30 un anlamı 30 gündür). Zaman 
	aşımına uğramayacak bir AKILL eklemek için +0 kullanın. Eğer 
	eklenecek mask + ile başlarsa zaman aşımı süresi belirtilmelidir. 
	Mevcut varsayılan AKILL zaman aşımı süresi STATS AKILL komutuyla 
	bulunabilir.

	AKILL CLEAR AKILL listesindeki tüm kayıtları siler.
	
	sebep sadece IRC operatörleri tarafından kullanılmak içindir,
	ve kullanıcıların KILL mesajlarında gözükmez.
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SGLINE
	Kullanımı: SGLINE ADD [+zamanaşımı] mask:sebep
	         SGLINE DEL {mask | kayıt-no | liste}
	           SGLINE LIST [mask | liste]
	           SGLINE VIEW [mask | liste]
	           SGLINE CLEAR
	
	Servis operatörlerinin SGLINE listesi oluşturmalarını sağlar.
	Eğer SGLINE listesindeki bir kullanıcı gerçek ismi(realname)
	servera bağlanmaya çalışan bir kullanıcınınkiyle uyuşuyorsa
	o kullanıcının servera bağlanması engellenir.
	
	SGLINE ADD komutu belirtilen realname(gerçek isim) mask ını
	SGLINE listesine bir sebeple(belirtilmesi zorunludur) 
	birlikte ekler.
	zamanaşımı zaman belirleyici olarak tanımlanır ve şunlar birini
	takip etmelidir: d (gün), h (saat), veya m (dakika). 1h30m
	şeklindeki kombinasyonlar kullanılamaz. Eğer zaman tanımlayıcı öğe
	konulmazsa varsayılan olarak gün kabul edilir (yani +30 un manası
	30 gündür). Zaman aşımına uğramayacak bir SGLINE eklemek için +0
	kullanın.  Eklenecek realname mask ı + ile başlıyorsa, o zaman
	zaman aşımı süresi varsayılanla aynı olsa bile belirtilmelidir.
	Mevcut SGLINE varsayılan zaman aşımı süresi STATS AKILL komutuyla
	bulunabilir.
	Not: realname maskı boşluk içerebileceğinden bunla sebep arasında iki
	nokta üstüste(:) kullanılmalıdır.
	
	SGLINE DEL komutu belirtilen maskı(eğer listede mevcutsa) SGLINE 
	listesinden siler. eğer bir kayıt numaraları listesi belirtilmişse
	o kayıtlar silinir. (Aşağıdaki LIST için verilmiş örneği inceleyin.)
	
	SGLINE LIST komutu SGLINE listesini görüntüler. Eğer bir yıldızlı
	mask verilmişse, sadece o maskla uyuşan kayıtları içeren bir liste
	görüntülenir.  Eğer bir kayıt numaraları listesi belirtilmişse,
	sadece o kayıtlar görüntülenir; örneğin:
	
	   SGLINE LIST 2-5,7-9
	      2 den 5 e 7 den 9 a kadar olan SGLINE kayıtlarını listeler.
	      
	SGLINE VIEW komutu SGLINE LIST komutunun daha açıklayıcı bilgi 
	veren şeklidir, ve SGLINE ı kimin eklediğini, eklendiği tarihi, ve
	ne zaman sona ereceğini realname ve sebeple birlikte gösterir.
	
	SGLINE CLEAR komutu SGLINE listesindeki tüm kayıtları siler.
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SQLINE
	Kullanimi: SQLINE ADD [+zamanasimi] mask sebep
	           SQLINE DEL {mask | kayit-no | liste}
	           SQLINE LIST [mask | liste]
	           SQLINE VIEW [mask | liste]
	           SQLINE CLEAR
	
	Servis adminlerinin SQLINE listesini yönetmelerini saglar.
	Eger SQLINE listesindeki masklardan biriyle uyusan bir nick
	servera baglanmaya çalisirsa, servisler buna izin vermezler.
	
	eger maskin ilk karakteri # ise servisler onla uyusan 
	kanallarin kullanilmasina izin vermezler. (destekleyen IRCd
	yazilimlarinda geçerlidir).
	
	SQLINE ADD belirtilen maski belirtilen sebeple (mutlaka
	belirtilmelidir) birlikte SQLINE listesine ekler. zaman asimi
	ardinda d (gün), h (saat), veya m (dakika) olan bir sayi
	olmalidir..  1h30m seklindeki kombinasyonlar geçersizdir.
	eger son ekleme harfi belirtilmemisse, varsayilan olarak gün
	kullanilir. (yani +30 30 gün demektir). Zaman asimina ugramasini
	istemediginiz bir SQLINE eklemek için +0 kullanin.  
	Egegr eklenecek maskin basinda + varsa, zaman asimi süresi
	belirtilmelidir, aksi halde zaman asimi süresi varsayilanla ayni
	olacaktir. Mevcut SQLINE varsayilan zaman asimi süresi STATS AKILL
	komutuyla bulunabilir.
	
	SQLINE DEL komutu belirtilen maski SQLINE listesinden siler.
	Eger kayit numaralari listesi belirtilmisse, o kayitlari siler.
	(Asagidaki örnegi inceleyin.)
	
	SQLINE LIST komutu SQLINE listesini gösterir. Egegr bir mask
	belirtilmisse, maskla uyusan kayitlar gösterilir. Egegr kayit
	numaralari listesi belirtilmisse, o numaralara karsilik olan
	kayitlar gösterilir; örnegin:

	   SQLINE LIST 2-5,7-9
	      2 den 5 e ve 7 den 9 a kadar olan SQLINE kayitlari
	      gösterilir.
	      
	SQLINE VIEW komutu SQLINE LIST komutunun daha gelismisidir,
	ve SQLINE kaydini ekleyeni, eklendigi tarihi, süresinin ne zaman
	bitecegini, mask ve sebeple beraber gösterir.
	
	SQLINE CLEAR SQLINE listesindeki tüm kayitlari temizler.
	
	Servis operatörlerinin kullanimiyla sinirlidir.

OPER_HELP_SZLINE
	Kullanımı: SZLINE ADD [+zamanaşımı] mask sebep
	           SZLINE DEL {mask | kayıt-no | liste}
	           SZLINE LIST [mask | liste]
	           SZLINE VIEW [mask | liste]
	           SZLINE CLEAR
	
	Servis operatörlerinin SZLINE listesi oluşturmalarını sağlar.
	Eğer SZLINE listesindeki bir IP numarasıyla uyuşan bir kişi
	servera bağlanmaya çalışırsa buna izin verilmez. (ve bu IP
	numarası PTR RR olsada olmasada gerçekleştirilir).
	
	SZLINE ADD komutu belirtilen IP maskını SZLINE listesine
	belirtilen bir sebeple(ki mutlaka belirtilmelidir) birlikte
	ekler. zamanaşımı zaman belirleyici olarak tanımlanır ve 
	şunlardan birini takip etmelidir: d (gün), h (saat), veya
	m (dakika). 1h30m şeklindeki kombinasyonlar kullanılamaz.
	Eğer zaman tanımlayıcı öğe belirtilmemişse, varsayılan olarak
	gün kullanılır (yani +30 30 gün demektir).  Zaman aşımına 
	uğramayacak bir SZLINE eklemek için +0 kullanın.  Eğer
	eklenecek realname maskı + ile başlıyorsa, zaman aşımı süresi
	varsayılanla aynı olsa bile belirtilmelidir. Mevcut SZLINE 
	varsayılan zaman aşımı süresi STATS AKILL komutuyla öğrenilebilir.
	
	SZLINE DEL komutu belirtilen maskı eğer mevcutsa SZLINE 
	listesinden siler. Eğer kayıt numaraları listesi belirtilmişse,
	bu kayıtlar silinir. (LIST için verilmiş aşağıdaki örneği inceleyin.)
	
	SZLINE LIST komutu SZLINE listesini görüntüler. Eğer yıldızlı bir
	mask belirtilmişse, sadece o maskla uyuşan kayıtlar görüntülenir.
	Eğer kayıt numaraları listesi belirtilmişse, sadece o kayıtlar 
	gösterilir;  örneğin:
	
	   SZLINE LIST 2-5,7-9
	      2 den 5 e 7 den 9 a kadar olan kayıtları görüntüler.
	      
	SZLINE VIEW komutu SZLINE LIST komutunun daha geniş bilgi veren 
	bir şeklidir, ve SZLINE ı kimin eklediğini, eklendiği tarihi, ve ne
	zaman sona ereceğini, IP maskı ve sebeple birlikte görüntüler.
	
	SZLINE CLEAR komutu SZLINE listesindeki tüm kayıtları siler.
	
	Servis operatörlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SET
	Kullanımı: SET özellik ayar
	
	Çeşitli global servis özelliklerini ayarlar.  Özellikler
	aşağıda tanımlanmıştır:
	    READONLY   Read-only ve read-write modunu ayarlar
	    LOGCHAN    Report log messages to a channel
	    DEBUG      Debug modunu aktifleştirir yada kapatır
	    NOEXPIRE   No expire modunu aktifleştirir yada kapatır
	    SUPERADMIN Activate or deactivate super-admin mode
	    SQL   	 Activate or deactivate sql mode
	    IGNORE     Activate or deactivate ignore mode
	    LIST       List the options
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SET_READONLY
	Kullanımı: SET READONLY {ON | OFF}
	
	Read-only modunu açar yada kapatır. Read-only modunda,
	normal kullanıcılar herhangi bir servis verisini değiştiremezler,
	bunun içinde kanal ve nick access listeleri v.s. vardır.
	Yeterli ayrıcalıkları olan IRCoplar servislerin AKILL listesini
	değiştirebilir, nicklerin ve kanalların kaydını silebilir yada 
	yasaklayabilir, fakat değişiklikler servisler kapatılmadan yada
	tekrar başlatılmadan önce read-only modu kapatılmazsa kaydedilmez.
	
	-readonly komut satırı özelliğiyle aynıdır.

OPER_HELP_SET_LOGCHAN
	Kullanımı: SET LOGCHAN {ON | OFF}

	Bu ayar servis kayıtlarnının bir kanala aktarılmasının baslatılması
	icin kullanılır. Kayıtlar kayıt dosyasına işlenmesi istenilmis işlemlerdir. LogChannel 
	Servis ayar dosyasi servies.conf'ta tanımlanır. Bir tanımlama 
	Bulunmuyor ise bu özellik aktif edilemez.
	
	Bu ozellik -logchan seklındede kullanılabilir.

	Not: Bu Özellik kanal iyi korunmaz ise cok büyük bir güvenlik açıgı ortaya cıkartır, 
	kanalı yeterince iyi koruyamıyorsaniz aktif etmeyiniz. Unutmayın neredeyse tüm işlemler bu kanala yansitilacaktir.

OPER_HELP_SET_DEBUG
	Kullanımı: SET DEBUG {ON | OFF | num}
	
	Debug modunu açar yada kapatır. Debug modunda, servislere 
	gönderilen ve alınan tüm veriler diğer bir kaç debug 
	mesajlarıyla beraber bir kayıt dosyasına yazılır. Eğer num 
	parametresi belirtilmişse, debug modu num a bağlı debug 
	seviye ayarı ile aktifleştirilir.
	
	-debug komut satırı özelliğiyle aynıdır.

OPER_HELP_SET_NOEXPIRE
	Kullanımı: SET NOEXPIRE {ON | OFF}
	
	No expire modunu açar yada kapatır. No expire modunda,
	nickler, kanallar, akiller, ve exceptionlar mod kapanana
	kadar zaman aşımına uğramazlar.
	
	-noexpire komut satırı özelliğiyle aynıdır.

OPER_HELP_SET_SUPERADMIN
	Kullanımı: SET SUPERADMIN {ON | OFF}

	Bu özellik ekstra yetkilendirme anlamına gelir
	Süper admin olan kisi herşeyin "founder" (sahibi) konumuna gecer...

	Bu önerilen bir özellik degildir, Eğer yinede ihtiyaç duyarsaniz
	isteginizi gerceklestirdikten sonra uzun süre bağlı kalmadan  cıkış yapmanizi öneririz.

OPER_HELP_SET_SQL
	Kullanımı: SET SQL {ON | OFF}

	Bu ayar Anope ile Sql sunucunuzun birbirine baglanmasını saglar,
	Bu özellik Sql sunucunun servisler açıkken düşmesi sonucu
	tekrar bağlantı kurulması icin kullanılır.

OPER_HELP_SET_IGNORE
	Kullanımı: SET IGNORE {ON | OFF}

	Anope ignore sisteminin aktif veya pasif konuma alınmasını 
	sağlar.

OPER_HELP_SET_LIST
	Kullanımı: SET LIST

	Secilen %S parametresi ile ilgili yardim icin kullanılır

OPER_HELP_NOOP
	Kullanımı: NOOP SET server
	           NOOP REVOKE server
	
	NOOP SET komutu belirtilen serverdaki tüm O:line ları
	siler ve tüm ircopları rehash komutunu kullanıp komutun
	etkisini yok etmemeleri için killer.
	
	NOOP REVOKE komutu belirtilen serverdaki tüm kaldırılmış
	O:line ları yeniden oluşturur.
	
	Not: server parametresinin doğruluğu servisler tarafından
	kontrol edilmez.
	
	Services adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_JUPE
	Kullanımı: JUPE server [sebep]
	
	Servislere bir serverın Jupiter yapılmasını söyler. -- Bu,
	servislere bir sahte server bağlayarak, gerçek serverın o 
	isimden bağlanmasını engeller. JUPE modu standart SQUIT
	kullanılarak kaldırılabilir. Eğer sebep belirtilmişse,
	bu server bilgi satırına yazılır; belirtilmezse server bilgi
	satırında "Jupitered by <nick>" yazısı yer alır, ve serverı 
	jupiter edenin nicki yazılır.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_RAW
	Kullanımı: RAW yazı
	
	Servislerin bağlı olduğu server a direk bir yazı gönderir.
	Bu komutun kullanım alanları sınırlıdır, ve yanlış kullanılırsa
	networkte çok büyük hasara yol açabilir. Tam olarak ne 
	yaptığınızı bilmiyorsanız BU KOMUTU KULLANMAYIN!
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_UPDATE
	Kullanımı: UPDATE
	
	Komutu gönderir gönderirmez servislerin tüm veri tabanı 
	dosyalarını güncellemelerini sağlar.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_RELOAD
	Kullanımı: RELOAD
	
	Servislerin conf dosyasını yeniden yüklemesine neden olur.
	Unutmayınki bazı direktifler hala servislerin yeniden 
	başlatılmasını gerektirir. (Servislerin nickleri, session 
	limitinin aktifleştirilmesi, etc.)
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_QUIT
	Kullanımı: QUIT
	
	Servislerin birden kapanmasına neden olur; veritabanları
	kaydedilmez. Bu komut veritabanlarının hafızadaki 
	kopyalarına zarar gelmesinden korkuluyorsa ve 
	yedeklenmemişlerse kullanılmamalıdır. Normal kapatmalar 
	için, SHUTDOWN komutunu kullanın.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_SHUTDOWN
	Kulanımı: SHUTDOWN
	
	Servislerin tüm veritabanlarını kaydederek kapanmasını sağlar.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_RESTART
	Kullanımı: RESTART
	
	Servislerin tüm veritabanlarını kaydederek yeniden 
	başlamasını sağlar.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.	

OPER_HELP_CHANLIST
	Kullanımı: CHANLIST [{model | nick} [SECRET]]
	
	Networkte o an kullanılan kanalları kayıtlı olsun olmasın 
	listeler.
	
	Eğer model belirtilmişse, onla uyuşan kanalları listeler. 
	Eğer nickname belirtilmişse, o kullanıcının bulunduğu 
	kanalları listeler. Eğer SECRET belirtilmişse, sadece model
	le uyuşan ve +s veya +p modunda olan kanallar listelenir.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_USERLIST
	Kullanımı: USERLIST [{model | kanaladı} [INVISIBLE]]
	
	Networkte o an bulunan tüm kullanıcıları kayıtlı olsun olmasın 
	listeler.
	
	Eğer model belirtilmişse, onla uyuşan kullanıcıları listeler
	(nick!user@host formatında olmalıdır). Eğer kanaladı 
	belirtilmişse, sadece o kanalda bulunan kullanıcıları listeler.
	Eğer INVISIBLE belirtilmişse, sadece +i modundaki kullanıcılar 
	listelenir.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

OPER_HELP_MODLOAD
	Kullanımı: MODLOAD FileName

	Eklentileri yüklenemek icin eklenti ismi ile beraber
	kullanılır.

	Services Roots kullanımı icindir.

OPER_HELP_MODUNLOAD
	Kullanımı: MODUNLOAD FileName

	Yüklü olan bir eklentiyi kaldırmak icin eklenti adı belirtilerek
	kullanılır.

	Services Roots kullanımı icindir.

OPER_HELP_MODINFO
	Kullanımı: MODINFO FileName

	Eklenti hakkında bilgi almak icin kullanılır

	Services Roots kullanımı icindir.

OPER_HELP_MODLIST
	Kullanımı: MODLIST [Core|3rd|protocol|encryption|supported|qatested]

	Eklentileri listelemek icin kullanılabilir.

	Services Roots kullanımı icindir.


###########################################################################
#
# BotServ help messages
#
###########################################################################


BOT_HELP_CMD_BOTLIST
	BOTLIST            Mevcut botları listeler
BOT_HELP_CMD_ASSIGN
	ASSIGN             Kanala bot sokar
BOT_HELP_CMD_SET
	SET                Bot özelliklerini ayarlar
BOT_HELP_CMD_KICK
	KICK               Atma özelliklerini ayarlar
BOT_HELP_CMD_BADWORDS
	BADWORDS           Küfür listesi oluşturur
BOT_HELP_CMD_ACT
	ACT                Bota "/me" komutu şeklinde mesaj göndermek icin kullanılır
BOT_HELP_CMD_INFO
	INFO               Bir kanal veya bot hakkında bilgi almak icin kullanılır
BOT_HELP_CMD_SAY
	SAY                Botun yazılan yazıyı kanala yollamasını saglar
BOT_HELP_CMD_UNASSIGN
	UNASSIGN           botu kanaldan cıkartır
BOT_HELP_CMD_BOT
	BOT                Networkün bot listesini düzenler

BOT_HELP
	%S kanalınızda bir botunuzun olmasını sağlar. Bu
	servis bot konfigürasyonundan anlamayanlar yada
	bota izin vermeyen networkler için geliştirilmiştir.
	Mevcut komutlar aşağıda listelenmiştir. Kullanmak için
	%R%S command yazın. Belirli bir komut hakkında
	daha fazla bilgi için, %R%S HELP komut
	yazın.
	
BOT_HELP_FOOTER
	Kanalda en az %d kullanıcı olduğu zaman bot kanala girer.

BOT_HELP_BOTLIST
	Kullanımı: BOTLIST
	
	Networkte mevcut olan tüm botları listeler.

BOT_HELP_ASSIGN
	Kullanımı: ASSIGN kanaladı botunnicki
	
	Belirtilen nickteki botu belirtilen kanala sokar. Bundan 
	sonra botun ayarlarını ihtiyaçlarınıza uygun şekilde 
	yapabilirsiniz.

BOT_HELP_UNASSIGN
	Kullanımı: UNASSIGN kanaladı
	
	Belirtilen kanaldan botu çıkarır. Bu komutu kullandıktan
	sonra bot bir daha kanala girmeyecektir. Fakat yapılmış bot
	ayarları saklanır, böylece istediğinz zaman tekrar ayar 
	yapmaya gerek olmadan kanala bot sokabilirsiniz.

BOT_HELP_INFO
	Kullanımı: INFO {kanaladı | botunnicki}
	
	Bir kanal yada bot hakkında %S bilgisini gösterir. Eğer
	parametre kanalsa, aktif atma özellikleri hakkında bilgi
	alırsınız. Eğer parametre nickse, bot hakkında yaratılma 
	zamanı veya bulunduğu kanal sayısı gibi bilgiler alırsınız.

BOT_HELP_SET
	Kullanımı: SET kanaladı özellik parametre
	
	Bot özelliklerini ayarlar. özellik şunlardan biri olabilir:
	
	    DONTKICKOPS      Botun atmasına karşı opları korur
	    DONTKICKVOICES   Botun atmasına karşı voice ları korur
	    GREET            Greet mesajını aktifleştirir
	    FANTASY          Fantazi komutlarını aktifleştirir
	    SYMBIOSIS        Gerçek bot gibi davranmasını sağlar.
	
	Belirli bir komut hakkında daha fazla bilgi için 
	%R%S HELP SET özellik yazın.
	
	Not: Bu komuta access erişimi seviye(level) ayarıyla sağlanır.

BOT_HELP_SET_DONTKICKOPS
	Kullanımı: SET kanaladı DONTKICKOPS {ON|OFF}
	
	Kanalda op korumasını açar yada kapatır.
	Aktifleştirildiği zaman, oplar bot tarafında NOKICK
	seviyeleri olmasalar bile atılmazlar.

BOT_HELP_SET_DONTKICKVOICES
	Kullanımı: SET kanaladı DONTKICKVOICES {ON|OFF}
	
	Kanalda voice korumasını açar yada kapatır.
	Aktifleştirildiği zaman, voice lar bot tarafından
	NOKICK seviyeleri olmasalar bile atılmazlar.

BOT_HELP_SET_FANTASY
	Kullanımı: SET kanaladı FANTASY {ON|OFF}
	
	Kanalda fantazi modunu açar yada kapatır.
	Aktifleştirildiği zaman, kulanıcılar kanalda
	!op, !deop, !voice, !devoice, !kick, !kb, 
	!unban, !seen gibi komutları kullanabilirler. 
	(nasıl kullanıldıklarını öğrenmek için; onları 
	nickle ve nicksiz kullanın vede bazılarındada sebep 
	belirtin).
	
	Unutmayınki fantazi komutlarını kullanmak
	isteyen kullanıcıların FANTASIA ve komutun 
	gerektirdiği diğer seviyelere yeterli access
	seviyesi olması gereklidir. (örneğin, !op
	komutunu kullanmak için, kullanıcının OPDEOP
	seviyesine yeterli access i olmalıdır).

BOT_HELP_SET_GREET
	Kullanımı: SET kanaladı GREET {ON|OFF}
	
	Kanalda karşılama modunu açar yada kapatır.
	Aktifleştirildiği zaman, bot kanala giren 
	kullanıcılara bir karşılama mesajı gönderir,
	tabi eğer bu kişilerin yeterli access leri varsa.

BOT_HELP_SET_SYMBIOSIS
	Kullanımı: SET kanaladı SYMBIOSIS {ON|OFF}
	
	Kanalda simbiyoz modunu açar yada kapatır.
	Aktifleştirildiği zaman bot %s'ün yaptığı herşeyi
	kendisi yapar. Modelar, kickler, ve giriş mesajı gibi.

BOT_HELP_KICK
	Kullanımı: KICK kanaladı özellik parametre
	
	Botun kick lerini ayarlar. özellik şunlardan biri olabilir:
	
	    BOLDS         Kalın yazıda atar
	    BADWORDS      Küfürde atar
	    CAPS          Büyük yazıda atar
	    COLORS        Renkli yazıda atar
	    FLOOD         Flood da atar
	    REPEAT        Kendini tekrar edenleri atar
	    REVERSES      Ctrl+r nin kullanılmasında atar
	    UNDERLINES    Altıçizgili yazıda atar
	
	Belirli bir özellik hakkında daha fazla bilgi için
	%R%S HELP KICK özellik yazın.
	
	Not: Bu komuta erişim seviye(level) ayarıyla yapılır.

BOT_HELP_KICK_BOLDS
	Kullanımı: KICK kanaladı BOLDS {ON|OFF} [böas]
	
	Kalın yazıda atmayı açar yada kapatır. 
	Aktifleştirildiğinde bu özellik bota kalın yazı
	kullananları atmasını söyler.
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_COLORS
	Kullanımı: KICK kanaladı COLORS {ON|OFF} [böas]
	
	Renkli yazıda atmayı açar yada kapatır. 
	Aktifleştirildiğinde bu özellik bota renkli yazı 
	kullananları atmasını söyler.
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_REVERSES
	Kullanımı: KICK kanaladı REVERSES {ON|OFF} [böas]
	
	Ctrl+r nin kullanılmasında atmayı açar yada kapatır. 
	Aktifleştirildiğinde bu özellik bota Ctrl+r yi 
	kullananları atmasını söyler.
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_UNDERLINES
	Kullanımı: KICK kanaladı UNDERLINES {ON|OFF} [böas]
	
	Altıçizgili yazıda atmayı açar yada kapatır.
	Aktifleştirildiğinde bu özellik bota altıçizgili
	yazanları atmasını söyler.
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_CAPS
	Kullanımı: KICK kanaladı CAPS {ON|OFF} [böas [min [yüzde]]]
	
	Büyük yazıda atmayı açar yada kapatır.
	Aktifleştirildiğinde bu özellik bota büyük yazı
	kullananları atmasını söyler.
	
	Bot belirtilen en az(min) büyük harfin toplam yazının
	yüzdesine%% bağlı olarak atar. (Belirtilmemişse,
	varsayılan olarak 10 karakter ve 25%% de atar).
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_FLOOD
	Kullanımı: KICK kanaladı FLOOD {ON|OFF} [böas [sıra [sn]]]
	
	Flood da atmayı açar yada kapatır. Aktifleştirildiğinde
	bu özellik bota sn saniyede enaz sıra sırada flood
	yapanları atmasını söyler. (Belirtilmemişse varsayılan
	olarak 10 saniyede 6 sıra da atar).
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_REPEAT
	Kullanımı: KICK #kanaladı REPEAT {ON|OFF} [böas [sayı]]
	
	Tekrar yazılan aynı yazıda atmayı açar yada kapar.
	Aktifleştirildiğinde bu özellik bota kendilerini
	sayı kez tekrar edenleri atmasını söyler. (Eğer
	sayı belirtilmemişse, varsayılan olarak 3 tür).
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_KICK_BADWORDS
	Kullanımı: KICK #channel BADWORDS {ON|OFF} [böas]
	
	Küfürde atmayı açar yada kapatır. Aktifleştirildiğinde
	bu özellik bota küfür edenleri atmasını söyler.
	
	Bir kanal için küfür belirlemek için BADWORDS komutunu
	kullanabilirsiniz. Ayrıntılar için  %R%S HELP BADWORDS
	yazın.
	
	böas banlamadan önce kişinin kaç kez atılacağını 
	belirler. Kaldırmak için komutta böas ı belirtmeyin.

BOT_HELP_BADWORDS
	Kullanımı:  BADWORDS kanaladı ADD kelime [SINGLE | START | END]
	            BADWORDS kanaladı DEL {kelime | kayıt-no | liste}
	            BADWORDS kanaladı LIST [mask | liste]
	            BADWORDS kanaladı CLEAR
	
	Bir kanal için küfür listesi düzenler. Küfür listesi
	küfürde atma aktifleştirildiği zaman hangi kelimelerde
	atılacağını belirler. Daha fazla bilgi için 
	%R%S HELP KICK BADWORDS yazın.
	
	BADWORDS ADD komutu belirtilen kelimeyi küfür listesine
	ekler. Eğer SINGLE parametresi belirtilmişse, atma işlemi
	kullanıcı o kelimenin tamamını söylerse yapılır. Eğer START
	parametresi belirtilmişse, kullanıcı o kelimeyle başlayan 
	birşey söylediğinde atılır. Eğer END parametresi belirtilmişse
	kullanıcı o kelimeyle biten birşey söylediğinde atılır.
	Eğer bir parametre kullanmazsanız, atma işlemi kullanıcı o 
	kelimeyi her kullandığında yapılır.
	
	BADWORDS DEL komutu belirtilen kelimeyi küfür listesinden 
	siler. Eğer kayıt numarası listesi verilirse, o kelimeler
	silinir. (LIST için aşağıdaki örneği inceleyin) 
	
	BADWORDS LIST komutu küfür listesini görüntüler. Eğer
	bir küfürün bir kısmı belirtilmişse, o kısma uyan küfürler
	listelenir. Eğer bir kayıt numarası listesi belirtilmişse,
	sadece o küfürler listelenir; örneğin:
	
	   BADWORDS #kanaladı LIST 2-5,7-9
	      2'den 5'e ve 7'den 9'a kadar olan küfürler 
	      listelenir.
	      
	BADWORDS CLEAR komutu tüm küfür listesini temizler.

BOT_HELP_SAY
	Kullanımı: SAY kanaladı yazı
	
	Botun belirtilen yazıyı belirtilen kanalda söylemesini sağlar.

BOT_HELP_ACT
	Kullanımı: ACT kanaladı yazı
	
	Botun belirtilen yazıyla belirtilen kanalda "/me" komutunun 
	yaptığını kendi üzerinde yapmasını sağlar.

BOT_SERVADMIN_HELP_BOT
	Kullanımı: BOT ADD nick user host gerçekismi
	        BOT CHANGE eskinick yeninick [user [host [gerçekismi]]]
	        BOT DEL nick
	
	Servis adminlerinin kullanıcıların kanallarında kullanması 
	için botları yaratmasını, değiştirmesini ve silmesini sağlar.
	
	BOT ADD belirtilen nickte, username, hostname ve gerçek 
	isimde bir bot ekler. Doğruluk sınaması yapılmadığında komutu
	kullanırken çok dikkatli olun.
	BOT CHANGE botun nickini, username ini, hostname ini veya
	gerçek ismini silmeye gerek kalmadan değiştirmeyi sağlar.
	BOT DEL belirtilen botu bot listesinden siler.
	
	Not: Eğer botun nicki olarak, kayıtlı bir nick
	kullanırsanız o nickin kaydı silinir(drop). Ayrıca
	o an bir kuulanıcı bu nicki kullanıyorsa kill lenir.

BOT_SERVADMIN_HELP_SET
	
	Bu özellikleri servis adminlerini kullanabilir:
	
	    NOBOT            Bir kanala bot girmesini engeller.
	    PRIVATE          Botun IRC operatörleri haricinde kanallara
	                        sokulmasini engeller

	                        
BOT_SERVADMIN_HELP_SET_NOBOT
	Kullanımı: SET kanaladı NOBOT {ON|OFF}
	
	Bu özellik bir kanalı bot sokulamaz hale getirir. Eğer
	kanala zaten bir bot sokulmuşsa otomatik olarak o bot
	kanaldan çıkarılır.
	
	Servis adminlerinin Kullanımıyla sınırlıdır.

BOT_SERVADMIN_HELP_SET_PRIVATE
	Kullanımı: SET botun-nicki PRIVATE {ON|OFF}
	
	Bu özellik IRC Operatörleri disindaki userlarin bu
	botlari kanallara sokmalarini engeller.
	
	Bu komutu Servis Adminleri kullanabilir.
HOST_EMPTY
	vhost listesi boş.
HOST_ENTRY
	#%d Nick:%s, vhost:%s (%s - %s)
HOST_IDENT_ENTRY
	#%d Nick:%s, vhost:%s@%s (%s - %s)
HOST_SET
	%s icin vhost %s olarak ayarlandı.
HOST_IDENT_SET
	%s icin ident %s@%s olarak ayarlandı.
HOST_SETALL
	%s icin vhost %s olarak ayarlandı.
HOST_DELALL
	%s icin vhost kaldırıldı.
HOST_DELALL_SYNTAX
	DELALL <nick>.
HOST_IDENT_SETALL
	%s icin ident %s@%s olarak ayarlandı.
HOST_SET_ERROR
	Hata! bir vhost sadece A-Z, a-z, 0-9, '.' ve '-' karakterlerini icermelidir.
HOST_SET_IDENT_ERROR
	vhost ident gecerli karakterlerden oluşmalıdır
HOST_SET_TOOLONG
	HATA! Vhost cok uzun, %d karakterden kısa bir host olusturunuz.
HOST_SET_IDENTTOOLONG
	HATA! kimlik cok uzun, %d karakterden kısa bir kimlik olusturunuz..
HOST_NOREG
	%s nickserv veribankasinda bulunmuyor.
HOST_SET_SYNTAX
	SET <nick> <hostmask>.
HOST_SETALL_SYNTAX
	SETALL <nick> <hostmask>.
HOST_DENIED
	Yetkiniz yeterli degil.
HOST_NOT_ASSIGNED
	Vhost talebi icin irc operatorleriniz ile iletisime geciniz.
HOST_ACTIVATED
	%s vhostunuz aktif.
HOST_IDENT_ACTIVATED
	%s@%s vhost ve identiniz aktif.
HOST_ID
	Önce servislerimize kendinizi tanıtmalısınız.
HOST_NOT_REGED
	Vhost istegi icin öncelikle kayıtlı bir rumuza sahip olmalısınız
HOST_DEL
	%s vhostu silindi.
HOST_DEL_SYNTAX
	DEL <nick>.

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_OFF
	Vhost silindi ve sifrelemiş hostunuz kullanılıyor.
HOST_OFF_UNREAL
	Vhost silindi fakat şifreleme yapılamadi lütfen tekrar bağlantı kurunuz veya /mode %s +%s komutunu deneyiniz
HOST_NO_VIDENT
	IRCD sisteminiz vIdent'i desteklemiyor. Eğer bu doğru değilse sorunu bize iletiniz

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_GROUP
	%s grubu icin vhost %s
HOST_IDENT_GROUP
	%s grubu icin vident %s@%s

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_LIST_FOOTER
	Tüm kayıtlar gösteriliyor (Veri: %d)
HOST_LIST_RANGE_FOOTER
	gösterilen kayıtlar %d - %d
HOST_LIST_KEY_FOOTER
	Eşleşen veriler verilen %s (Veri: %d)

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_HELP_CMD_ON
	    ON          Vhostunuzu aktif eder
HOST_HELP_CMD_OFF
	    OFF         Vhostunuzu deaktif eder
HOST_HELP_CMD_GROUP
	    GROUP       Grubunuza vhost atar
HOST_HELP_CMD_SET
	    SET         Baska bir kullanının vhostunu düzenlemenize yarar
HOST_HELP_CMD_SETALL
	    SETALL      Bir gruptaki tüm nicklere o vhost'u atar
HOST_HELP_CMD_DEL
	    DEL         Kullanıcının vhostunu siler
HOST_HELP_CMD_DELALL
	    DELALL      Gruptaki tüm vhostları siler
HOST_HELP_CMD_LIST
	    LIST        Vhostlar hakkında bilgi verir.
HOST_OPER_HELP
	n/a
HOST_ADMIN_HELP
	n/a

HOST_HELP
	%S Komutlar:

HOST_HELP_ON
	Kullanımı: ON

	Belirlenmis vhostu aktif duruma getirir.
	Bu komut kullanıldıgında /WHOIS komutunda bu adresiniz gorunuz
	gerçek IP adresinizi sadece siz gorursunuz.

HOST_HELP_SET
	Kullanımı: SET <nick> <hostmask>.

	Secilen rumuza vhost atamanızı sağlar
	Eğer IRCD sisteminiz Idents'i destekliyor ise,
	SET <nick> <ident>@<hostmask> komutu ile 
	vhost atayabilirsiniz.

	Services operatorleri kullanımına acıktır.

HOST_HELP_DELALL
	Kullanımı: DELALL <nick>.

	Secilen rumuzun grubundaki tüm nicklerin vhostlarıno
	silmek icin kullanılır.

	Host Düzenleyici Kullanımına acıktır.


HOST_HELP_SETALL
	Kullanımı: SETALL <nick> <hostmask>.

	Secilen rumuza ait grubtaki nicklere vhost atamanızı sağlar
	Eğer IRCD sisteminiz Idents'i destekliyor ise,
	SETALL <nick> <ident>@<hostmask> komutu ile 
	vhost atayabilirsiniz.

	* NOT, Bu komut daha sonradan gruba katılan nicklere
	vhost atamaz.

	Services operatorleri kullanımına acıktır.

HOST_HELP_OFF
	Kullanımı: OFF

	Vhost'u pasif konuma getirir.
	Bu komutu kullandıktan sonra herhangi birisi size /whois
	cektiginde sizin gercek IP adresinizi görür.

HOST_HELP_DEL
	Kullanımı: DEL <nick>

	Veritabanından rumuza ait olan vhostu kaldırmak icin
	kullanılır.

	Services operatorleri kullanımına acıktır.

HOST_HELP_LIST
	Kullanımı: LIST [<key>|<#X-Y>]

	Bu komut vhostları irc operatorlarine listelemed kullanılır
	Eğer bir anahtar secilir ise ona eşlecen ve hostlar gosterilir
	Örneklemek gerekir ise - Rob* - şeklinde bir girdide
	"Rob" ile baslayan bilgiler gosterilir

	Eğer #X-Y şeklinde bir girdi verilir ise, sadece X
	ve Y aralıgı gösterilir, örnek. #1-3 kullanılır ise sadece ilk 3
	nick/vhost gosterilir.

	En fazla gosterilecek bilgi sayısı NSListMax belirtilmiştir.
	Cok fazla eşleşme olması durumunda liste 1 defada gosterilemeyebilir.

	Services operatorleri kullanımına acıktır.

HOST_HELP_GROUP
	Kullanımı: GROUP
	
	Bu komut belirtilmis grup icin vhost atar
	Bazı grublardaki herkezin aynı vhostu almasını
	sağlar.

OPER_SVSNICK_UNSUPPORTED
	ÜZGÜNÜZ, SVSNICK Bu sunucuda desteklenmiyor.

OPER_SQLINE_UNSUPPORTED
	ÜZGÜNÜZ, SQLINE Bu sunucuda desteklenmiyor.

OPER_SVSO_UNSUPPORTED
	ÜZGÜNÜZ, OLINE Bu sunucuda desteklenmiyor.

OPER_UMODE_UNSUPPORTED
	ÜZGÜNÜZ, UMODE Bu sunucuda desteklenmiyor.

OPER_SUPER_ADMIN_NOT_ENABLED
	SuperAdmin services.conf'ta aktif durumda degil

