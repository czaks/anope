# Polski plik jezykowy/Polish language file.
# Tlumaczenie/Translation:
#               Armada Jaroslaw    <yoplait@yoplait.org>
#               Eskela             <eskela@gmail.com>
#               Mierzwiak Bartosz  <bartosz@mierzwiak.com>
#               Swierkosz Szymon   <szymek@adres.pl>
#               Szczyrzyca Mateusz <annihilator@ircnet.pl>
#               PolNet Team: http://www.ircnet.pl
#
# Aktualizacja/Updated: 13/10/2008
# Wersja serwisow/Anope version: svn-1477
#
# This file is encoded using utf-8.
#
###########################################################################
#
# (C) 2003-2011 Anope Team
# Contact us at team@anope.org
#   
# Please read COPYING and README for further details.
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
#
# Name of this language
#
###########################################################################
# For languages other than English, this string should have the following
# format:
#     language-name-in-language (language-name-in-English)
# For example, "Espaďż˝l (Spanish)" or "Franďż˝is (French)".
LANG_NAME
	Polski (Polish)

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
	%d %b %Y %H:%M:%S %Z

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
	Nie
	Pon
	Wto
	Śro
	Czw
	Pia
	Sob

# %A
STRFTIME_DAYS_LONG
	Niedziela
	Poniedziałek
	Wtorek
	Środa
	Czwartek
	Piątek
	Sobota

# %b
STRFTIME_MONTHS_SHORT
	Sty
	Lut
	Mar
	Kwi
	Maj
	Cze
	Lip
	Sie
	Wrz
	Paź
	Lis
	Gru

# %B
STRFTIME_MONTHS_LONG
	Styczeń
	Luty
	Marzec
	Kwiecień
	Maj
	Czerwiec
	Lipiec
	Sierpień
	Wrzesień
	Październik
	Listopad
	Grudzień

# This is used in ChanServ/NickServ INFO displays.
COMMA_SPACE
	,

# Various error messages.
USER_RECORD_NOT_FOUND
	Błąd wewnętrzny - nie mogę obsłużyć żądania.

UNKNOWN_COMMAND
	Nieznana komenda %s.

UNKNOWN_COMMAND_HELP
	Nieznana komenda %s. Napisz "%R%s HELP" aby uzyskać pomoc.

SYNTAX_ERROR
	Składnia: %s

MORE_INFO
	Napisz %R%s HELP %s aby uzyskać więcej informacji.

NO_HELP_AVAILABLE
	Brak dostępnej pomocy dla %s.

OBSOLETE_COMMAND
	Ta komenda jest już przestarzała. Użyj %s.

BAD_USERHOST_MASK
	Maska musi mieć format ident@host.

BAD_EXPIRY_TIME
	Nieprawidłowy czas wygasania.

USERHOST_MASK_TOO_WIDE
	%s jest za ogólna; użyj bardziej szczegółowej maski.

SERVICE_OFFLINE
	%s jest obecnie offline.

READ_ONLY_MODE
	Uwaga: Serwisy są w trybie tylko do odczytu - zmiany nie będą zapisywane!

PASSWORD_INCORRECT
	Nieprawidłowe hasło.

INVALID_TARGET
	"/msg %s" nie jest już obsługiwane. Użyj "/msg %s@%s" lub "/%s".

# What's the difference between "Access denied" and "Permission denied"?
# Very little; you can safely make them the same message with no real loss
# of meaning.  If you want to make a distinction, "Access denied" is
# usually used more generally; for example, a non-oper trying to access
# OperServ gets "Access denied", while a non-Services admin trying to use
# NickServ SASET NOEXPIRE gets "Permission denied".
ACCESS_DENIED
	Odmowa dostępu.

PERMISSION_DENIED
	Brak uprawnień.

RAW_DISABLED
	Polecenie RAW zostało wyłączone. Jeśli chcesz go używać,
	ustaw odpowiednio DisableRaw w konfiguracji serwisów.

MORE_OBSCURE_PASSWORD
	Proszę spróbować ponownie z trudniejszym hasłem.
	Hasło powinno mieć minimum 5 znaków oraz powinno
	zawierać cyfry i litery.

PASSWORD_TOO_LONG
	Twoje hasło jest za długie. Spróbuj ponownie z krótszym hasłem.

NICK_NOT_REGISTERED
	Twój nick nie jest zarejestrowany.

NICK_NOT_REGISTERED_HELP
	Twój nick jest niezarejestrowany.
	Napisz %R%s HELP aby uzyskać pomoc na temat rejestracji.

NICK_X_IS_SERVICES
	Nick %s jest serwisem!

NICK_X_NOT_REGISTERED
	Nick %s nie jest zarejestrowany.

NICK_X_IN_USE
	Nick %s jest aktualnie w użyciu.

NICK_X_NOT_IN_USE
	Nick %s nie jest aktualnie używany.

NICK_X_NOT_ON_CHAN
	%s nie jest aktualnie na kanale %s.

NICK_X_FORBIDDEN
	Nick %s nie może być rejestrowany ani używany.

NICK_X_FORBIDDEN_OPER
	Nick %s został zablokowany przez %s:
	%s

NICK_X_ILLEGAL
	Nick %s jest nieprawidłowy i nie może być używany.

NICK_X_TRUNCATED
	Nick %s został skrócony do %d znaków.

NICK_X_SUSPENDED
	Nick %s jest obecnie zawieszony.

CHAN_X_NOT_REGISTERED
	Kanał %s nie jest zarejestrowany.

CHAN_X_NOT_IN_USE
	Kanał %s nie istnieje.

CHAN_X_FORBIDDEN
	Kanału %s nie można rejestrować ani używać.

CHAN_X_FORBIDDEN_OPER
	Kanał %s został zablokowany przez %s:
	%s

CHAN_X_SUSPENDED
	     Zawieszony: [%s] %s

NICK_IDENTIFY_REQUIRED
	Aby użyć tej komendy musisz się zidentyfikować.
	Napisz %R%s IDENTIFY hasło, a później ponów próbę.

CHAN_IDENTIFY_REQUIRED
	Do użycia tej komendy wymagana jest identyfikacja.
	Napisz %R%s IDENTIFY %s hasło, a później ponów próbę.
	

MAIL_DISABLED
	Serwisy zostały skonfigurowane tak, aby nie wysyłać poczty.

MAIL_INVALID
	Adres e-mail dla %s nie jest prawidłowy.

MAIL_X_INVALID
	%s nie jest prawidłowym adresem e-mail.

MAIL_LATER
	Nie mogę wysłać teraz maila. Spróbuj za chwilę.

MAIL_DELAYED
	Proszę odczekać %d sekund(y) i ponowić próbę.
	

NO_REASON
	Bez powodu

UNKNOWN
	<nieznane>

# Duration system
DURATION_DAY
	1 dzień

DURATION_DAYS
	%d dni

DURATION_HOUR
	1 godzina

DURATION_HOURS
	%d godzin(y)

DURATION_MINUTE
	1 minuta

DURATION_MINUTES
	%d minut(y)

DURATION_SECOND
	1 sekunda

DURATION_SECONDS
	%d sekund(y)

# Human readable expiration
NO_EXPIRE
	nie wygasa

EXPIRES_SOON
	wygasa przy następnej aktualizacji baz

EXPIRES_M
	wygasa za %d minut(y)

EXPIRES_1M
	wygasa za %d minutę

EXPIRES_HM
	wygasa za %d godzin(y) i %d minut(y)

EXPIRES_H1M
	wygasa za %d godzinę i %d minut(y)

EXPIRES_1HM
	wygasa za %d godzinę i %d minut(y)

EXPIRES_1H1M
	wygasa za %d godzinę i %d minutę

EXPIRES_D
	wygasa za %d dni

EXPIRES_1D
	wygasa za %d dzień

# Generic Footer message
END_OF_ANY_LIST
	Koniec listy %s.

# Generic List error messages
LIST_INCORRECT_RANGE
	Podano nieprawidłowy zakres. Poprawny zapis to #od-do.

CS_LIST_INCORRECT_RANGE
	Aby wyszukać kanały o nazwach zaczynających się znakiem #
	należy ten znak pominąć (anope zamiast #anope).

# Generic help limited to messages
HELP_LIMIT_SERV_OPER
	
	Polecenie dostępne tylko dla operatorów serwisów.

HELP_LIMIT_SERV_ADMIN
	
	Polecenie dostępne tylko dla administratorów serwisów.

HELP_LIMIT_SERV_ROOT
	
	Polecenie dostępne tylko dla Services Roots.

HELP_LIMIT_IRC_OPER
	
	Polecenie dostępne tylko dla IRC operatorów.

HELP_LIMIT_HOST_SETTER
	
	Polecenie dostępne tylko dla Host Setters.

HELP_LIMIT_HOST_REMOVER
	
	Polecenie dostępne tylko dla Host Removers.

###########################################################################
#
# NickServ messages
#
###########################################################################
# Automatic messages
NICK_IS_REGISTERED
	Ten nick jest zarejestrowany. Jeśli to Twój nick,
	wpisz: %R%s IDENTIFY hasło

NICK_IS_SECURE
	Ten nick jest zarejestrowany i chroniony.
	Zidentyfikuj się pisząc: %R%s IDENTIFY hasło
	jeśli nick należy do Ciebie, w przeciwnym razie zmień go.

NICK_MAY_NOT_BE_USED
	Ten nick nie może być używany. Wybierz inny nick.

FORCENICKCHANGE_IN_1_MINUTE
	Masz jedną minutę na zmianę nicka, potem zostanie zmieniony siłą.

FORCENICKCHANGE_IN_20_SECONDS
	Masz 20 sekund na zmianę nicka, potem zostanie zmieniony siłą.

FORCENICKCHANGE_NOW
	Ten nick został zarejestrowany i nie możesz go używać.

FORCENICKCHANGE_CHANGING
	Twój nick został zmieniony na %s.

# REGISTER responses
NICK_REGISTER_SYNTAX
	REGISTER hasło [email]

NICK_REGISTER_SYNTAX_EMAIL
	REGISTER hasło email

NICK_REGISTRATION_DISABLED
	Rejestracja nicków jest tymczasowo wyłączona.

NICK_REGISTRATION_FAILED
	Rejestracja nicka nie powiodła się.

NICK_REG_PLEASE_WAIT
	Odczekaj %d sekund przed ponownym użyciem komendy REGISTER.

NICK_CANNOT_BE_REGISTERED
	Nick %s nie może być rejestrowany.

NICK_ALREADY_REGISTERED
	Nick %s jest już zarejestrowany!

NICK_REGISTERED
	Nick %s został zarejestrowany z maską: %s.

NICK_REGISTERED_NO_MASK
	Nick %s został zarejestrowany.

NICK_PASSWORD_IS
	Twoje hasło do nicka to %s

NICK_REG_DELAY
	Musisz być połączony(a) dłużej niż %d sekund(y), aby móc zarejestrować nick.

# GROUP responses
NICK_GROUP_SYNTAX
	GROUP nazwa hasło

NICK_GROUP_DISABLED
	Grupowanie nicków jest tymczasowo wyłączone.

NICK_GROUP_FAILED
	Grupowanie nie powiodło się.

NICK_GROUP_PLEASE_WAIT
	Odczekaj %d sekund przed ponownym użyciem komendy GROUP.

NICK_GROUP_CHANGE_DISABLED
	Twój nick jest już zarejestrowany. Napisz najpierw: %R%s DROP

NICK_GROUP_SAME
	Należysz już do grupy %s.

NICK_GROUP_TOO_MANY
	W grupie %s jest za dużo nicków, usuń kilka.
	Napisz %R%s HELP GLIST i %R%s HELP DROP,
	aby uzyskać więcej informacji.

NICK_GROUP_JOINED
	Należysz teraz do grupy %s.

# IDENTIFY responses
NICK_IDENTIFY_SYNTAX
	IDENTIFY hasło

NICK_IDENTIFY_FAILED
	Identyfikacja nie powiodła się.

NICK_IDENTIFY_SUCCEEDED
	Hasło przyjęte - jesteś zidentyfikowany(a).

NICK_IDENTIFY_EMAIL_REQUIRED
	Teraz ustaw adres e-mail dla Twojego nicka.
	Gdy zapomnisz hasła, zostanie ono wysłane na e-mail.

NICK_IDENTIFY_EMAIL_HOWTO
	Napisz %R%S SET EMAIL e-mail, aby ustawić adres e-mail.
	Twoja prywatność będzie uszanowana - nie będzie podawany osobom trzecim,

NICK_ALREADY_IDENTIFIED
	Jesteś już zidentyfikowany(a).

# UPDATE responses
NICK_UPDATE_SUCCESS
	Status zaktualizowany (wiadomości, vhosty, flagi).
	

# LOGOUT responses
NICK_LOGOUT_SYNTAX
	LOGOUT

NICK_LOGOUT_SUCCEEDED
	Twój nick został pomyślnie wylogowany.

NICK_LOGOUT_X_SUCCEEDED
	Nick %s został wylogowany.

NICK_LOGOUT_SERVICESADMIN
	Nie mogę wylogować %s, bo to administrator serwisów.

# DROP responses
NICK_DROP_DISABLED
	Usuwanie nicków jest tymczasowo wyłączone.

NICK_DROPPED
	Twój nick został odrejestrowany.

NICK_X_DROPPED
	Nick %s został odrejestrowany.

# SET responses
NICK_SET_SYNTAX
	SET opcja parametry

NICK_SET_SERVADMIN_SYNTAX
	SET [nick] opcja parametry

NICK_SET_DISABLED
	Modyfikacja ustawień nicka jest tymczasowo wyłączona.

NICK_SET_UNKNOWN_OPTION
	Nieznana opcja komendy SET %s.

NICK_SET_OPTION_DISABLED
	Opcja %s nie jest dostępna w tej sieci.

# SET DISPLAY responses
NICK_SET_DISPLAY_INVALID
	Nową nazwą MUSI być jednym z nicków w grupie!

NICK_SET_DISPLAY_CHANGED
	Nową nazwą jest %s.

# SET PASSWORD responses
NICK_SET_PASSWORD_FAILED
	Zmiana hasła nie powiodła się.

NICK_SET_PASSWORD_CHANGED
	Hasło zostało zmienione.

NICK_SET_PASSWORD_CHANGED_TO
	Hasło zostało zmienione na %s.

# SET LANGUAGE responses
NICK_SET_LANGUAGE_SYNTAX
	SET LANGUAGE numer

NICK_SET_LANGUAGE_UNKNOWN
	Nieznany numer języka %d.
	Napisz %R%s HELP SET LANGUAGE, aby uzyskać listę dostępnych języków.

NICK_SET_LANGUAGE_CHANGED
	Język został zmieniony na Polski.

# SET URL responses
NICK_SET_URL_CHANGED
	Adres www został zmieniony na %s.

NICK_SET_URL_UNSET
	Adres www został usunięty.

# SET EMAIL responses
NICK_SET_EMAIL_CHANGED
	Adres e-mail został zmieniony na %s.

NICK_SET_EMAIL_UNSET
	Adres e-mail został usunięty.

NICK_SET_EMAIL_UNSET_IMPOSSIBLE
	Nie możesz usuwać adresu e-mail w tej sieci.
	

# SET ICQ responses
NICK_SET_ICQ_CHANGED
	Numer ICQ został zmieniony na %s.

NICK_SET_ICQ_UNSET
	Numer ICQ został usunięty.

NICK_SET_ICQ_INVALID
	%s nie jest prawidłowym numerem.
	

# SET GREET responses
NICK_SET_GREET_CHANGED
	Wiadomość powitalna została zmieniona na:
	%s.

NICK_SET_GREET_UNSET
	Wiadomość powitalna została usunięta.

# SET PROTECT responses
NICK_SET_KILL_SYNTAX
	SET KILL {ON | QUICK | OFF}

NICK_SET_KILL_IMMED_SYNTAX
	SET KILL {ON | QUICK | IMMED | OFF}

NICK_SET_KILL_ON
	Ochrona jest teraz włączona.

NICK_SET_KILL_QUICK
	Ochrona ze zredukowanym opóźnieniem jest teraz włączona.

NICK_SET_KILL_IMMED
	Natychmiastowa ochrona jest teraz włączona.

NICK_SET_KILL_IMMED_DISABLED
	Opcja IMMED nie jest jest dostępna w tej sieci.

NICK_SET_KILL_OFF
	Ochrona jest teraz wyłączona.

# SET SECURE responses
NICK_SET_SECURE_SYNTAX
	SET SECURE {ON | OFF}

NICK_SET_SECURE_ON
	Opcja bezpieczeństwa została włączona.

NICK_SET_SECURE_OFF
	Opcja bezpieczeństwa została wyłączona.

# SET PRIVATE responses
NICK_SET_PRIVATE_SYNTAX
	SET PRIVATE {ON | OFF}

NICK_SET_PRIVATE_ON
	Opcja prywatności została włączona.

NICK_SET_PRIVATE_OFF
	Opcja prywatności została wyłączona.

# SET HIDE responses
NICK_SET_HIDE_SYNTAX
	SET HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}

NICK_SET_HIDE_EMAIL_ON
	Twój adres e-mail będzie ukrywany w informacjach %s.

NICK_SET_HIDE_EMAIL_OFF
	Twój adres e-mail będzie pokazywany w informacjach %s.

NICK_SET_HIDE_MASK_ON
	Twoja ostatnia maska ident@host będzie ukrywana w informacjach %s.

NICK_SET_HIDE_MASK_OFF
	Twoja ostatnia maska ident@host będzie pokazywana w informacjach %s.

NICK_SET_HIDE_QUIT_ON
	Twoja ostatnia wiadomość QUIT będzie ukrywana w informacjach %s.

NICK_SET_HIDE_QUIT_OFF
	Twoja ostatnia wiadomość QUIT będzie pokazywana w informacjach %s.

NICK_SET_HIDE_STATUS_ON
	Twój status dostępu do serwisów będzie ukrywany w informacjach %s.

NICK_SET_HIDE_STATUS_OFF
	Twój status dostępu do serwisów będzie pokazywany w informacjach %s.
	

# SET MSG responses
NICK_SET_MSG_SYNTAX
	SET MSG {ON | OFF}

NICK_SET_MSG_ON
	Serwisy będą teraz wysyłać wiadomości.

NICK_SET_MSG_OFF
	Serwisy będą teraz wysyłać powiadomienia.

# SET AUTOOP responses
NICK_SET_AUTOOP_SYNTAX
	SET AUTOOP {ON | OFF}

NICK_SET_AUTOOP_ON
	Serwisy będą automatycznie nadawały Tobie uprawnienia.

NICK_SET_AUTOOP_OFF
	Serwisy nie będą już automatycznie nadawały Tobie uprawnień.

# SASET responses
NICK_SASET_SYNTAX
	SASET nick opcja parametry

NICK_SASET_DISABLED
	Modyfikacja ustawień nicka jest tymczasowo wyłączona.

NICK_SASET_UNKNOWN_OPTION
	Nieznana opcja komendy SASET %s.

NICK_SASET_BAD_NICK
	Nick %s nie jest zarejestrowany.

NICK_SASET_OPTION_DISABLED
	Opcja %s nie jest dostępna w tej sieci.

# SASET DISPLAY responses
NICK_SASET_DISPLAY_INVALID
	Nowa nazwa dla %s MUSI być jednym z nicków w grupie!

NICK_SASET_DISPLAY_CHANGED
	Nową nazwą jest %s.

# SASET PASSWORD responses
NICK_SASET_PASSWORD_FAILED
	Zmiana hasła dla %s nie powiodła się.

NICK_SASET_PASSWORD_CHANGED
	Hasło dla %s zostało zmienione.

NICK_SASET_PASSWORD_CHANGED_TO
	Hasło dla %s zostało zmienione na %s.

# SASET URL responses
NICK_SASET_URL_CHANGED
	Adres www osoby %s został zmieniony na %s.

NICK_SASET_URL_UNSET
	Adres www osoby %s został usunięty.

# SASET EMAIL responses
NICK_SASET_EMAIL_CHANGED
	Adres e-mail osoby %s został zmieniony na %s.

NICK_SASET_EMAIL_UNSET
	Adres e-mail osoby %s został usunięty.

NICK_SASET_EMAIL_UNSET_IMPOSSIBLE
	Nie możesz usuwać adresu e-mail w tej sieci.
	

# SASET ICQ responses
NICK_SASET_ICQ_CHANGED
	Numer ICQ osoby %s został zmieniony na %s.

NICK_SASET_ICQ_UNSET
	Numer ICQ osoby %s został usunięty.

NICK_SASET_ICQ_INVALID
	%s nie jest prawidłowym numerem.
	

# SASET GREET responses
NICK_SASET_GREET_CHANGED
	Wiadomość powitalna osoby %s została zmieniona na %s.

NICK_SASET_GREET_UNSET
	Wiadomość powitalna osoby %s została usunięta.

# SASET PROTECT responses
NICK_SASET_KILL_SYNTAX
	SASET nick KILL {ON | QUICK | OFF}

NICK_SASET_KILL_IMMED_SYNTAX
	SASET nick KILL {ON | QUICK | IMMED | OFF}

NICK_SASET_KILL_ON
	Ochrona dla %s jest teraz włączona.

NICK_SASET_KILL_QUICK
	Ochrona dla %s ze zredukowanym opóźnieniem jest teraz włączona.

NICK_SASET_KILL_IMMED
	Natychmiastowa ochrona dla %s jest teraz włączona

NICK_SASET_KILL_IMMED_DISABLED
	Opcja IMMED nie jest dostępna w tej sieci.

NICK_SASET_KILL_OFF
	Ochrona dla %s jest teraz wyłączona.

# SASET SECURE responses
NICK_SASET_SECURE_SYNTAX
	SASET nick SECURE {ON | OFF}

NICK_SASET_SECURE_ON
	Opcja bezpieczeństwa dla %s została włączona.

NICK_SASET_SECURE_OFF
	Opcja bezpieczeństwa dla %s została wyłączona.

# SASET PRIVATE responses
NICK_SASET_PRIVATE_SYNTAX
	SASET nick PRIVATE {ON | OFF}

NICK_SASET_PRIVATE_ON
	Opcja prywatności dla %s została włączona.

NICK_SASET_PRIVATE_OFF
	Opcja prywatności dla %s została wyłączona.

# SASET HIDE responses
NICK_SASET_HIDE_SYNTAX
	SASET nick HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}

NICK_SASET_HIDE_EMAIL_ON
	Adres e-mail osoby %s będzie ukrywany w informacjach %s.

NICK_SASET_HIDE_EMAIL_OFF
	Adres e-mail osoby %s będzie pokazywany w informacjach %s.

NICK_SASET_HIDE_MASK_ON
	Ostatnia maska ident@host osoby %s będzie ukrywana w informacjach %s.

NICK_SASET_HIDE_MASK_OFF
	Ostatnia maska ident@host osoby %s będzie pokazywana w informacjach %s.

NICK_SASET_HIDE_QUIT_ON
	Ostatnia wiadomość QUIT osoby %s będzie ukrywana w informacjach %s.

NICK_SASET_HIDE_QUIT_OFF
	Ostatnia wiadomość QUIT osoby %s będzie pokazywana w informacjach %s.

NICK_SASET_HIDE_STATUS_ON
	Status dostępu do serwisów osoby %s będzie ukrywany w informacjach %s.

NICK_SASET_HIDE_STATUS_OFF
	Status dostępu do serwisów osoby %s będzie pokazywany w informacjach %s.
	

# SASET MSG responses
NICK_SASET_MSG_SYNTAX
	SASAET nick MSG {ON | OFF}

NICK_SASET_MSG_ON
	Serwisy będą teraz wysyłać do %s wiadomości.

NICK_SASET_MSG_OFF
	Serwisy będą teraz wysyłać do %s powiadomienia.

# SASET NOEXPIRE responses
NICK_SASET_NOEXPIRE_SYNTAX
	SASET nick NOEXPIRE {ON | OFF}

NICK_SASET_NOEXPIRE_ON
	Nick %s nie wygaśnie.

NICK_SASET_NOEXPIRE_OFF
	Nick %s od teraz podlega zasadom wygasania.

# SASET AUTOOP responses
NICK_SASET_AUTOOP_SYNTAX
	SASET nick AUTOOP {ON | OFF}

NICK_SASET_AUTOOP_ON
	Serwisy będą automatycznie nadawały uprawnienia dla użytkownika %s.

NICK_SASET_AUTOOP_OFF
	Serwisy nie będą już automatycznie nadawały uprawnień dla użytkownika %s.

# SASET LANGUAGE responses
NICK_SASET_LANGUAGE_SYNTAX
	SASET nick LANGUAGE numer

NICK_SASET_LANGUAGE_UNKNOWN
	Nieznany numer języka %d.
	Napisz %R%s HELP SET LANGUAGE, aby uzyskać listę dostępnych języków.

NICK_SASET_LANGUAGE_CHANGED
	Language for %s changed to %s.

# ACCESS responses
NICK_ACCESS_SYNTAX
	ACCESS {ADD | DEL | LIST} [maska]

NICK_ACCESS_ALREADY_PRESENT
	Maska %s jest już w Twojej liście dostępu.

NICK_ACCESS_REACHED_LIMIT
	Możesz mieć tylko %d wpisy(ów) na liście dostępu.

NICK_ACCESS_ADDED
	%s dodano do Twojej listy dostępu.

NICK_ACCESS_NOT_FOUND
	%s nie znaleziono na Twojej liście dostępu.

NICK_ACCESS_DELETED
	%s usunięto z Twojej listy dostępu.

NICK_ACCESS_LIST
	Lista dostępu:

NICK_ACCESS_LIST_X
	Lista dostępu dla %s:

NICK_ACCESS_LIST_EMPTY
	Twoja lista dostępu jest pusta.

NICK_ACCESS_LIST_X_EMPTY
	Lista dostępu dla %s jest pusta.

# Status messages
NICK_STATUS_0
	STATUS %s 0 (nie ma lub nie zarejestrowany)

NICK_STATUS_1
	STATUS %s 1 (nie jest zidentyfikowany)

NICK_STATUS_2
	STATUS %s 2 (identyfikacja listą dostępu)

NICK_STATUS_3
	STATUS %s 3 (identyfikacja hasłem)

# INFO responses
NICK_INFO_SYNTAX
	INFO nick [ALL]

NICK_INFO_REALNAME
	%s to %s

NICK_INFO_SERVICES_OPER
	%s jest operatorem serwisów.

NICK_INFO_SERVICES_ADMIN
	%s jest administratorem serwisów.

NICK_INFO_SERVICES_ROOT
	%s jest głównym administratorem serwisów.

NICK_INFO_ADDRESS
	  Ostatni host: %s

NICK_INFO_ADDRESS_ONLINE
	 Jest online z: %s

NICK_INFO_ADDRESS_ONLINE_NOHOST
	%s jest teraz online.

NICK_INFO_TIME_REGGED
	Zarejestrowano: %s

NICK_INFO_LAST_SEEN
	      Widziano: %s

NICK_INFO_LAST_QUIT
	  Ostatni QUIT: %s

NICK_INFO_URL
	     Adres www: %s

NICK_INFO_EMAIL
	  Adres e-mail: %s

NICK_INFO_VHOST
	         vhost: %s

NICK_INFO_VHOST2
	         vhost: %s@%s

NICK_INFO_ICQ
	     Numer ICQ: %d

NICK_INFO_GREET
	     Powitanie: %s

NICK_INFO_OPTIONS
	         Opcje: %s

NICK_INFO_EXPIRE
	        Wygasa: %s

# These strings MUST NOT be empty
NICK_INFO_OPT_KILL
	KILL

NICK_INFO_OPT_SECURE
	SECURE

NICK_INFO_OPT_PRIVATE
	PRIVATE

NICK_INFO_OPT_MSG
	MSG

NICK_INFO_OPT_AUTOOP
	AUTOOP

NICK_INFO_OPT_NONE
	Brak

NICK_INFO_NO_EXPIRE
	Ten nick nie wygaśnie.

NICK_INFO_FOR_MORE
	Aby uzyskać więcej informacji napisz %R%s INFO %s ALL.

NICK_INFO_SUSPENDED
	Ten nick jest obecnie zawieszony, powód: %s

NICK_INFO_SUSPENDED_NO_REASON
	Ten nick jest obecnie zawieszony

# LIST responses
NICK_LIST_SYNTAX
	LIST wzorzec

NICK_LIST_SERVADMIN_SYNTAX
	LIST wzorzec [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]

NICK_LIST_HEADER
	Lista pasujących wpisów %s:

NICK_LIST_RESULTS
	Koniec listy - %d/%d wpisów wyświetlono.

# ALIST responses
NICK_ALIST_SYNTAX
	ALIST nick

NICK_ALIST_HEADER
	Kanały, na których jesteś na liście dostępu:
	  Nr   Kanał              Poziom    Opis

NICK_ALIST_HEADER_X
	Kanały, na których %s jest na liście dostępu:
	  Nr   Kanał              Poziom    Opis

NICK_ALIST_XOP_FORMAT
	  %3d %c%-20s %-8s %s

NICK_ALIST_ACCESS_FORMAT
	  %3d %c%-20s %-8d %s

NICK_ALIST_FOOTER
	Koniec listy - %d/%d kanałów pokazano.

# GLIST responses
NICK_GLIST_HEADER
	Lista nicków w grupie:

NICK_GLIST_HEADER_X
	Lista nicków grupy %s:

NICK_GLIST_FOOTER
	%d nicków w grupie.

NICK_GLIST_REPLY
	   %c%s

NICK_GLIST_REPLY_ADMIN
	   %c%s (wygasa za %s)

# RECOVER responses
NICK_RECOVER_SYNTAX
	RECOVER nick [hasło]

NICK_NO_RECOVER_SELF
	Nie możesz odzyskać nicka, którego właśnie używasz!

NICK_RECOVERED
	Twój nick został właśnie przejęty przez serwisy.
	Napisz %R%s RELEASE %s, jeśli nie chcesz czekać %s sekund na jego automatyczne zwolnienie.

# RELEASE responses
NICK_RELEASE_SYNTAX
	RELEASE nick [hasło]

NICK_RELEASE_NOT_HELD
	Nick %s nie jest zajęty przez serwisy.

NICK_RELEASED
	Serwisy właśnie zwolniły twojego nicka.

# GHOST responses
NICK_GHOST_SYNTAX
	GHOST nick [hasło]

NICK_NO_GHOST_SELF
	Nie możesz usunąć samego siebie!

NICK_GHOST_KILLED
	Nick został usunięty z sieci.

# GETPASS responses
NICK_GETPASS_SYNTAX
	GETPASS nick

NICK_GETPASS_UNAVAILABLE
	Komenda GETPASS nie działa, bo hasła są szyfrowane.

NICK_GETPASS_PASSWORD_IS
	Hasło dla %s to %s.

# GETEMAIL responses
NICK_GETEMAIL_SYNTAX
	GETEMAIL user@email-host Bez symboli wieloznacznych!

NICK_GETEMAIL_EMAILS_ARE
	Adresy e-mail %s pasujące do %s.

NICK_GETEMAIL_NOT_USED
	Nie ma użytkowników z adresem e-mail %s.
	

# SENDPASS responses
NICK_SENDPASS_SYNTAX
	SENDPASS nick

NICK_SENDPASS_UNAVAILABLE
	Komenda SENDPASS nie działa, bo hasła są szyfrowane.

NICK_SENDPASS_SUBJECT
	Hasło do nicka %s

NICK_SENDPASS_HEAD
	Witaj!

NICK_SENDPASS_LINE_1
	Zażądałeś(aś) wysłania hasła do nicka %s na e-mail.

NICK_SENDPASS_LINE_2
	Twoje hasło to: %s
	Dla własnego bezpieczeństwa należy to hasło natychmiast zmienić na inne.

NICK_SENDPASS_LINE_3
	Jeśli nie wiesz dlaczego ta wiadomość dotarła do Ciebie zignoruj ją. Jeśli ta sytuacja będzie się powtarzać skontaktuj się z administratorem sieci.

NICK_SENDPASS_LINE_4
	PROSZĘ NIE ODPOWIADAĆ NA TĄ WIADOMOŚĆ!

NICK_SENDPASS_LINE_5
	Administratorzy sieci %s.

NICK_SENDPASS_OK
	Hasło do nicka %s zostało wysłane.

# SUSPEND responses
NICK_SUSPEND_SYNTAX
	SUSPEND nick powód

NICK_SUSPEND_SUCCEEDED
	Nick %s został zawieszony.

NICK_SUSPEND_FAILED
	Zawieszenie nicka %s nie powiodło się!

# UNSUSPEND responses
NICK_UNSUSPEND_SYNTAX
	UNSUSPEND nick

NICK_UNSUSPEND_SUCCEEDED
	Nick %s został uwolniony.

NICK_UNSUSPEND_FAILED
	Nie mogę uwolnić nicka %s!

# FORBID responses
NICK_FORBID_SYNTAX
	FORBID nick [powód]

NICK_FORBID_SYNTAX_REASON
	FORBID nick powód

NICK_FORBID_SUCCEEDED
	Nick %s został zablokowany.

NICK_FORBID_FAILED
	Nie mogę zablokować nicka %s!

# Nick Registraion responses
NICK_REQUESTED
	Ten nick został już zarejestrowany. Sprawdź swoją pocztę.

NICK_REG_RESENT
	Twój kod rejestracyjny został ponownie wysłany na %s.

NICK_REG_UNABLE
	Nick nie został zarejestrowany. Proszę spróbować później.

NICK_IS_PREREG
	Ten nick czeka na e-mail z kodem weryfikacyjnym przed zakończeniem rejestracji.

NICK_ENTER_REG_CODE
	Kod został wysłany na adres %s.
	Napisz %R%s CONFIRM <kod>, aby dokończyć procedurę rejestracji.

NICK_CONFIRM_NOT_FOUND
	Termin ważności kodu rejestracyjnego upłynął.
	Napisz: %R%s REGISTER <hasło> <email>,
	aby znowu zacząć rejestracje.

NICK_CONFIRM_INVALID
	Podano nieprawidłowy kod, sprawdź wiadomość e-mail i spróbować ponownie.

NICK_REG_MAIL_SUBJECT
	Rejestracja nicka %s

NICK_REG_MAIL_HEAD
	Witaj!

NICK_REG_MAIL_LINE_1
	Chcesz zarejestrować następujący nick: %s.

NICK_REG_MAIL_LINE_2
	Proszę napisać %R%s CONFIRM %s aby dokończyć rejestrację.

NICK_REG_MAIL_LINE_3
	Jeśli nie wiesz dlaczego ta wiadomość dotarła do Ciebie zignoruj ją. Jeśli sytuacja będzie się powtarzać skontaktuj się z administratorem sieci.
NICK_REG_MAIL_LINE_4
	PROSZĘ NIE ODPOWIADAĆ NA TĄ WIADOMOŚĆ!

NICK_REG_MAIL_LINE_5
	Administratorzy sieci %s.

NICK_GETPASS_PASSCODE_IS
	Kod rejestracyjny dla %s to %s.

NICK_FORCE_REG
	Nick %s potwierdzony.

###########################################################################
#
# ChanServ messages
#
###########################################################################
# Access level descriptions
CHAN_LEVEL_AUTOOP
	Automatyczne nadawanie statusu operatora (+o)

CHAN_LEVEL_AUTOVOICE
	Automatyczne nadawanie prawa głosu (+v)

CHAN_LEVEL_AUTOHALFOP
	Automatyczne nadawanie statusu pół-operatora (+h)

CHAN_LEVEL_AUTOPROTECT
	Automatyczne nadawanie ochrony (+a)

CHAN_LEVEL_AUTODEOP
	Automatyczne odbieranie statusu operatora (-o)

CHAN_LEVEL_NOJOIN
	Nie pozwala wejść na kanał w trybie RESTRICTED

CHAN_LEVEL_INVITE
	Pozwala używać komendy INVITE

CHAN_LEVEL_AKICK
	Pozwala używać komendy AKICK

CHAN_LEVEL_SET
	Pozwala modyfikować ustawienia kanału

CHAN_LEVEL_CLEAR
	Pozwala używać komendy CLEAR

CHAN_LEVEL_UNBAN
	Pozwala używać komendy UNBAN

CHAN_LEVEL_OPDEOP
	Pozwala używać komend OP i DEOP na innych osobach

CHAN_LEVEL_ACCESS_LIST
	Pozwala przeglądać listę dostępu

CHAN_LEVEL_ACCESS_CHANGE
	Pozwala modyfikować listę dostępu

CHAN_LEVEL_MEMO
	Pozwala listować i czytać kanałowe wiadomości

CHAN_LEVEL_ASSIGN
	Pozwala przydzielać i usuwać bota

CHAN_LEVEL_BADWORDS
	Pozwala używać komendy BADWORDS

CHAN_LEVEL_NOKICK
	Ochrona przed kopaniem za pomocą komendy KICK

CHAN_LEVEL_FANTASIA
	Pozwala używać publicznych komend FANTASY

CHAN_LEVEL_SAY
	Pozwala używać komend SAY i ACT

CHAN_LEVEL_GREET
	Wyświetla wiadomość powitalną (greet)

CHAN_LEVEL_VOICEME
	Pozwala używać komend VOICE i DEVOICE na sobie

CHAN_LEVEL_VOICE
	Pozwala używać komend VOICE i DEVOICE na innych osobach

CHAN_LEVEL_GETKEY
	Pozwala używać komendy GETKEY

CHAN_LEVEL_OPDEOPME
	Pozwala używać komend OP i DEOP na sobie

CHAN_LEVEL_HALFOPME
	Pozwala używać komend HALFOP i DEHALFOP na sobie

CHAN_LEVEL_HALFOP
	Pozwala używać komend HALFOP i DEHALFOP na innych osobach

CHAN_LEVEL_PROTECTME
	Pozwala używać komend PROTECT i DEPROTECT na sobie

CHAN_LEVEL_PROTECT
	Pozwala używać komend PROTECT i DEPROTECT na innych osobach

CHAN_LEVEL_KICKME
	Pozwala używać komendy KICK na sobie

CHAN_LEVEL_KICK
	Pozwala używać komendy KICK na innych osobach

CHAN_LEVEL_SIGNKICK
	Nie podpisze kicka, gdy SIGNKICK LEVEL jest używany

CHAN_LEVEL_BANME
	Pozwala używać komendy BAN na sobie

CHAN_LEVEL_BAN
	Pozwala używać komendy BAN na innych osobach

CHAN_LEVEL_TOPIC
	Pozwala używać komendy TOPIC

CHAN_LEVEL_INFO
	Pozwala używać opcji ALL w komendzie INFO

# Automatic responses
CHAN_IS_REGISTERED
	Ten kanał został zarejestrowany z %s.

CHAN_NOT_ALLOWED_OP
	Nie masz uprawnień do statusu operatora na kanale %s.

CHAN_MAY_NOT_BE_USED
	Ten kanał nie może być używany.

CHAN_NOT_ALLOWED_TO_JOIN
	Nie masz pozwolenia, aby przebywać na tym kanale.

CHAN_X_INVALID
	%s nie jest prawidłowym kanałem.

# REGISTER responses
CHAN_REGISTER_SYNTAX
	REGISTER kanał hasło opis

CHAN_REGISTER_DISABLED
	Rejestracja kanałów jest tymczasowo wyłączona.

CHAN_REGISTER_NOT_LOCAL
	Lokalne kanały nie mogą być rejestrowane.

CHAN_MUST_REGISTER_NICK
	Musisz mieć zarejestrowany nick. Napisz %R%s HELP, aby uzyskać	więcej informacji.

CHAN_MUST_IDENTIFY_NICK
	Zidentyfikuj się najpierw u %s komendą:
	%R%s IDENTIFY hasło

CHAN_MAY_NOT_BE_REGISTERED
	Kanału %s nie można rejestrować.

CHAN_ALREADY_REGISTERED
	Kanał %s jest już zarejestrowany!

CHAN_MUST_BE_CHANOP
	Aby zarejestrować kanał musisz być jego operatorem.

CHAN_REACHED_CHANNEL_LIMIT
	Błąd, już masz osiągnięty limit %d kanałów.

CHAN_EXCEEDED_CHANNEL_LIMIT
	Błąd, już masz przekroczony limit %d kanałów.

CHAN_REGISTRATION_FAILED
	Rejestracja nie powiodła się.

CHAN_REGISTERED
	Kanał %s został teraz zarejestrowany.
	Jako %s jesteś od teraz jego właścicielem.

CHAN_PASSWORD_IS
	Hasło do Twojego kanału to %s

CHAN_REGISTER_NONE_CHANNEL
	Próbujesz rejestrować nieistniejący kanał %s

CHAN_SYMBOL_REQUIRED
	Użyj symboli # lub & podczas rejestracji

# IDENTIFY responses
CHAN_IDENTIFY_SYNTAX
	IDENTIFY kanał hasło

CHAN_IDENTIFY_FAILED
	Identyfikacja nie powiodła się.

CHAN_IDENTIFY_SUCCEEDED
	Hasło przyjęte - masz uprawnienia właściciela kanału %s.

# LOGOUT responses
CHAN_LOGOUT_SYNTAX
	LOGOUT kanał nick

CHAN_LOGOUT_SERVADMIN_SYNTAX
	LOGOUT kanał [nick]

CHAN_LOGOUT_SUCCEEDED
	Użytkownik %s został wylogowany z kanału %s.
CHAN_LOGOUT_ALL_SUCCEEDED
	Wylogowano zidentyfikowanych użytkowników z kanału %s (bez właściciela).
CHAN_LOGOUT_FOUNDER_FAILED
	Nie możesz się wylogować z %s (jesteś właścicielem).

# DROP responses
CHAN_DROP_SYNTAX
	DROP kanał

CHAN_DROP_DISABLED
	Usuwanie kanałów jest tymczasowo wyłączone.

CHAN_DROPPED
	Kanał %s został odrejestrowany.

# SET responses
CHAN_SET_SYNTAX
	SET kanał opcja parametry

CHAN_SET_DISABLED
	Modyfikacja ustawień kanału jest tymczasowo wyłączona.

CHAN_SET_UNKNOWN_OPTION
	Nieznana opcja komendy SET: %s.

# SET FOUNDER responses
CHAN_SET_FOUNDER_TOO_MANY_CHANS
	%s posiada za dużo zarejestrowanych kanałów.

CHAN_FOUNDER_CHANGED
	Właścicielem kanału %s jest teraz %s.

# SET SUCCESSOR responses
CHAN_SUCCESSOR_CHANGED
	Zastępcę dla kanału %s zmieniono na %s.

CHAN_SUCCESSOR_UNSET
	Zastępcę dla kanału %s usunięto.

CHAN_SUCCESSOR_IS_FOUNDER
	%s nie może być zastępcą na kanale %s, ponieważ jest jego właścicielem.

# SET PASSWORD responses
CHAN_SET_PASSWORD_FAILED
	Zmiana hasła nie powiodła się.

CHAN_PASSWORD_CHANGED
	Hasło do kanału %s zostało zmienione.

CHAN_PASSWORD_CHANGED_TO
	Hasło do kanału %s zostało zmienione na %s.

# SET DESC responses
CHAN_DESC_CHANGED
	Opis kanału %s został zmieniony na %s.

# SET URL responses
CHAN_URL_CHANGED
	Adres www dla kanału %s został zmieniony na %s.

CHAN_URL_UNSET
	Adres www dla kanału %s został usunięty.

# SET EMAIL responses
CHAN_EMAIL_CHANGED
	Adres e-mail kanału %s został zmieniony na %s.

CHAN_EMAIL_UNSET
	Adres e-mail kanału %s został usunięty.

# SET ENTRYMSG responses
CHAN_ENTRY_MSG_CHANGED
	Wiadomość powitalna kanału %s została zmieniona.

CHAN_ENTRY_MSG_UNSET
	Wiadomość powitalna kanału %s została usunięta.
	

# SET BANTYPE responses
CHAN_SET_BANTYPE_INVALID
	%s nie jest prawidłowym rodzajem bana.

CHAN_SET_BANTYPE_CHANGED
	Rodzajem bana dla kanału %s jest teraz #%d.

# SET MLOCK responses
CHAN_SET_MLOCK_UNKNOWN_CHAR
	Nieznany flaga %c zostaje zignorowana.

CHAN_SET_MLOCK_IMPOSSIBLE_CHAR
	Flaga %c została zignorowana, bo nie można jej blokować.

CHAN_SET_MLOCK_L_REQUIRED
	Musisz założyć +l zanim założysz +L.

CHAN_SET_MLOCK_K_REQUIRED
	Musisz założyć +i również, aby móc założyć +K.

CHAN_MLOCK_CHANGED
	Blokada trybów kanału %s została zmieniona na: %s

# SET KEEPTOPIC responses
CHAN_SET_KEEPTOPIC_SYNTAX
	SET kanał KEEPTOPIC {ON | OFF}

CHAN_SET_KEEPTOPIC_ON
	Temat kanału %s będzie teraz utrzymywany.

CHAN_SET_KEEPTOPIC_OFF
	Temat kanału %s nie będzie już utrzymywany.

# SET TOPICLOCK responses
CHAN_SET_TOPICLOCK_SYNTAX
	SET kanał TOPICLOCK {ON | OFF}

CHAN_SET_TOPICLOCK_ON
	Blokada tematu na kanale %s została włączona.

CHAN_SET_TOPICLOCK_OFF
	Blokada tematu na kanale %s została wyłączona.

# SET PEACE responses
CHAN_SET_PEACE_SYNTAX
	SET kanał PEACE {ON | OFF}

CHAN_SET_PEACE_ON
	Opcja PEACE dla kanału %s została włączona.

CHAN_SET_PEACE_OFF
	Opcja PEACE dla kanału %s została wyłączona.

# SET PRIVATE responses
CHAN_SET_PRIVATE_SYNTAX
	SET kanał PRIVATE {ON | OFF}

CHAN_SET_PRIVATE_ON
	Opcja PRIVATE dla kanału %s została włączona.

CHAN_SET_PRIVATE_OFF
	Opcja PRIVATE dla kanału %s została wyłączona.

# SET SECUREOPS responses
CHAN_SET_SECUREOPS_SYNTAX
	SET kanał SECUREOPS {ON | OFF}

CHAN_SET_SECUREOPS_ON
	Status operatora kanału %s będzie teraz chroniony.

CHAN_SET_SECUREOPS_OFF
	Status operatora kanału %s nie będzie już chroniony.

# SET SECUREFOUNDER responses
CHAN_SET_SECUREFOUNDER_SYNTAX
	SET kanał SECUREFOUNDER {ON | OFF}

CHAN_SET_SECUREFOUNDER_ON
	Status właściciela kanału %s będzie teraz chroniony.

CHAN_SET_SECUREFOUNDER_OFF
	Status właściciela kanału %s nie będzie już chroniony.

# SET RESTRICTED responses
CHAN_SET_RESTRICTED_SYNTAX
	SET kanał RESTRICTED {ON | OFF}

CHAN_SET_RESTRICTED_ON
	Dostęp do kanału %s jest teraz ograniczony.

CHAN_SET_RESTRICTED_OFF
	Dostęp do kanału %s nie jest już ograniczony.

# SET SECURE responses
CHAN_SET_SECURE_SYNTAX
	SET kanał SECURE {ON | OFF}

CHAN_SET_SECURE_ON
	Opcja bezpieczeństwa dla kanału %s została włączona.

CHAN_SET_SECURE_OFF
	Opcja bezpieczeństwa dla kanału %s została wyłączona.

# SET SIGNKICK responses
CHAN_SET_SIGNKICK_SYNTAX
	SET kanał SIGNKICK {ON | LEVEL | OFF}

CHAN_SET_SIGNKICK_ON
	Podpisywanie komendy KICK na kanale %s zostało włączone.

CHAN_SET_SIGNKICK_LEVEL
	Podpisywanie komendy KICK na kanale %s zostało włączone, ale
	będzie zależało od poziomu dostępu jaki posiada użytkownik.

CHAN_SET_SIGNKICK_OFF
	Podpisywanie komendy KICK na kanale %s zostało wyłączone.

# SET OPNOTICE responses
CHAN_SET_OPNOTICE_SYNTAX
	SET kanał OPNOTICE {ON | OFF}

CHAN_SET_OPNOTICE_ON
	Opcja OPNOTICE dla kanału %s została włączona.

CHAN_SET_OPNOTICE_OFF
	Opcja OPNOTICE dla kanału %s została wyłączona.

# SET XOP responses
CHAN_SET_XOP_SYNTAX
	SET kanał XOP {ON | OFF}

CHAN_SET_XOP_ON
	System list xOP na kanale %s został włączony.

CHAN_SET_XOP_OFF
	System list xOP na kanale %s został wyłączony.

# SET NOEXPIRE responses
CHAN_SET_NOEXPIRE_SYNTAX
	SET kanał NOEXPIRE {ON | OFF}

CHAN_SET_NOEXPIRE_ON
	Kanał %s nie wygaśnie.

CHAN_SET_NOEXPIRE_OFF
	Kanał %s od teraz podlega prawu wygasania.

# xOP messages
CHAN_XOP_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na listach xOP.

CHAN_XOP_LIST_FORMAT
	  %3d  %s

CHAN_XOP_ACCESS
	Nie możesz użyć tej komendy. Użyj komendy ACCESS.
	Napisz %R%s HELP ACCESS, aby uzyskać więcej informacji.

CHAN_XOP_NOT_AVAILABLE
	System xOP nie jest dostępny.

# AOP messages
CHAN_AOP_SYNTAX
	AOP kanał {ADD|DEL|LIST|CLEAR} [nick | pozycja]

CHAN_AOP_DISABLED
	Modyfikacja listy AOP jest tymczasowo wyłączona.

CHAN_AOP_NICKS_ONLY
	Kanałowa lista AOP może zawierać jedynie zarejestrowane nicki.

CHAN_AOP_ADDED
	%s dodano do listy AOP kanału %s.

CHAN_AOP_MOVED
	%s przeniesiono do listy AOP kanału %s.

CHAN_AOP_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście AOP kanału %s.

CHAN_AOP_NOT_FOUND
	%s nie znaleziono na liście AOP kanału %s.

CHAN_AOP_NO_MATCH
	Nie znaleziono wpisów w liście AOP kanału %s.

CHAN_AOP_DELETED
	%s usunięto z listy AOP kanału %s.

CHAN_AOP_DELETED_ONE
	Usunięto 1 wpis z listy AOP kanału %s.

CHAN_AOP_DELETED_SEVERAL
	Usunięto %d wpisów(y) z listy AOP kanału %s.

CHAN_AOP_LIST_EMPTY
	Lista AOP kanału %s jest pusta.

CHAN_AOP_LIST_HEADER
	Lista AOP kanału %s:
	  Nr   Nick

CHAN_AOP_CLEAR
	Lista AOP kanału %s została wyczyszczona.

# HOP messages
CHAN_HOP_SYNTAX
	HOP kanał {ADD|DEL|LIST|CLEAR} [nick | pozycja]

CHAN_HOP_DISABLED
	Modyfikacja listy HOP jest tymczasowo wyłączona.

CHAN_HOP_NICKS_ONLY
	Kanałowa lista HOP może zawierać jedynie zarejestrowane nicki.

CHAN_HOP_ADDED
	%s dodano do listy HOP kanału %s.

CHAN_HOP_MOVED
	%s przeniesiono do listy HOP kanału %s.

CHAN_HOP_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście HOP kanału %s.

CHAN_HOP_NOT_FOUND
	%s nie znaleziono na liście HOP kanału %s.

CHAN_HOP_NO_MATCH
	Nie znaleziono wpisów w liście HOP kanału %s.

CHAN_HOP_DELETED
	%s usunięto z listy HOP kanału %s.

CHAN_HOP_DELETED_ONE
	Usunięto 1 wpis z listy HOP kanału %s.

CHAN_HOP_DELETED_SEVERAL
	Usunięto %d wpisów(y) z listy HOP kanału %s.

CHAN_HOP_LIST_EMPTY
	Lista HOP kanału %s jest pusta.

CHAN_HOP_LIST_HEADER
	Lista HOP kanału %s:
	  Nr   Nick

CHAN_HOP_CLEAR
	Lista HOP kanału %s została wyczyszczona.

# SOP messages
CHAN_SOP_SYNTAX
	SOP kanał {ADD|DEL|LIST|CLEAR} [nick | pozycja]

CHAN_SOP_DISABLED
	Modyfikacja listy SOP jest tymczasowo wyłączona.

CHAN_SOP_NICKS_ONLY
	Kanałowa lista SOP może zawierać jedynie zarejestrowane nicki.

CHAN_SOP_ADDED
	%s dodano do listy SOP kanału %s.

CHAN_SOP_MOVED
	%s przeniesiono do listy SOP kanału %s.

CHAN_SOP_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście SOP kanału %s.

CHAN_SOP_NOT_FOUND
	%s nie znaleziono na liście SOP kanału %s.

CHAN_SOP_NO_MATCH
	Nie znaleziono wpisów w liście SOP kanału %s.

CHAN_SOP_DELETED
	%s usunięto z listy SOP kanału %s.

CHAN_SOP_DELETED_ONE
	Usunięto 1 wpis z listy SOP kanału %s.

CHAN_SOP_DELETED_SEVERAL
	Usunięto %d wpisów(y) z listy SOP kanału %s.

CHAN_SOP_LIST_EMPTY
	Lista SOP kanału %s jest pusta.

CHAN_SOP_LIST_HEADER
	Lista SOP kanału %s:
	  Nr   Nick

CHAN_SOP_CLEAR
	Lista SOP kanału %s została wyczyszczona.

# VOP messages
CHAN_VOP_SYNTAX
	VOP kanał {ADD|DEL|LIST|CLEAR} [nick | pozycja]

CHAN_VOP_DISABLED
	Modyfikacja listy VOP jest tymczasowo wyłączona.

CHAN_VOP_NICKS_ONLY
	Kanałowa lista VOP może zawierać jedynie zarejestrowane nicki.

CHAN_VOP_ADDED
	%s dodano do listy VOP kanału %s.

CHAN_VOP_MOVED
	%s przeniesiono do listy VOP kanału %s.

CHAN_VOP_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście VOP kanału %s.

CHAN_VOP_NOT_FOUND
	%s nie znaleziono na liście VOP kanału %s.

CHAN_VOP_NO_MATCH
	Nie znaleziono wpisów w liście VOP kanału %s.

CHAN_VOP_DELETED
	%s usunięto z listy VOP kanału %s.

CHAN_VOP_DELETED_ONE
	Usunięto 1 wpis z listy VOP kanału %s.

CHAN_VOP_DELETED_SEVERAL
	Usunięto %d wpisów(y) z listy VOP kanału %s.

CHAN_VOP_LIST_EMPTY
	Lista VOP kanału %s jest pusta.

CHAN_VOP_LIST_HEADER
	Lista VOP kanału %s:
	  Nr   Nick

CHAN_VOP_CLEAR
	Lista VOP kanału %s została wyczyszczona.

# ACCESS messages
CHAN_ACCESS_SYNTAX
	ACCESS kanał {ADD|DEL|LIST|CLEAR} [nick [poziom] | pozycja]

CHAN_ACCESS_XOP
	Nie możesz użyć tej komendy.
	Musisz użyć poleceń VOP, AOP lub SOP.
	Napisz %R%s HELP komenda, aby uzyskać więcej informacji.

CHAN_ACCESS_XOP_HOP
	Nie możesz użyć tej komendy.
	Musisz użyć poleceń VOP, HOP, AOP lub SOP.
	Napisz %R%s HELP komenda, aby uzyskać więcej informacji.

CHAN_ACCESS_DISABLED
	Modyfikacja listy dostępu jest tymczasowo wyłączona.

CHAN_ACCESS_LEVEL_NONZERO
	Poziom dostępu nie może być zerem.

CHAN_ACCESS_LEVEL_RANGE
	Poziom dostępu musi być pomiędzy %d a %d włącznie.

CHAN_ACCESS_NICKS_ONLY
	Kanałowa lista dostępu może zawierać tylko zarejestrowane nicki.

CHAN_ACCESS_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na kanałowej liście dostępu.

CHAN_ACCESS_LEVEL_UNCHANGED
	Poziom dostępu dla %s na kanale %s jest
	nadany od %d.

CHAN_ACCESS_LEVEL_CHANGED
	Poziom dostępu dla %s na kanale %s
	zmieniono na %d.

CHAN_ACCESS_ADDED
	%s dodano do listy dostępu kanału %s z
	poziomem %d.

CHAN_ACCESS_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście dostępu kanału %s.

CHAN_ACCESS_NOT_FOUND
	%s nie znaleziono na liście dostępu kanału %s.

CHAN_ACCESS_NO_MATCH
	Nie znaleziono wpisów na liście dostępu kanału %s.

CHAN_ACCESS_DELETED
	%s usunięto z listy dostępu kanału %s.

CHAN_ACCESS_DELETED_ONE
	Usunięto 1 wpis z listy dostępu kanału %s.

CHAN_ACCESS_DELETED_SEVERAL
	Usunięto %d wpisów(y) z listy dostępu kanału %s.

CHAN_ACCESS_LIST_EMPTY
	Lista dostępu kanału %s jest pusta.

CHAN_ACCESS_LIST_HEADER
	Lista dostępu kanału %s:
	  Nr   Poz  Nick

CHAN_ACCESS_LIST_FOOTER
	Koniec listy dostępu.

CHAN_ACCESS_LIST_XOP_FORMAT
	  %3d   %s  %s

CHAN_ACCESS_LIST_AXS_FORMAT
	  %3d  %4d  %s

CHAN_ACCESS_CLEAR
	Lista dostępu kanału %s została wyczyszczona.

# AKICK responses
CHAN_AKICK_SYNTAX
	AKICK kanał {ADD | STICK | UNSTICK | DEL | LIST | VIEW | ENFORCE | CLEAR} [nick-lub-maska] [powód]

CHAN_AKICK_DISABLED
	Modyfikacja listy AKICK jest tymczasowo wyłączona.

CHAN_AKICK_ALREADY_EXISTS
	%s już istnieje w liście AKICK kanału %s.

CHAN_AKICK_REACHED_LIMIT
	Możesz mieć jedynie %d wpisów w liście AKICK.

CHAN_AKICK_ADDED
	%s dodano do listy AKICK kanału %s.

CHAN_AKICK_NO_SUCH_ENTRY
	Brak wpisu (#%d) na liście AKICK kanału %s.

CHAN_AKICK_NOT_FOUND
	%s nie znaleziono na liście AKICK kanału %s.

CHAN_AKICK_NO_MATCH
	Nie znaleziono wpisów na liście AKICK kanału %s.

CHAN_AKICK_STUCK
	%s jest od teraz cały czas aktywny na %s.

CHAN_AKICK_UNSTUCK
	%s nie jest już zawsze aktywny na %s.

CHAN_AKICK_DELETED
	%s usunięto z listy AKICK %s.

CHAN_AKICK_DELETED_ONE
	Usunięto 1 wpis z listy AKICK kanału %s.

CHAN_AKICK_DELETED_SEVERAL
	Usunięto %d wpisów z listy AKICK kanału %s.

CHAN_AKICK_LIST_EMPTY
	Lista AKICK kanału %s jest pusta.

CHAN_AKICK_LIST_HEADER
	Lista AKICK dla kanału %s:

CHAN_AKICK_LIST_FORMAT
	  %3d %s (%s)

CHAN_AKICK_VIEW_FORMAT
	%3d %s (przez %s na %s)
	    %s

CHAN_AKICK_VIEW_FORMAT_STUCK
	%3d %s (zablokowany) (przez %s na %s)
	    %s

CHAN_AKICK_ENFORCE_DONE
	Egzekucja listy AKICK kanału %s zakończona.
	Dotyczyła %d użytkowników.

CHAN_AKICK_CLEAR
	Lista AKICK kanału %s została wyczyszczona.

# LEVELS responses
CHAN_LEVELS_SYNTAX
	LEVELS kanał {SET | DIS[ABLE] | LIST | RESET} [element [poziom]]

CHAN_LEVELS_XOP
	Modyfikowanie poziomów nie jest dostępne w trybie XOP.

CHAN_LEVELS_RANGE
	Poziom musi być pomiędzy %d a %d włącznie.

CHAN_LEVELS_CHANGED
	Wymagany poziom dla %s
	na kanale %s zmieniono teraz na %d.

CHAN_LEVELS_UNKNOWN
	Nieznane ustawienie %s.
	Napisz %R%s HELP LEVELS DESC, aby uzyskać listę dostępnych możliwości.

CHAN_LEVELS_DISABLED
	%s wyłączono na kanale %s.

CHAN_LEVELS_LIST_HEADER
	Ustawienia poziomów dostępu kanału %s:

CHAN_LEVELS_LIST_DISABLED
	    %-*s  (wyłączony)

CHAN_LEVELS_LIST_FOUNDER
	    %-*s  (tylko właściciel)

CHAN_LEVELS_LIST_NORMAL
	    %-*s  %d

CHAN_LEVELS_RESET
	Poziomy dostępu kanału %s zostały zresetowane do domyślnych.

# Status messages
CHAN_STATUS_SYNTAX
	STATUS ERROR Błąd składni

CHAN_STATUS_NOT_REGGED
	STATUS ERROR Kanał %s nie jest zarejestrowany

CHAN_STATUS_FORBIDDEN
	STATUS ERROR Kanał %s jest zakazany

CHAN_STATUS_NOTONLINE
	STATUS ERROR Nick %s nie jest online

CHAN_STATUS_INFO
	STATUS %s %s %d

# INFO responses
CHAN_INFO_SYNTAX
	INFO kanał [ALL]

CHAN_INFO_HEADER
	Informacje o kanale %s:

CHAN_INFO_FOUNDER
	     Właściciel: %s (%s)

CHAN_INFO_NO_FOUNDER
	     Właściciel: %s

CHAN_INFO_SUCCESSOR
	       Zastępca: %s (%s)

CHAN_INFO_NO_SUCCESSOR
	       Zastępca: %s

CHAN_INFO_DESCRIPTION
	           Opis: %s

CHAN_INFO_ENTRYMSG
	      Powitanie: %s

CHAN_INFO_TIME_REGGED
	 Zarejestrowano: %s

CHAN_INFO_LAST_USED
	        Używano: %s

CHAN_INFO_LAST_TOPIC
	  Ostatni temat: %s

CHAN_INFO_TOPIC_SET_BY
	Ustawiony przez: %s

CHAN_INFO_URL
	      Adres www: %s

CHAN_INFO_EMAIL
	   Adres e-mail: %s

CHAN_INFO_BANTYPE
	       Typ bana: %d

CHAN_INFO_OPTIONS
	          Opcje: %s

CHAN_INFO_OPT_KEEPTOPIC
	KEEPTOPIC

CHAN_INFO_OPT_OPNOTICE
	OPNOTICE

CHAN_INFO_OPT_PEACE
	PEACE

CHAN_INFO_OPT_PRIVATE
	PRIVATE

CHAN_INFO_OPT_RESTRICTED
	RESTRICTED

CHAN_INFO_OPT_SECURE
	SECURE

CHAN_INFO_OPT_SECUREOPS
	SECUREOPS

CHAN_INFO_OPT_SECUREFOUNDER
	SECUREFOUNDER

CHAN_INFO_OPT_SIGNKICK
	SIGNKICK

CHAN_INFO_OPT_TOPICLOCK
	TOPICLOCK

CHAN_INFO_OPT_XOP
	XOP

CHAN_INFO_OPT_NONE
	Brak

CHAN_INFO_MODE_LOCK
	Blokowane tryby: %s

CHAN_INFO_EXPIRE
	         Wygasa: %s

CHAN_INFO_NO_EXPIRE
	Ten kanał nie wygaśnie.

# LIST responses
CHAN_LIST_SYNTAX
	LIST wzorzec

CHAN_LIST_SERVADMIN_SYNTAX
	LIST wzorzec [FORBIDDEN] [SUSPENDED] [NOEXPIRE]

CHAN_LIST_HEADER
	Lista pasujących wpisów %s:

CHAN_LIST_FORMAT
	    %-20s  %s

CHAN_LIST_END
	Koniec listy - %d/%d wpisów znalezionych.
	

# INVITE responses
CHAN_INVITE_SYNTAX
	INVITE kanał

# UNBAN responses
CHAN_UNBAN_SYNTAX
	UNBAN kanał

CHAN_UNBANNED
	Ban na kanale %s został zdjęty.

# TOPIC responses
CHAN_TOPIC_SYNTAX
	TOPIC kanał [temat]

# CLEAR responses
CHAN_CLEAR_SYNTAX
	CLEAR kanał co

CHAN_CLEARED_BANS
	Wszystkie bany z kanału %s zostały usunięte.

CHAN_CLEARED_EXCEPTS
	Wszystkie wyjątki z kanału %s zostały usunięte.

CHAN_CLEARED_MODES
	Wszystkie flagi kanału %s zostały zresetowane.

CHAN_CLEARED_OPS
	Flagi +o zostały wyczyszczone na kanale %s.

CHAN_CLEARED_HOPS
	Flagi +h zostały wyczyszczone na kanale %s.

CHAN_CLEARED_VOICES
	Flagi +v zostały wyczyszczone na kanale %s.

CHAN_CLEARED_USERS
	Wszyscy użytkownicy zostali usunięci z kanału %s.

CHAN_CLEARED_INVITES
	Wszystkie zaproszenia z kanału %s zostały usunięte.

# GETPASS responses
CHAN_GETPASS_SYNTAX
	GETPASS kanał

CHAN_GETPASS_UNAVAILABLE
	Komenda GETPASS nie działa, bo hasła są szyfrowane.

CHAN_GETPASS_PASSWORD_IS
	Hasło kanału %s to %s.

# GETKEY responses
CHAN_GETKEY_SYNTAX
	GETKEY kanał

CHAN_GETKEY_NOKEY
	Kanał %s nie posiada klucza.

CHAN_GETKEY_KEY
	KEY %s %s

# SENDPASS responses
CHAN_SENDPASS_SYNTAX
	SENDPASS kanał

CHAN_SENDPASS_UNAVAILABLE
	Komenda SENDPASS nie działa, bo hasła są szyfrowane.

CHAN_SENDPASS_SUBJECT
	Hasło do kanału %s

CHAN_SENDPASS_HEAD
	Witaj!

CHAN_SENDPASS_LINE_1
	Zażądałeś(aś) wysłania hasła do kanału %s na e-mail.

CHAN_SENDPASS_LINE_2
	Twoje hasło to: %s.
	Dla własnego bezpieczeństwa należy to hasło natychmiast zmienić na inne.

CHAN_SENDPASS_LINE_3
	Jeśli nie wiesz dlaczego ta wiadomość dotarła do Ciebie zignoruj ją. Jeśli ta sytuacja będzie się powtarzać skontaktuj się z administratorem sieci.

CHAN_SENDPASS_LINE_4
	PROSZĘ NIE ODPOWIADAĆ NA TĄ WIADOMOŚĆ!

CHAN_SENDPASS_LINE_5
	Administratorzy sieci %s.

CHAN_SENDPASS_OK
	Hasło do kanału %s zostało wysłane.

# FORBID responses
CHAN_FORBID_SYNTAX
	FORBID kanał [powód]

CHAN_FORBID_SYNTAX_REASON
	FORBID kanał powód

CHAN_FORBID_SUCCEEDED
	Kanał %s został zablokowany.

CHAN_FORBID_FAILED
	Nie mogę zablokować kanału %s!

CHAN_FORBID_REASON
	Ten kanał został zablokowany.

# SUSPEND responses
CHAN_SUSPEND_SYNTAX
	SUSPEND kanał [powód]

CHAN_SUSPEND_SYNTAX_REASON
	SUSPEND kanał powód

CHAN_SUSPEND_SUCCEEDED
	Kanał %s został zawieszony.

CHAN_SUSPEND_FAILED
	Zawieszenie kanału %s nie powiodło się!

CHAN_SUSPEND_REASON
	Ten kanał został zawieszony.

# UNSUSPEND responses
CHAN_UNSUSPEND_SYNTAX
	UNSUSPEND kanał

CHAN_UNSUSPEND_ERROR
	Nie znaleziono znaku # na początku nazwy kanału.

CHAN_UNSUSPEND_SUCCEEDED
	Kanał %s został uwolniony.

CHAN_UNSUSPEND_FAILED
	Nie mogę uwolnić kanału %s!

# Misc responses
CHAN_EXCEPTED
	%s posiada wyjątek na %s i nie może być zbanowany póki nie zostanie usunięty.

###########################################################################
#
# MemoServ messages
#
###########################################################################
# Automatic messages
MEMO_HAVE_NEW_MEMO
	Masz jedną nową wiadomość.

MEMO_HAVE_NEW_MEMOS
	Masz %d nowe(ych) wiadomości.

MEMO_TYPE_READ_LAST
	Napisz %R%s READ LAST aby przeczytać.

MEMO_TYPE_READ_NUM
	Napisz %R%s READ %d aby przeczytać.

MEMO_TYPE_LIST_NEW
	Napisz %R%s LIST NEW,
	aby zobaczyć listę nowych wiadomości.

MEMO_AT_LIMIT
	Uwaga: Osiągnięto już limit wiadomości (%d).
	Nie będziesz otrzymywać nowych wiadomości dopóki
	nie usuniesz kilku starych.

MEMO_OVER_LIMIT
	Uwaga: Maksymalny limit wiadomości (%d) został osiągnięty.
	Nie będziesz otrzymywać nowych wiadomości jeśli kilku nie usuniesz.

MEMO_X_MANY_NOTICE
	Jest %d wiadomości dla kanału %s.

MEMO_X_ONE_NOTICE
	Jest %d wiadomość dla kanału %s.

MEMO_NEW_X_MEMO_ARRIVED
	Jest nowa wiadomość dla kanału %s.
	Napisz %R%s READ %s %d aby ją przeczytać.

MEMO_NEW_MEMO_ARRIVED
	Nasz nową wiadomość od %s.
	Napisz %R%s READ %d aby ją przeczytać.

# Multi-use responses
MEMO_HAVE_NO_MEMOS
	Nie masz wiadomości.

MEMO_X_HAS_NO_MEMOS
	%s nie ma wiadomości.

MEMO_DOES_NOT_EXIST
	Wiadomość %d nie istnieje!

MEMO_LIST_NOT_FOUND
	Nie znaleziono pasujących wiadomości.

# SEND responses
MEMO_SEND_SYNTAX
	SEND {nick | kanał} treść

MEMO_SEND_DISABLED
	Wysyłanie wiadomości jest tymczasowo wyłączone.

MEMO_SEND_PLEASE_WAIT
	Odczekaj %d sekund(y) przed ponownym użyciem komendy SEND.

MEMO_X_GETS_NO_MEMOS
	%s nie może odbierać wiadomości.

MEMO_X_HAS_TOO_MANY_MEMOS
	%s ma zbyt dużo wiadomości i nie może otrzymywać nowych.

MEMO_SENT
	Wiadomość została wysłana do %s.

MEMO_MASS_SENT
	Wiadomość została wysłana do wszystkich zarejestrowanych użytkowników.
	
# STAFF responses
MEMO_STAFF_SYNTAX
	STAFF treść wiadomości

# CANCEL responses
MEMO_CANCEL_SYNTAX
	CANCEL {nick | kanał}

MEMO_CANCEL_DISABLED
	Odwoływanie wiadomości jest tymczasowo wyłączone.

MEMO_CANCEL_NONE
	Brak wiadomości do odwołania.

MEMO_CANCELLED
	Ostatnia wiadomość do %s została odwołana.

# LIST responses
MEMO_LIST_SYNTAX
	LIST [kanał] [lista | NEW]

MEMO_HAVE_NO_NEW_MEMOS
	Nie masz nowych wiadomości.

MEMO_X_HAS_NO_NEW_MEMOS
	%s nie ma nowych wiadomości.

MEMO_LIST_MEMOS
	Wiadomości dla %s. Aby przeczytać, napisz: %R%s READ numer

MEMO_LIST_NEW_MEMOS
	Nowe wiadomości dla %s. Aby przeczytać,
	napisz: %R%s READ numer

MEMO_LIST_CHAN_MEMOS
	Wiadomości dla %s. Aby przeczytać, napisz: %R%s READ %s numer

MEMO_LIST_CHAN_NEW_MEMOS
	Nowe wiadomości dla %s. Aby przeczytać,
	napisz: %R%s READ %s numer

MEMO_LIST_HEADER
	 Nr   Nadawca            Data/Czas

MEMO_LIST_FORMAT
	%c%3d  %-16s  %s

# READ responses
MEMO_READ_SYNTAX
	READ [kanał] {lista | LAST | NEW}

MEMO_HEADER
	Wiadomość %d od %s (%s). Aby usunąć, napisz: %R%s DEL %d

MEMO_CHAN_HEADER
	Wiadomość %d od %s (%s). Aby usunąć, napisz: %R%s DEL %s %d

MEMO_TEXT
	%s

# DEL responses
MEMO_DEL_SYNTAX
	DEL [kanał] {numer | list | ALL}

MEMO_DELETED_NONE
	Nie usunięto żadnych wiadomości.

MEMO_DELETED_ONE
	Wiadomość %d została usunięta.

MEMO_DELETED_SEVERAL
	Wiadomości %s zostały usunięte.

MEMO_DELETED_ALL
	Wszystkie Twoje wiadomości zostały usunięte.

MEMO_CHAN_DELETED_ALL
	Wszystkie wiadomości kanału %s zostały usunięte.

# SET responses
MEMO_SET_SYNTAX
	SET opcja parametry

MEMO_SET_DISABLED
	Ustawianie opcji wiadomości jest tymczasowo wyłączone.

MEMO_SET_UNKNOWN_OPTION
	Nieznana opcja komendy SET %s.

# SET NOTIFY responses
MEMO_SET_NOTIFY_SYNTAX
	SET NOTIFY {ON | LOGON | NEW | MAIL | MAIL | NOMAIL | OFF }

MEMO_SET_NOTIFY_ON
	%s powiadomi Cię o wiadomościach podczas logowania i w momencie ich nadejścia.

MEMO_SET_NOTIFY_LOGON
	%s powiadomi Cię o wiadomościach podczas logowania oraz po wyłączeniu /away.

MEMO_SET_NOTIFY_NEW
	%s będzie powiadamiał Cię o nowych wiadomościach w momencie ich nadejścia.

MEMO_SET_NOTIFY_OFF
	%s nie będzie powiadamiał Cię o nowych wiadomościach.

MEMO_SET_NOTIFY_MAIL
	Powiadomienie o nowych wiadomościach będą wysyłane na adres e-mail.

MEMO_SET_NOTIFY_NOMAIL
	Powiadomienie o nowych wiadomościach nie będą wysyłane na adres e-mail.

MEMO_SET_NOTIFY_INVALIDMAIL
	Twój nick nie ma ustawionego adresu e-mail.

# SET LIMIT responses
MEMO_SET_LIMIT_SYNTAX
	SET LIMIT [kanał] limit

MEMO_SET_LIMIT_SERVADMIN_SYNTAX
	SET LIMIT [nick | kanał] {limit | NONE} [HARD]

MEMO_SET_YOUR_LIMIT_FORBIDDEN
	Nie możesz zmieniać swojego limitu wiadomości.

MEMO_SET_LIMIT_FORBIDDEN
	Limit wiadomości dla %s nie może być zmieniany.

MEMO_SET_YOUR_LIMIT_TOO_HIGH
	Nie możesz ustawić swojego limitu wiadomości większego niż %d.

MEMO_SET_LIMIT_TOO_HIGH
	Nie możesz ustawić limitu wiadomości dla %s większego niż %d.

MEMO_SET_LIMIT_OVERFLOW
	Limit wiadomości jest za duży. Limituj do %d.

MEMO_SET_YOUR_LIMIT
	Twój limit wiadomości został zmieniony na %d.

MEMO_SET_YOUR_LIMIT_ZERO
	Nie będziesz już dłużej odbierać wiadomości.

MEMO_UNSET_YOUR_LIMIT
	Twój limit wiadomości został wyłączony.

MEMO_SET_LIMIT
	Limit wiadomości dla %s zmieniono na %d.

MEMO_SET_LIMIT_ZERO
	Limit wiadomości dla %s ustawiono na 0.

MEMO_UNSET_LIMIT
	Limit wiadomości dla %s jest wyłączony.

# INFO responses
MEMO_INFO_SYNTAX
	INFO [kanał]

MEMO_INFO_SERVADMIN_SYNTAX
	INFO [nick | kanał]

MEMO_INFO_NO_MEMOS
	Aktualnie nie masz wiadomości.

MEMO_INFO_MEMO
	Aktualnie masz jedną wiadomość.

MEMO_INFO_MEMO_UNREAD
	Aktualnie masz jedną wiadomość i jest ona nieprzeczytana.

MEMO_INFO_MEMOS
	Aktualnie masz %d wiadomości.

MEMO_INFO_MEMOS_ONE_UNREAD
	Aktualnie masz %d wiadomości, w tym jedną nieprzeczytaną.

MEMO_INFO_MEMOS_SOME_UNREAD
	Aktualnie masz %d wiadomości, z czego %d jest nieprzeczytanych.

MEMO_INFO_MEMOS_ALL_UNREAD
	Aktualnie masz %d nieprzeczytanych wiadomości.

MEMO_INFO_LIMIT
	Twój limit wiadomości wynosi %d.

MEMO_INFO_HARD_LIMIT
	Twój limit wiadomości wynosi %d i nie może być zmieniony.

MEMO_INFO_LIMIT_ZERO
	Twój limit wiadomości wynosi 0, nie będziesz otrzymywać nowych.

MEMO_INFO_HARD_LIMIT_ZERO
	Twój limit wiadomości wynosi 0, nie będziesz odbierać nowych i nie możesz zmienić tego limitu.
MEMO_INFO_NO_LIMIT
	Nie masz limitu wiadomości, które możesz trzymać.

MEMO_INFO_NOTIFY_OFF
	Nie będziesz otrzymywać informacji o nowych wiadomościach.

MEMO_INFO_NOTIFY_ON
	Będziesz powiadomienie informacje o nowych wiadomościach
	podczas logowania i w momencie ich nadejścia.

MEMO_INFO_NOTIFY_RECEIVE
	Będziesz otrzymywać powiadomienie o nowych wiadomościach.

MEMO_INFO_NOTIFY_SIGNON
	Będziesz otrzymywać powiadomienie o nowych wiadomościach podczas logowania.

MEMO_INFO_X_NO_MEMOS
	%s aktualnie nie ma wiadomości.

MEMO_INFO_X_MEMO
	%s aktualnie ma jedną wiadomość.

MEMO_INFO_X_MEMO_UNREAD
	%s ma aktualnie jedną wiadomość, która jest nieprzeczytana.

MEMO_INFO_X_MEMOS
	%s ma aktualnie %d wiadomości.

MEMO_INFO_X_MEMOS_ONE_UNREAD
	%s ma aktualnie %d wiadomości, w tym jedną nieprzeczytaną.

MEMO_INFO_X_MEMOS_SOME_UNREAD
	%s ma aktualnie %d wiadomości, z czego %d jest nieprzeczytanych.

MEMO_INFO_X_MEMOS_ALL_UNREAD
	%s ma aktualnie %d nieprzeczytanych wiadomości.

MEMO_INFO_X_LIMIT
	%s ma limit wiadomości %d.

MEMO_INFO_X_HARD_LIMIT
	%s ma limit wiadomości %d i nie może być zmieniony.

MEMO_INFO_X_NO_LIMIT
	%s nie ma limitu wiadomości.

MEMO_INFO_X_NOTIFY_OFF
	%s nie otrzymuje powiadomień o nowych wiadomościach.

MEMO_INFO_X_NOTIFY_ON
	%s otrzymuje powiadomienia o nowych wiadomościach
	podczas logowania i w momencie ich nadejścia.

MEMO_INFO_X_NOTIFY_RECEIVE
	%s otrzymuje powiadomienia o nowych wiadomościach w momencie ich nadejścia.

MEMO_INFO_X_NOTIFY_SIGNON
	%s otrzymuje powiadomienia o nowych wiadomościach podczas logowania.

# Memo2Mail responses
MEMO_MAIL_SUBJECT
	Nowa wiadomość

MEMO_MAIL_TEXT1
	Witaj %s!

MEMO_MAIL_TEXT2
	Właśnie nadeszła nową wiadomość od %s, ma numer %d.

MEMO_MAIL_TEXT3
	Treść wiadomości:

# RSEND responses
MEMO_RSEND_PLEASE_WAIT
	Odczekaj %d sekund przed ponownym użyciem komendy RSEND.

MEMO_RSEND_DISABLED
	Komenda RSEND nie jest dostępna w tej sieci.

MEMO_RSEND_SYNTAX
	RSEND {nick | kanał} treść

MEMO_RSEND_NICK_MEMO_TEXT
	[auto-memo] Wysłana przez Ciebie wiadomość została przeczytana.

MEMO_RSEND_CHAN_MEMO_TEXT
	[auto-memo] Wysłana przez Ciebie wiadomość do %s została przeczytana.

MEMO_RSEND_USER_NOTIFICATION
	Powiadomienie o przeczytaniu wiadomości zostało wysłane do %s.

# CHECK responses
MEMO_CHECK_SYNTAX
	CHECK nick

MEMO_CHECK_NOT_READ
	Ostatnia wysłana przez Ciebie wiadomość
	do %s (w %s) jest wciąż nieprzeczytana.

MEMO_CHECK_READ
	Ostatnia wiadomość wysłana do %s (w %s) została przeczytana.

MEMO_CHECK_NO_MEMO
	%s nie posiada wiadomości od Ciebie.

MEMO_NO_RSEND_SELF
	Nie możesz wysyłać wiadomości z potwierdzeniem odbioru do siebie!

###########################################################################
#
# BotServ messages
#
###########################################################################
# Standard responses
BOT_DOES_NOT_EXIST
	Bot %s nie istnieje.

BOT_NOT_ASSIGNED
	Musisz najpierw przydzielić bota do kanału.
	Napisz %R%S HELP ASSIGN, aby uzyskać więcej informacji.

BOT_NOT_ON_CHANNEL
	Nie ma bota na kanale %s.

# Kick reasons (must be a single line)
BOT_REASON_BADWORD
	Nie używaj słowa \"%s\" na tym kanale!

BOT_REASON_BADWORD_GENTLE
	Uważaj co piszesz!

BOT_REASON_BOLD
	Nie pogrubiaj tekstu na tym kanale!

BOT_REASON_CAPS
	Wyłącz CAPS LOCKa!

BOT_REASON_COLOR
	Nie używaj kolorów na tym kanale!

BOT_REASON_FLOOD
	Przestań floodować!

BOT_REASON_REPEAT
	Nie powtarzaj się!

BOT_REASON_REVERSE
	Nie używaj odwracania kolorów!

BOT_REASON_UNDERLINE
	Nie używaj podkreśleń na tym kanale!

# !seen replies
BOT_SEEN_BOT
	Tak! Jestem tutaj %s!

BOT_SEEN_YOU
	%s? Szukasz siebie?

BOT_SEEN_ON_CHANNEL
	%s jest teraz na kanale!

BOT_SEEN_ON_CHANNEL_AS
	%s jest teraz na kanale (jako %s)!

BOT_SEEN_ON
	Widziałem %s tutaj %s temu.

BOT_SEEN_NEVER
	Nigdy nie widziałem %s na tym kanale.

BOT_SEEN_UNKNOWN
	Nie wiem kim jest %s.

# BOT responses
BOT_BOT_SYNTAX
	BOT ADD nick user host real
	BOT CHANGE stary-nick nowy-nick [user [host [real]]]
	BOT DEL nick

BOT_BOT_ALREADY_EXISTS
	Bot %s już istnieje.

BOT_BOT_CREATION_FAILED
	Błąd, nie udało się utworzyć bota.

BOT_BOT_READONLY
	Modyfikacja botów jest tymczasowo wyłączona.

BOT_BOT_ADDED
	%s!%s@%s (%s) dodano do listy botów.

BOT_BOT_ANY_CHANGES
	Nic się nie zmieniło.
BOT_BOT_CHANGED
	Bot %s został zmieniony na %s!%s@%s (%s)

BOT_BOT_DELETED
	Bot %s został usunięty.

# BOTLIST responses
BOT_BOTLIST_HEADER
	Lista botów:

BOT_BOTLIST_PRIVATE_HEADER
	Boty zarezerwowane dla IRC operatorów:

BOT_BOTLIST_FOOTER
	%d boty(ów) dostępnych.

BOT_BOTLIST_EMPTY
	Obecnie nie ma żadnych botów dostępnych.
	Poproś administratora serwisów o dodanie.

# ASSIGN responses
BOT_ASSIGN_SYNTAX
	ASSIGN kanał nick

BOT_ASSIGN_READONLY
	Przydzielanie botów jest tymczasowo wyłączone.

BOT_ASSIGN_ALREADY
	Bot %s jest już postawiony na %s.

BOT_ASSIGN_ASSIGNED
	Bot %s został przypisany do %s.

# UNASSIGN responses
BOT_UNASSIGN_SYNTAX
	UNASSIGN kanał

BOT_UNASSIGN_UNASSIGNED
	Nie ma żadnych botów przydzielonych do %s.

# INFO responses
BOT_INFO_SYNTAX
	INFO {kanał | nick}

BOT_INFO_NOT_FOUND
	%s nie jest prawidłową nazwą bota lub kanału.

BOT_INFO_BOT_HEADER
	Informacje o bocie %s:

BOT_INFO_BOT_MASK
		Maska: %s@%s

BOT_INFO_BOT_REALNAME
		Nazwa: %s

BOT_INFO_BOT_CREATED
	    Utworzony: %s

BOT_INFO_BOT_USAGE
	    Obecny na: %d kanałach
BOT_INFO_BOT_OPTIONS
		Opcje: %s

BOT_INFO_OPT_PRIVATE
	PRIVATE

BOT_INFO_CHAN_HEADER
	Informacje o kanale %s:

BOT_INFO_CHAN_BOT
	       Przydzielony bot: %s

BOT_INFO_CHAN_BOT_NONE
	       Przydzielony bot: (brak)

BOT_INFO_CHAN_KICK_BADWORDS
	       Kopanie za słowa: %s

BOT_INFO_CHAN_KICK_BADWORDS_BAN
	       Kopanie za słowa: %s (%d kop(y) do bana)

BOT_INFO_CHAN_KICK_BOLDS
	 Kopanie za pogrubienia: %s

BOT_INFO_CHAN_KICK_BOLDS_BAN
	 Kopanie za pogrubienia: %s (%d kop(y) do bana)

BOT_INFO_CHAN_KICK_CAPS_ON
	       Kopanie za capsa: %s (minimum %d/%d%%)

BOT_INFO_CHAN_KICK_CAPS_BAN
	       Kopanie za capsa: %s (%d kop(y) do bana; minimum %d/%d%%)

BOT_INFO_CHAN_KICK_CAPS_OFF
	       Kopanie za capsa: %s

BOT_INFO_CHAN_KICK_COLORS
	      Kopanie za kolory: %s

BOT_INFO_CHAN_KICK_COLORS_BAN
	      Kopanie za kolory: %s (%d kop(y) do bana)

BOT_INFO_CHAN_KICK_FLOOD_ON
	       Kopanie za flood: %s (%d linii w %ds)

BOT_INFO_CHAN_KICK_FLOOD_BAN
	       Kopanie za flood: %s (%d kop(y) do bana; %d linii w %ds)

BOT_INFO_CHAN_KICK_FLOOD_OFF
	       Kopanie za flood: %s

BOT_INFO_CHAN_KICK_REPEAT_ON
	 Kopanie za powtarzanie: %s (%d czasu)

BOT_INFO_CHAN_KICK_REPEAT_BAN
	 Kopanie za powtarzanie: %s (%d kop(y) do bana; %d czasu)

BOT_INFO_CHAN_KICK_REPEAT_OFF
	 Kopanie za powtarzanie: %s

BOT_INFO_CHAN_KICK_REVERSES
	 Kopanie za odw kolorów: %s

BOT_INFO_CHAN_KICK_REVERSES_BAN
	 Kopanie za odw kolorów: %s (%d kop(y) do bana)

BOT_INFO_CHAN_KICK_UNDERLINES
	Kopanie za podkreślenia: %s

BOT_INFO_CHAN_KICK_UNDERLINES_BAN
	Kopanie za podkreślenia: %s (%d kop(y) do bana)

BOT_INFO_ACTIVE
	włączone

BOT_INFO_INACTIVE
	wyłączone

BOT_INFO_CHAN_OPTIONS
	             Inne opcje: %s

BOT_INFO_OPT_DONTKICKOPS
	DONTKICKOPS

BOT_INFO_OPT_DONTKICKVOICES
	DONTKICKVOICES

BOT_INFO_OPT_FANTASY
	FANTASY

BOT_INFO_OPT_GREET
	GREET

BOT_INFO_OPT_NOBOT
	NOBOT

BOT_INFO_OPT_SYMBIOSIS
	SYMBIOSIS

BOT_INFO_OPT_NONE
	Brak

# SET responses
BOT_SET_SYNTAX
	SET (kanał | bot) opcja ustawienie

BOT_SET_DISABLED
	Konfigurowanie bota jest tymczasowo wyłączone.

BOT_SET_UNKNOWN
	Nieznana opcja %s.
	Napisz %R%S HELP SET, aby uzyskać więcej informacji.

# SET DONTKICKOPS messages
BOT_SET_DONTKICKOPS_SYNTAX
	SET kanał DONTKICKOPS {ON|OFF}

BOT_SET_DONTKICKOPS_ON
	Bot nie będzie kopał operatorów na kanale %s.

BOT_SET_DONTKICKOPS_OFF
	Bot będzie teraz kopał operatorów na kanale %s.

# SET DONTKICKVOICES messages
BOT_SET_DONTKICKVOICES_SYNTAX
	SET kanał DONTKICKVOICES {ON|OFF}

BOT_SET_DONTKICKVOICES_ON
	Bot nie będzie kopał voiców na kanale %s.

BOT_SET_DONTKICKVOICES_OFF
	Bot będzie kopał voiców na kanale %s.

# SET FANTASY messages
BOT_SET_FANTASY_SYNTAX
	SET kanał FANTASY {ON|OFF}

BOT_SET_FANTASY_ON
	Komendy fantasy na kanale %s zostały włączone.

BOT_SET_FANTASY_OFF
	Komendy fantasy na kanale %s zostały wyłączone.

# SET GREET messages
BOT_SET_GREET_SYNTAX
	SET kanał GREET {ON|OFF}

BOT_SET_GREET_ON
	Witanie użytkowników na kanale %s zostało włączone.

BOT_SET_GREET_OFF
	Witanie użytkowników na kanale %s zostało wyłączone.

# SET NOBOT
BOT_SET_NOBOT_SYNTAX
	SET nick-bota NOBOT {ON|OFF}

BOT_SET_NOBOT_ON
	Opcja NOBOT została włączona na kanale %s.

BOT_SET_NOBOT_OFF
	Opcja NOBOT została wyłączona na kanale %s.

# SET PRIVATE
BOT_SET_PRIVATE_SYNTAX
	SET nick-bota PRIVATE {ON|OFF}

BOT_SET_PRIVATE_ON
	Opcja PRIVATE bota %s została włączona.

BOT_SET_PRIVATE_OFF
	Opcja PRIVATE bota %s została wyłączona.

# SET SYMBIOSIS
BOT_SET_SYMBIOSIS_SYNTAX
	SET kanał SYMBIOSIS {ON|OFF}

BOT_SET_SYMBIOSIS_ON
	Opcja SYMBIOSIS została włączona na kanale %s.

BOT_SET_SYMBIOSIS_OFF
	Opcja SYMBIOSIS została wyłączona na kanale %s.

# KICK responses
BOT_KICK_SYNTAX
	KICK kanał opcja {ON|OFF} [ustawienia]

BOT_KICK_DISABLED
	Konfigurowanie kopów jest tymczasowo wyłączone.

BOT_KICK_UNKNOWN
	Nieznana opcja %s.
	Napisz %R%S HELP KICK, aby uzyskać więcej informacji.

BOT_KICK_BAD_TTB
	%s nie może być wzięty jako ilość wykroczeń do założenia bana.

BOT_KICK_BADWORDS_ON
	Bot będzie kopał za zakazane słowa.
	Użyj komendy BADWORDS, aby modyfikować listę słów.

BOT_KICK_BADWORDS_ON_BAN
	Bot będzie kopał za zakazane słowa,
	po %d kopach dla tego samego użytkownika założy bana.
	Użyj komendy BADWORDS, aby modyfikować listę.

BOT_KICK_BADWORDS_OFF
	Bot nie będzie kopał za zakazane słowa.

BOT_KICK_BOLDS_ON
	Bot będzie kopał za pogrubienia.

BOT_KICK_BOLDS_ON_BAN
	Bot będzie kopał za pogrubienia,
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_BOLDS_OFF
	Bot nie będzie kopał za pogrubienia.

BOT_KICK_CAPS_ON
	Bot będzie kopał za CAPSa (duże litery
	muszą stanowić %d znaków %d%% całej wiadomości).

BOT_KICK_CAPS_ON_BAN
	Bot będzie kopał za CAPSa (duże litery
	muszą stanowić %d znaków %d%% całej wiadomości).
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_CAPS_OFF
	Bot nie będzie kopał za CAPSa.

BOT_KICK_COLORS_ON
	Bot będzie kopał za kolory.

BOT_KICK_COLORS_ON_BAN
	Bot będzie kopał za kolory,
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_COLORS_OFF
	Bot nie będzie kopał za kolory.

BOT_KICK_FLOOD_ON
	Bot będzie kopał za flood
	(%d linii w %d sekund).

BOT_KICK_FLOOD_ON_BAN
	Bot będzie kopał za flood (%d linii w %d sekund),
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_FLOOD_OFF
	Bot nie będzie kopał za flood.

BOT_KICK_REPEAT_ON
	Bot będzie kopał za powtórzenia
	(użytkowników, którzy napiszą %d razy to samo).

BOT_KICK_REPEAT_ON_BAN
	Bot będzie kopał za powtórzenia
	(użytkowników, którzy napiszą %d razy to samo),
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_REPEAT_OFF
	Bot nie będzie kopał za powtórzenia.

BOT_KICK_REVERSES_ON
	Bot będzie kopał za odwracanie kolorów.

BOT_KICK_REVERSES_ON_BAN
	Bot będzie kopał za odwracanie kolorów,
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_REVERSES_OFF
	Bot nie będzie kopał za odwracanie kolorów.

BOT_KICK_UNDERLINES_ON
	Bot będzie kopał za podkreślenia.

BOT_KICK_UNDERLINES_ON_BAN
	Bot będzie kopał za podkreślenia,
	po %d kopach dla tego samego użytkownika założy bana.

BOT_KICK_UNDERLINES_OFF
	Bot nie będzie kopał za podkreślenia.

# BADWORDS messages
BOT_BADWORDS_SYNTAX
	BADWORDS kanał {ADD|DEL|LIST|CLEAR} [słowo | pozycja] [SINGLE|START|END]

BOT_BADWORDS_DISABLED
	Modyfikacja listy zakazanych słów jest tymczasowo wyłączona.

BOT_BADWORDS_REACHED_LIMIT
	Błąd, możesz mieć tylko %d wpisów na liście zakazanych słów.

BOT_BADWORDS_ALREADY_EXISTS
	%s już istnieje na liście zakazanych słów kanału %s.

BOT_BADWORDS_ADDED
	%s dodano do listy zakazanych słów kanału %s.

BOT_BADWORDS_NO_SUCH_ENTRY
	Brak wpisów (#%d) na liście zakazanych słów kanału %s.

BOT_BADWORDS_NOT_FOUND
	%s nie znaleziono na liście zakazanych słów kanału %s.

BOT_BADWORDS_NO_MATCH
	Nie znaleziono pasujących wpisów na liście zakazanych słów kanału %s.

BOT_BADWORDS_DELETED
	%s usunięto z listy zakazanych słów kanału %s.

BOT_BADWORDS_DELETED_ONE
	Usunięto 1 wpis z listy zakazanych słów kanału %s.

BOT_BADWORDS_DELETED_SEVERAL
	Usunięto %d wpisów z listy zakazanych słów
	kanału %s.

BOT_BADWORDS_LIST_EMPTY
	Lista zakazanych słów dla kanału %s jest pusta.

BOT_BADWORDS_LIST_HEADER
	Lista zakazanych słów dla %s:
	  Nr    Słowo                          Typ

BOT_BADWORDS_LIST_FORMAT
	  %3d   %-30s %s

BOT_BADWORDS_CLEAR
	Lista zakazanych słów została wyczyszczona.

# SAY responses
BOT_SAY_SYNTAX
	SAY kanał tekst

# ACT responses
BOT_ACT_SYNTAX
	ACT kanał tekst

# Errors
BOT_EXCEPT
	Użytkownik posiada wyjątek na kanale.

BOT_BAD_NICK
	Nick bota może zawierać tylko prawidłowe znaki.

BOT_BAD_HOST
	Host bota może zawierać tylko prawidłowe znaki.

BOT_BAD_IDENT
	Ident bota może zawierać tylko prawidłowe znaki.

BOT_LONG_IDENT
	Ident bota może się składać maksymalnie z %d znaków.

BOT_LONG_HOST
	Host bota może się składać maksymalnie z %d znaków.

###########################################################################
#
# OperServ messages
#
###########################################################################
# General messages
OPER_BOUNCY_MODES
	Serwisy nie mogą zmieniać trybów. Czy serwery są dobrze skonfigurowane?

OPER_BOUNCY_MODES_U_LINE
	Serwisy nie mogą zmieniać trybów. Czy U-linie serwerów są dobrze skonfigurowane?

# GLOBAL responses
OPER_GLOBAL_SYNTAX
	GLOBAL treść wiadomości

# STATS responses
OPER_STATS_UNKNOWN_OPTION
	Nieznana opcja STATS %s.

OPER_STATS_CURRENT_USERS
	Użytkowników  : %d (%d operatorów)

OPER_STATS_MAX_USERS
	Rekord użytk. : %d (%s)

# This is ugly, but at least it's language-portable...
# Note that you can include seconds in any of these--my personal preference
# is to only give resolution to the nearest minute when uptime is one hour
# or more, but just add a %d to get seconds as well.
OPER_STATS_UPTIME_DHMS
	Serwisy działają %d dni, %02d:%02d

OPER_STATS_UPTIME_1DHMS
	Serwisy działają %d dzień, %02d:%02d

OPER_STATS_UPTIME_HMS
	Serwisy działają %d godzin i %d minut(y).

OPER_STATS_UPTIME_HM1S
	Serwisy działają %d godzin(y) i %d minut(y).

OPER_STATS_UPTIME_H1MS
	Serwisy działają %d godzin(y) i %d minutę.

OPER_STATS_UPTIME_H1M1S
	Serwisy działają %d godzin(y) i %d minutę.

OPER_STATS_UPTIME_1HMS
	Serwisy działają %d godzinę i %d minut(y).

OPER_STATS_UPTIME_1HM1S
	Serwisy działają %d godzinę i %d minut(y).

OPER_STATS_UPTIME_1H1MS
	Serwisy działają %d godzinę i %d minutę.

OPER_STATS_UPTIME_1H1M1S
	Serwisy działają %d godzinę i %d minutę.

OPER_STATS_UPTIME_MS
	Serwisy działają %d minut(y) i %d sekund(y).

OPER_STATS_UPTIME_M1S
	Serwisy działają %d minut(y) i %d sekundę.

OPER_STATS_UPTIME_1MS
	Serwisy działają %d minutę i %d sekund(y).

OPER_STATS_UPTIME_1M1S
	Serwisy działają %d minutę i %d sekundę.

OPER_STATS_BYTES_READ
	Odebrano      : %5d kB

OPER_STATS_BYTES_WRITTEN
	Wysłano       : %5d kB

OPER_STATS_USER_MEM
	Użytkownicy   : %6d rekordów, %5d kB

OPER_STATS_CHANNEL_MEM
	Kanał         : %6d rekordów, %5d kB

OPER_STATS_GROUPS_MEM
	Grupy NS      : %6d rekordów, %5d kB

OPER_STATS_ALIASES_MEM
	Aliasy NS     : %6d rekordów, %5d kB

OPER_STATS_CHANSERV_MEM
	ChanServ      : %6d rekordów, %5d kB

OPER_STATS_BOTSERV_MEM
	BotServ       : %6d rekordów, %5d kB

OPER_STATS_HOSTSERV_MEM
	HostServ      : %6d rekordów, %5d kB

OPER_STATS_OPERSERV_MEM
	OperServ      : %6d rekordów, %5d kB

OPER_STATS_SESSIONS_MEM
	Sesji         : %6d rekordów, %5d kB

OPER_STATS_AKILL_COUNT
	Aktualna ilość wpisów AKILL: %d

OPER_STATS_AKILL_EXPIRE_DAYS
	Domyślny czas wygasania AKILL: %d dni

OPER_STATS_AKILL_EXPIRE_DAY
	Domyślny czas wygasania AKILL: 1 dzień

OPER_STATS_AKILL_EXPIRE_HOURS
	Domyślny czas wygasania AKILL: %d godzin(y)

OPER_STATS_AKILL_EXPIRE_HOUR
	Domyślny czas wygasania AKILL: 1 godzina

OPER_STATS_AKILL_EXPIRE_MINS
	Domyślny czas wygasania AKILL: %d minut(y)

OPER_STATS_AKILL_EXPIRE_MIN
	Domyślny czas wygasania AKILL: 1 minuta

OPER_STATS_AKILL_EXPIRE_NONE
	Domyślny czas wygasania AKILL: nie wygasa

OPER_STATS_SGLINE_COUNT
	Aktualna ilość wpisów SGLINE: %d

OPER_STATS_SGLINE_EXPIRE_DAYS
	Domyślny czas wygasania SGLINE: %d dni

OPER_STATS_SGLINE_EXPIRE_DAY
	Domyślny czas wygasania SGLINE: 1 dzień

OPER_STATS_SGLINE_EXPIRE_HOURS
	Domyślny czas wygasania SGLINE: %d godzin(y)

OPER_STATS_SGLINE_EXPIRE_HOUR
	Domyślny czas wygasania SGLINE: 1 godzina

OPER_STATS_SGLINE_EXPIRE_MINS
	Domyślny czas wygasania SGLINE: %d minut(y)

OPER_STATS_SGLINE_EXPIRE_MIN
	Domyślny czas wygasania SGLINE: 1 minuta

OPER_STATS_SGLINE_EXPIRE_NONE
	Domyślny czas wygasania SGLINE: nie wygasa

OPER_STATS_SQLINE_COUNT
	Aktualna ilość wpisów SQLINE: %d

OPER_STATS_SQLINE_EXPIRE_DAYS
	Domyślny czas wygasania SQLINE: %d dni

OPER_STATS_SQLINE_EXPIRE_DAY
	Domyślny czas wygasania SQLINE: 1 dzień

OPER_STATS_SQLINE_EXPIRE_HOURS
	Domyślny czas wygasania SQLINE: %d godzin(y)

OPER_STATS_SQLINE_EXPIRE_HOUR
	Domyślny czas wygasania SQLINE: 1 godzina

OPER_STATS_SQLINE_EXPIRE_MINS
	Domyślny czas wygasania SQLINE: %d minut(y)

OPER_STATS_SQLINE_EXPIRE_MIN
	Domyślny czas wygasania SQLINE: 1 minuta

OPER_STATS_SQLINE_EXPIRE_NONE
	Domyślny czas wygasania SQLINE: nie wygasa

OPER_STATS_SZLINE_COUNT
	Aktualna ilość wpisów SZLINE: %d

OPER_STATS_SZLINE_EXPIRE_DAYS
	Domyślny czas wygasania SZLINE: %d dni

OPER_STATS_SZLINE_EXPIRE_DAY
	Domyślny czas wygasania SZLINE: 1 dzień

OPER_STATS_SZLINE_EXPIRE_HOURS
	Domyślny czas wygasania SZLINE: %d godzin(y)

OPER_STATS_SZLINE_EXPIRE_HOUR
	Domyślny czas wygasania SZLINE: 1 godzina

OPER_STATS_SZLINE_EXPIRE_MINS
	Domyślny czas wygasania SZLINE: %d minut(y)

OPER_STATS_SZLINE_EXPIRE_MIN
	Domyślny czas wygasania SZLINE: 1 minuta

OPER_STATS_SZLINE_EXPIRE_NONE
	Domyślny czas wygasania SZLINE: nie wygasa

OPER_STATS_RESET
	Statystyki zostały zresetowane.

OPER_STATS_UPLINK_SERVER
	Podłączony do: %s

OPER_STATS_UPLINK_CAPAB
	Uplink capab  : %s

OPER_STATS_UPLINK_SERVER_COUNT
	Serwerów      : %d

# MODE responses
OPER_MODE_SYNTAX
	MODE kanał flagi

# UMODE respondes
OPER_UMODE_SYNTAX
	UMODE nick flagi

OPER_UMODE_SUCCESS
	Zmieniono flagi użytkownika dla %s.

OPER_UMODE_CHANGED
	%s zmienia Twoje flagi użytkownika.

# OLINE responses
OPER_OLINE_SYNTAX
	OLINE nick flagi

OPER_OLINE_SUCCESS
	Flagi operatora %s zostały przyznane dla %s.

OPER_OLINE_IRCOP
	Jesteś teraz IRC operatorem.

# CLEARMODES responses
OPER_CLEARMODES_SYNTAX
	CLEARMODES kanał [ALL]

OPER_CLEARMODES_DONE
	Tryby i bany zostały wyczyszczone na kanale %s.

OPER_CLEARMODES_ALL_DONE
	Wszystkie tryby zostały wyczyszczone na kanale %s.

# KICK responses
OPER_KICK_SYNTAX
	KICK kanał nick powód

# SVSNICK responses
OPER_SVSNICK_SYNTAX
	SVSNICK nick nowy-nick

OPER_SVSNICK_NEWNICK
	Nick %s zostaje zmieniony na %s.

# ADMIN responses
OPER_ADMIN_SYNTAX
	ADMIN {ADD|DEL|LIST|CLEAR} [nick | pozycja]

OPER_ADMIN_SKELETON
	Serwisy są w trybie szkieletowym, komenda ADMIN nie jest dostępna.

OPER_ADMIN_EXISTS
	%s już istnieje na liście administratorów serwisów.

OPER_ADMIN_REACHED_LIMIT
	Możesz mieć tylko %d administratorów serwisów.

OPER_ADMIN_ADDED
	%s dodano do listy administratorów serwisów.

OPER_ADMIN_NOT_FOUND
	%s nie znaleziono na liście administratorów serwisów.

OPER_ADMIN_NO_MATCH
	Nie znaleziono pasujących wpisów na liście administratorów serwisów.

OPER_ADMIN_DELETED
	%s usunięto z listy administratorów serwisów.

OPER_ADMIN_DELETED_ONE
	Usunięto 1 wpis z listy administratorów serwisów.

OPER_ADMIN_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy administratorów serwisów.

OPER_ADMIN_LIST_EMPTY
	Lista administratorów serwisów jest pusta.

OPER_ADMIN_LIST_HEADER
	Lista administratorów serwisów:
	  Nr    Nick

OPER_ADMIN_LIST_FORMAT
	  %3d   %s

OPER_ADMIN_CLEAR
	Lista administratorów serwisów została wyczyszczona.

OPER_ADMIN_MOVED
	%s przeniesiono na listę administratorów serwisów.

# OPER responses
OPER_OPER_SYNTAX
	OPER {ADD|DEL|LIST|CLEAR} [nick | pozycja]

OPER_OPER_SKELETON
	Serwisy są w trybie szkieletowym, komenda OPER nie jest dostępna.

OPER_OPER_EXISTS
	%s już istnieje na liście operatorów serwisów.

OPER_OPER_REACHED_LIMIT
	Możesz mieć tylko %d operatorów serwisów.

OPER_OPER_ADDED
	%s dodano do listy operatorów serwisów.

OPER_OPER_NOT_FOUND
	%s nie znaleziono na liście operatorów serwisów.

OPER_OPER_NO_MATCH
	Nie znaleziono pasujących wpisów na liście operatorów serwisów.

OPER_OPER_DELETED
	%s usunięto z listy operatorów serwisów.

OPER_OPER_DELETED_ONE
	Usunięto 1 wpis z listy operatorów serwisów.

OPER_OPER_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy operatorów serwisów.

OPER_OPER_LIST_EMPTY
	Lista operatorów serwisów jest pusta.

OPER_OPER_LIST_HEADER
	Lista operatorów serwisów:
	  Nr    Nick

OPER_OPER_LIST_FORMAT
	  %3d   %s

OPER_OPER_CLEAR
	Lista operatorów serwisów została wyczyszczona.

OPER_OPER_MOVED
	%s przeniesiono na listę operatorów serwisów.

# AKILL responses
OPER_AKILL_SYNTAX
	AKILL {ADD | DEL | LIST | VIEW | CLEAR} [[+czas-trwania] {maska | pozycja} [powód]]

OPER_AKILL_EXISTS
	%s już istnieje na liście AKILL.

OPER_AKILL_ALREADY_COVERED
	%s już jest obejmowane przez %s.

OPER_AKILL_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na liście AKILL.

OPER_AKILL_NO_NICK
	Uwaga: maska AKILL nie może zawierać nicków.
	Upewnij się, że nie dodajesz części nicka.

OPER_AKILL_ADDED
	%s dodano do listy AKILL.

OPER_AKILL_CHANGED
	Zmieniono czas wygasania %s.

OPER_AKILL_NOT_FOUND
	%s nie znaleziono na liście AKILL.

OPER_AKILL_NO_MATCH
	Nie znaleziono pasujących wpisów na liście AKILL.

OPER_AKILL_DELETED
	%s usunięto z listy AKILL.

OPER_AKILL_DELETED_ONE
	Usunięto 1 wpis z listy AKILL.

OPER_AKILL_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy AKILL.

OPER_AKILL_LIST_EMPTY
	Lista AKILL jest pusta.

OPER_AKILL_LIST_HEADER
	Aktualna lista AKILL:
	  Nr    Maska                             Powód

OPER_AKILL_LIST_FORMAT
	  %3d   %-32s  %s

OPER_AKILL_VIEW_HEADER
	Aktualna lista AKILL:

# number, mask, set-by, set-time, expires, reason
OPER_AKILL_VIEW_FORMAT
	%3d  %s (przez %s na %s; %s)
	      %s

OPER_AKILL_CLEAR
	Lista AKILL została wyczyszczona.

OPER_CHANKILL_SYNTAX
	CHANKILL [+czas-trwania] {#kanał} [powód]

# SGLINE responses
OPER_SGLINE_SYNTAX
	SGLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+czas-trwania] {maska | pozycja} [powód]]

OPER_SGLINE_UNSUPPORTED
	Komenda SGLINE nie jest dostępna w tej sieci.

OPER_SGLINE_EXISTS
	%s już istnieje na liście SGLINE.

OPER_SGLINE_ALREADY_COVERED
	%s już jest obejmowane przez %s.

OPER_SGLINE_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na liście SGLINE.

OPER_SGLINE_ADDED
	%s dodano do listy SGLINE.

OPER_SGLINE_CHANGED
	Zmieniono czas wygasania %s.

OPER_SGLINE_NOT_FOUND
	%s nie znaleziono na liście SGLINE.

OPER_SGLINE_NO_MATCH
	Nie znaleziono pasujących wpisów na liście SGLINE.

OPER_SGLINE_DELETED
	%s usunięto z listy SGLINE.

OPER_SGLINE_DELETED_ONE
	Usunięto 1 wpis z listy SGLINE.

OPER_SGLINE_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy SGLINE.

OPER_SGLINE_LIST_EMPTY
	Lista SGLINE jest pusta.

OPER_SGLINE_LIST_HEADER
	Aktualna lista SGLINE:
	  Nr    Maska                             Powód

OPER_SGLINE_LIST_FORMAT
	  %3d   %-32s  %s

OPER_SGLINE_VIEW_HEADER
	Aktualna lista SGLINE:

# number, mask, set-by, set-time, expires, reason
OPER_SGLINE_VIEW_FORMAT
	%3d  %s (przez %s na %s; %s)
	      %s

OPER_SGLINE_CLEAR
	Lista SGLINE została wyczyszczona.

# SQLINE responses
OPER_SQLINE_SYNTAX
	SQLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+czas-trwania] {maska | pozycja} [powód]]

OPER_SQLINE_CHANNELS_UNSUPPORTED
	Kanałowe SQLINE nie jest obsługiwane przez Twoje ircd.

OPER_SQLINE_EXISTS
	%s już istnieje na liście SQLINE.

OPER_SQLINE_ALREADY_COVERED
	%s już jest obejmowane przez %s.

OPER_SQLINE_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na liście SQLINE.

OPER_SQLINE_ADDED
	%s dodano do listy SQLINE.

OPER_SQLINE_CHANGED
	Zmieniono czas wygasania %s.

OPER_SQLINE_NOT_FOUND
	%s nie znaleziono na liście SQLINE.

OPER_SQLINE_NO_MATCH
	Nie znaleziono pasujących wpisów na liście SQLINE.

OPER_SQLINE_DELETED
	%s usunięto z listy SQLINE.

OPER_SQLINE_DELETED_ONE
	Usunięto 1 wpis z listy SQLINE.

OPER_SQLINE_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy SQLINE.

OPER_SQLINE_LIST_EMPTY
	Lista SQLINE jest pusta.

OPER_SQLINE_LIST_HEADER
	Aktualna lista SQLINE:
	  Nr    Maska                             Powód

OPER_SQLINE_LIST_FORMAT
	  %3d   %-32s  %s

OPER_SQLINE_VIEW_HEADER
	Aktualna lista SQLINE:

# number, mask, set-by, set-time, expires, reason
OPER_SQLINE_VIEW_FORMAT
	%3d  %s (przez %s na %s; %s)
	      %s

OPER_SQLINE_CLEAR
	Lista SQLINE została wyczyszczona.

# SZLINE responses
OPER_SZLINE_SYNTAX
	SZLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+czas-trwania] {maska | pozycja} [powód]]

OPER_SZLINE_UNSUPPORTED
	Komenda SZLINE nie jest dostępna w tej sieci.

OPER_SZLINE_EXISTS
	%s już istnieje na liście SZLINE.

OPER_SZLINE_ALREADY_COVERED
	%s już jest obejmowane przez %s.

OPER_SZLINE_REACHED_LIMIT
	Możesz mieć tylko %d wpisów na liście SZLINE.

OPER_SZLINE_ONLY_IPS
	Uwaga: możesz dodawać jedynie maski IP do listy SZLINE.

OPER_SZLINE_ADDED
	%s dodano do listy SZLINE.

OPER_SZLINE_CHANGED
	Zmieniono czas wygasania %s.

OPER_SZLINE_NOT_FOUND
	%s nie znaleziono na liście SZLINE.

OPER_SZLINE_NO_MATCH
	Nie znaleziono pasujących wpisów na liście SZLINE.

OPER_SZLINE_DELETED
	%s usunięto z listy SZLINE.

OPER_SZLINE_DELETED_ONE
	Usunięto 1 wpis z listy SZLINE.

OPER_SZLINE_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy SZLINE.

OPER_SZLINE_LIST_EMPTY
	Lista SZLINE jest pusta.

OPER_SZLINE_LIST_HEADER
	Aktualna lista SZLINE:
	  Nr    Maska                             Powód

OPER_SZLINE_LIST_FORMAT
	  %3d   %-32s  %s

OPER_SZLINE_VIEW_HEADER
	Aktualna lista SZLINE:

# number, mask, set-by, set-time, expires, reason
OPER_SZLINE_VIEW_FORMAT
	%3d  %s (przez %s na %s; %s)
	      %s

OPER_SZLINE_CLEAR
	Lista SZLINE została wyczyszczona.

# SET responses
OPER_SET_SYNTAX
	SET opcja ustawienie

OPER_SET_IGNORE_ON
	Opcja IGNORE została włączona.

OPER_SET_IGNORE_OFF
	Opcja IGNORE została wyłączona.

OPER_SET_IGNORE_ERROR
	Parametrem opcji IGNORE musi być ON albo OFF.

OPER_SET_READONLY_ON
	Serwisy są teraz w trybie tylko-do-odczytu.

OPER_SET_READONLY_OFF
	Serwisy są teraz w trybie odczyt-zapis.

OPER_SET_READONLY_ERROR
	Parametrem opcji READONLY musi być ON albo OFF.

OPER_SET_LOGCHAN_ON
	Serwisy będą wysyłać wiadomości na kanał %s.

OPER_SET_LOGCHAN_OFF
	Serwisy nie będą już dłużej wysyłać wiadomości na kanał.

OPER_SET_LOGCHAN_ERROR
	Parametrem dla LOGCHAN musi być ON albo OFF.
	Ponadto kanał logowania musi być zdefiniowany w pliku konfiguracyjnym.

OPER_SET_DEBUG_ON
	Serwisy są teraz w trybie debugowania.

OPER_SET_DEBUG_OFF
	Serwisy nie są już w trybie debugowania.

OPER_SET_DEBUG_LEVEL
	Serwisy są teraz w trybie debugowania (poziom %d).

OPER_SET_DEBUG_ERROR
	Parametrem opcji DEBUG musi być ON, OFF albo liczba dodatnia.

OPER_SET_NOEXPIRE_ON
	Serwisy nie są już w trybie wygasania.

OPER_SET_NOEXPIRE_OFF
	Serwisy są teraz w trybie wygasania.

OPER_SET_NOEXPIRE_ERROR
	Parametrem opcji NOEXPIRE musi być ON albo OFF.

OPER_SET_UNKNOWN_OPTION
	Nieznana opcja %s.

OPER_SET_SQL_ON
	Obsługa SQL została włączona.

OPER_SET_SQL_OFF
	Obsługa SQL została wyłączona.

OPER_SET_SQL_ERROR
	Parametrem opcji SQL musi być ON albo OFF.

OPER_SET_SQL_ERROR_INIT
	Błąd podczas inicjacji SQL, sprawdź logi.

OPER_SET_SQL_ERROR_DISABLED
	SQL nie jest skonfigurowany dla tej sieci.
	Wprowadź zmiany w pliku konfiguracyjnym.

OPER_SET_LIST_OPTION_ON
	%s jest włączone

OPER_SET_LIST_OPTION_OFF
	%s jest wyłączone

# NOOP responses
OPER_NOOP_SYNTAX
	NOOP {SET|REVOKE} serwer

OPER_NOOP_SET
	Wszystkie O:linie %s zostały usunięte.

OPER_NOOP_REVOKE
	Wszystkie O:linie %s zostały zresetowane.

# JUPE responses
OPER_JUPE_SYNTAX
	JUPE serwer [powód]

OPER_JUPE_HOST_ERROR
	Proszę użyć prawidłowej nazwy serwera.

OPER_JUPE_INVALID_SERVER
	Nie można wykluczyć samych serwisów lub uplinka serwisów.

# RAW responses
OPER_RAW_SYNTAX
	RAW tekst

# UPDATE responses
OPER_UPDATING
	Aktualizacja baz danych.

# RELOAD responses
OPER_RELOAD
	Plik konfiguracyjny serwisów został przeładowany.

# RESTART responses
OPER_CANNOT_RESTART
	Nie zdefiniowano SERVICES_BIN; nie mogę restartować.
	Uruchom ponownie skrypt configure i przekompiluj serwisy, aby włączyć komendę RESTART.

# IGNORE respondes
OPER_IGNORE_SYNTAX
	IGNORE {ADD|DEL|LIST|CLEAR} [czas] [nick | maska]

OPER_IGNORE_VALID_TIME
	Musisz podać prawidłową liczbę dla czasu.

OPER_IGNORE_TIME_DONE
	Nick %s będzie ignorowany przez %s.

OPER_IGNORE_PERM_DONE
	Nick %s będzie stale ignorowany.

OPER_IGNORE_DEL_DONE
	Nick %s nie będzie ignorowany.

OPER_IGNORE_LIST
	Lista ignorowanych przez serwisy:

OPER_IGNORE_LIST_NOMATCH
	%s nie znaleziono na liście ignorowanych.

OPER_IGNORE_LIST_EMPTY
	Lista ignorowanych jest pusta.

OPER_IGNORE_LIST_CLEARED
	Lista ignorowanych została wyczyszczona.

# KILLCLONES responses
OPER_KILLCLONES_SYNTAX
	KILLCLONES nick

OPER_KILLCLONES_UNKNOWN_NICK
	Nie mogę znaleźć użytkownika %s.

# CHANLIST responses
OPER_CHANLIST_HEADER
	Lista kanałów:
	Nazwa                Tryby użyt.   Temat

OPER_CHANLIST_HEADER_USER
	Lista kanałów %s:
	Nazwa                Tryby użyt.   Temat

OPER_CHANLIST_RECORD
	%-20s  %4d +%-6s %s

OPER_CHANLIST_END
	Koniec listy kanałów.

# USERLIST responses
OPER_USERLIST_HEADER
	Lista użytkowników:
	Nick                 Maska

OPER_USERLIST_HEADER_CHAN
	Lista użytkowników %s:
	Nick                 Maska

OPER_USERLIST_RECORD
	%-20s %s@%s

OPER_USERLIST_END
	Koniec listy użytkowników.

OPER_SUPER_ADMIN_ON
	Jesteś teraz super-administratorem.

OPER_SUPER_ADMIN_OFF
	Nie jesteś już dłużej super-administratorem.

OPER_SUPER_ADMIN_SYNTAX
	Parametrem dla opcji SuperAdmin musi być ON lub OFF (musi być włączona w pliku konfiguracyjnym)

OPER_SUPER_ADMIN_WALL_ON
	%s jest teraz super-administratorem

OPER_SUPER_ADMIN_WALL_OFF
	%s nie jest już dłużej super-administratorem

OPER_SUPER_ADMIN_ONLY
	Tylko super-administratorzy mogą używać tej komendy.

OPER_STAFF_LIST_HEADER
	 Na Poziom Nick

OPER_STAFF_FORMAT
	 %c %s  %s

OPER_STAFF_AFORMAT
	 %c %s  %s [%s]

# DefCon Messages
OPER_DEFCON_SYNTAX
	DEFCON [1|2|3|4|5]

OPER_DEFCON_DENIED
	Serwisy są w trybie defcon, spróbuj ponownie później.

OPER_DEFCON_NO_CONF
	System defcon musi być włączony w pliku konfiguracyjnym.

OPER_DEFCON_CHANGED
	Serwisy są teraz w systemie DEFCON %d

OPER_DEFCON_WALL
	%s zmieniono poziom DEFCON na %d

DEFCON_GLOBAL
	Defcon jest teraz na poziomie: %d

# Module strings
OPER_MODULE_LOADED
	Moduł %s został załadowany.

OPER_MODULE_UNLOADED
	Moduł %s został wyładowany.

OPER_MODULE_LOAD_FAIL
	Nie można załadować modułu %s

OPER_MODULE_REMOVE_FAIL
	Nie można wyładować modułu %s

OPER_MODULE_NO_UNLOAD
	Ten moduł nie może zostać wyładowany.

OPER_MODULE_LOAD_SYNTAX
	MODLOAD nazwa-pliku

OPER_MODULE_UNLOAD_SYNTAX
	MODUNLOAD nazwa-pliku

OPER_MODULE_LIST_HEADER
	Aktualna lista modułów:

OPER_MODULE_LIST
	Moduł: %s [%s] [%s]

OPER_MODULE_LIST_FOOTER
	Załadowanych modułów: %d.

OPER_MODULE_INFO_LIST
	Moduł: %s Wersja: %s Autor: %s Załadowano: %s

OPER_MODULE_CMD_LIST
	Dodane komendy: %R%s %s

OPER_MODULE_MSG_LIST
	Zapewnia IRCD handler dla : %s

OPER_MODULE_NO_LIST
	Aktualnie nie ma załadowanych modułów.

OPER_MODULE_NO_INFO
	Informacje o module %s nie są dostępne.

OPER_MODULE_INFO_SYNTAX
	MODINFO nazwa-pliku

MODULE_HELP_HEADER
	Następujące komendy zostały dodane przez moduł:

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################
# EXCEPTION responses
OPER_EXCEPTION_SYNTAX
	EXCEPTION {ADD | DEL | MOVE | LIST | VIEW} [parametry]

OPER_EXCEPTION_ADD_SYNTAX
	EXCEPTION ADD [+czas-trwania] maska limit powód

OPER_EXCEPTION_DEL_SYNTAX
	EXCEPTION DEL {maska | lista}

OPER_EXCEPTION_MOVE_SYNTAX
	EXCEPTION MOVE numer pozycja

OPER_EXCEPTION_DISABLED
	Limitowanie sesji jest wyłączone.

OPER_EXCEPTION_ALREADY_PRESENT
	Maska %s już istnieje na liście wyjątków.

OPER_EXCEPTION_TOO_MANY
	Lista wyjątków limitów sesji jest pełna!

OPER_EXCEPTION_ADDED
	Limit sesji dla %s zmieniono na %d.

OPER_EXCEPTION_MOVED
	Wyjątek dla %s (#%d) przeniesiono na pozycję %d.

OPER_EXCEPTION_NO_SUCH_ENTRY
	Nie znaleziono wpisu (#%d) na liście wyjątków limitów sesji.

OPER_EXCEPTION_NOT_FOUND
	%s nie znaleziono na liście wyjątków limitów sesji.

OPER_EXCEPTION_NO_MATCH
	Nie znaleziono wpisów na liście wyjątków limitów sesji.

OPER_EXCEPTION_DELETED
	%s usunięto z listy wyjątków limitów sesji.

OPER_EXCEPTION_DELETED_ONE
	Usunięto 1 wpis z listy wyjątków limitów sesji.

OPER_EXCEPTION_DELETED_SEVERAL
	Usunięto %d wpisy(ów) z listy wyjątków limitów sesji.

OPER_EXCEPTION_LIST_HEADER
	Aktualna lista wyjątków limitów sesji:

# mask, limit
OPER_EXCEPTION_LIST_FORMAT
	%3d  %4d   %s

OPER_EXCEPTION_LIST_COLHEAD
	Nr   Limit  Host

# mask, set-by, set-time, expires, limit, reason
OPER_EXCEPTION_VIEW_FORMAT
	%3d.  %s  (przez %s na %s; %s)
	    Limit: %-4d  - %s

OPER_EXCEPTION_INVALID_LIMIT
	Nieprawidłowy limit sesji. Musi być liczbą nieujemną i mniejszą niż %d.

OPER_EXCEPTION_INVALID_HOSTMASK
	Nieprawidłowa maska. Tylko rzeczywiste maski są prawidłowe jako wyjątki.

OPER_EXCEPTION_EXISTS
	%s już istnieje na liście wyjątków.

OPER_EXCEPTION_CHANGED
	Wyjątek dla %s został zaktualizowany do %d.

# SESSION responses
OPER_SESSION_SYNTAX
	SESSION {LIST limit | VIEW host}

OPER_SESSION_LIST_SYNTAX
	SESSION LIST limit

OPER_SESSION_VIEW_SYNTAX
	SESSION VIEW host

OPER_SESSION_DISABLED
	Limitowanie sesji jest wyłączone.

OPER_SESSION_INVALID_THRESHOLD
	Nieprawidłowa wartość progu. Musi być liczbą całkowitą większą niż 1.

OPER_SESSION_NOT_FOUND
	%s nie znaleziono na liście sesji.

OPER_SESSION_LIST_HEADER
	Hosty z przynajmniej %d sesjami:

OPER_SESSION_LIST_COLHEAD
	Sesje   Host

# limit, host
OPER_SESSION_LIST_FORMAT
	%6d    %s

# host, sessions, limit
OPER_SESSION_VIEW_FORMAT
	Host %s aktualnie posiada %d sesji z limitem %d.

# EXCEPTION help
OPER_HELP_EXCEPTION
	Składnia: EXCEPTION ADD [+czas-trwania] maska limit powód
	          EXCEPTION DEL {maska | lista}
	          EXCEPTION MOVE numer pozycja
	          EXCEPTION LIST [maska | lista]
	          EXCEPTION VIEW [maska | lista]
	
	Pozwala administratorom serwisów na zarządzanie listą limitów
	sesji dla poszczególnych hostów - np. serwery shell mogą
	mieć większą liczbę połączeń. Kiedy limit połączeń zostanie
	osiągnięty każdy nowy użytkownik z takiego hosta będzie
	rozłączany z siecią. Przed rozłączeniem zostanie wysłane
	powiadomienie (jego treść ustawia się w pliku konfiguracyjnym).
	
	EXCEPTION ADD dodaje wskazaną maskę na listę wyjątków.
	Maski nick!user@host oraz user@host są nieprawidłowe,
	ponieważ zawierają nick lub ident użytkownika. Dopuszczalne
	maski to np. box.host.dom lub *.host.dom. Limit musi
	być liczbą nieujemną. Podanie zera oznacza wyłączenie limitu.
	Format czasu jest opisany w pomocy polecenia AKILL.
	EXCEPTION DEL usuwa wskazane wpisy z listy wyjątków.
	EXCEPTION MOVE przenosi wyjątek o wskazanym numerze na
	nową pozycję. Wyjątki znajdujące się pomiędzy zostaną
	odpowiednio przeniesione, aby wypełnić powstałą lukę.
	EXCEPTION LIST oraz EXCEPTION VIEW listują wyjątki.
	Podanie maski powoduje ograniczenie wyświetlanych wpisów.
	EXCEPTION VIEW zwraca dodatkowo informacje o zakładającym,
	limicie, powodzie, masce oraz czasie.
	
	Należy pamiętać, że podłączający się klient będzie używał
	pierwszego wyjątku o pasującej masce. Duża lista wyjątków i
	zbyt ogólne maski powodują pogorszenie wydajności serwisów.

OPER_HELP_SESSION
	Składnia: SESSION LIST minimum
	          SESSION VIEW host
	
	Pozwala administratorom serwisów na listowanie sesji.
	
	SESSION LIST listuje hosty z przynajmniej minimum sesjami.
	Minimum musi być większe od 1, aby zapobiec przypadkowemu
	listowaniu dużej liczby pojedynczych hostów.
	SESSION VIEW wyświetla szczegółowe informacje na temat 
	podanego hosta - podając aktualny limit oraz ilość sesji.
	Parametr host może zawierać symboli wieloznacznych.
	
	Więcej informacji na temat ograniczania liczby sesji
	znajduje się w pomocy polecenia EXCEPTION.

OPER_HELP_STAFF
	Składnia: STAFF
	
	Wyświetla nicki obsługi serwisów, poziom i status online.

OPER_HELP_DEFCON
	Składnia: DEFCON [1|2|3|4|5]
	
	System defcon umożliwia wprowadzanie wcześniej
	zdefiniowanych ograniczeń dla serwisów podczas
	próby ataku na sieć.
OPER_HELP_DEFCON_NO_NEW_CHANNELS
	* Wyłącza rejestrowanie kanałów

OPER_HELP_DEFCON_NO_NEW_NICKS
	* Wyłącza rejestrowanie nicków

OPER_HELP_DEFCON_NO_MLOCK_CHANGE
	* Flagi kanałów nie będą wymuszane (MLOCK)

OPER_HELP_DEFCON_FORCE_CHAN_MODES
	* Wymusza ustawienie flag (%s) na wszystkich kanałach

OPER_HELP_DEFCON_REDUCE_SESSION
	* Używa zredukowanego limitu sesji: %d

OPER_HELP_DEFCON_NO_NEW_CLIENTS
	* Killuje wszystkich nowych klientów

OPER_HELP_DEFCON_OPER_ONLY
	* Ignoruje zwykłych użytkowników (informuje ich o tym)

OPER_HELP_DEFCON_SILENT_OPER_ONLY
	* Cicho ignoruje zwykłych użytkowników

OPER_HELP_DEFCON_AKILL_NEW_CLIENTS
	* AKILLuje wszystkich nowych klientów

OPER_HELP_DEFCON_NO_NEW_MEMOS
	* Nowe wiadomości nie będą wysyłane

OPER_HELP_CHANKILL
	Składnia: CHANKILL [+czas] kanał powód
	
	Zakłada AKILLa na każdy nick na wskazanym kanale.
	Na listę zostają dodane prawdziwe adresy (ident@host),
	po czym AKILL zostaje wykonany.
###########################################################################
#
# News system messages
#
###########################################################################
NEWS_LOGON_TEXT
	[Wiadomość powitalna - %s] %s

NEWS_OPER_TEXT
	[Wiadomość dla operatorów - %s] %s

NEWS_RANDOM_TEXT
	[Losowa wiadomość - %s] %s

NEWS_LOGON_SYNTAX
	LOGONNEWS {ADD|DEL|LIST} [tekst|numer]

NEWS_LOGON_LIST_HEADER
	Wiadomości powitalne:

NEWS_LOGON_LIST_ENTRY
	%5d (%s przez %s)
	    %s

NEWS_LOGON_LIST_NONE
	Nie ma wiadomości powitalnych.

NEWS_LOGON_ADD_SYNTAX
	LOGONNEWS ADD tekst

NEWS_LOGON_ADD_FULL
	Lista wiadomości powitalnych jest pełna!

NEWS_LOGON_ADDED
	Dodano nową wiadomość powitalną (#%d).

NEWS_LOGON_DEL_SYNTAX
	LOGONNEWS DEL {numer | ALL}

NEWS_LOGON_DEL_NOT_FOUND
	Wiadomość powitalna #%d nie została znaleziona!

NEWS_LOGON_DELETED
	Wiadomość powitalna #%d została skasowana.

NEWS_LOGON_DEL_NONE
	Nie ma wiadomości powitalnych do skasowania!

NEWS_LOGON_DELETED_ALL
	Wszystkie wiadomości powitalne został skasowane.

NEWS_OPER_SYNTAX
	OPERNEWS {ADD|DEL|LIST} [tekst|numer]

NEWS_OPER_LIST_HEADER
	Wiadomości dla operatorów:

NEWS_OPER_LIST_ENTRY
	%5d (%s przez %s)
	    %s

NEWS_OPER_LIST_NONE
	Nie ma wiadomości dla operatorów.

NEWS_OPER_ADD_SYNTAX
	OPERNEWS ADD tekst

NEWS_OPER_ADD_FULL
	Lista wiadomości jest pełna!

NEWS_OPER_ADDED
	Dodano nową wiadomość dla operatorów (#%d).

NEWS_OPER_DEL_SYNTAX
	OPERNEWS DEL {numer | ALL}

NEWS_OPER_DEL_NOT_FOUND
	Wiadomość dla operatorów #%d nie została znaleziona!

NEWS_OPER_DELETED
	Wiadomość dla operatorów #%d została skasowana.

NEWS_OPER_DEL_NONE
	Nie ma wiadomości dla operatorów do skasowania!

NEWS_OPER_DELETED_ALL
	Wszystkie wiadomości dla operatorów zostały skasowane.

NEWS_RANDOM_SYNTAX
	RANDOMNEWS {ADD|DEL|LIST} [tekst|numer]

NEWS_RANDOM_LIST_HEADER
	Losowe wiadomości:

NEWS_RANDOM_LIST_ENTRY
	%5d (%s przez %s)
	    %s

NEWS_RANDOM_LIST_NONE
	Nie ma losowych wiadomości.

NEWS_RANDOM_ADD_SYNTAX
	RANDOMNEWS ADD tekst

NEWS_RANDOM_ADD_FULL
	Lista wiadomości jest pełna!

NEWS_RANDOM_ADDED
	Dodano nową losową wiadomość (#%d).

NEWS_RANDOM_DEL_SYNTAX
	RANDOMNEWS DEL {numer | ALL}

NEWS_RANDOM_DEL_NOT_FOUND
	Losowa wiadomość #%d nie została znaleziona!

NEWS_RANDOM_DELETED
	Losowa wiadomość #%d została skasowana.

NEWS_RANDOM_DEL_NONE
	Nie ma losowych wiadomości do skasowania!

NEWS_RANDOM_DELETED_ALL
	Wszystkie losowe wiadomości zostały skasowane.

NEWS_HELP_LOGON
	Składnia: LOGONNEWS ADD tekst
	          LOGONNEWS DEL {numer | ALL}
	          LOGONNEWS LIST
	
	Edytuje lub wyświetla listę wiadomości wysyłanych po
	przyłączeniu użytkownika do sieci. Jeśli zdefniowanych
	wiadomości jest więcej tylko najnowsze %s zostanie
	wysłanych (aby zapobiec floodowaniu). Wartość NewsCount
	może zostać zmieniona w pliku konfiguracyjym serwisów.
	
	LOGONNEWS may only be used by Services admins.

NEWS_HELP_OPER
	Składnia: OPERNEWS ADD tekst
	          OPERNEWS DEL {numer | ALL}
	          OPERNEWS LIST
	
	Edytuje lub wyświetla listę wiadomości wysyłanych po
	wykonaniu polecenia /OPER. Jeśli zdefiniowanych
	wiadomości jest więcej tylko najnowsze %s zostanie
	wysłanych (aby zapobiec floodowaniu). Wartość NewsCount
	może zostać zmieniona w pliku konfiguracyjym serwisów.
	
	OPERNEWS may only be used by Services admins. 

NEWS_HELP_RANDOM
	Składnia: RANDOMNEWS ADD tekst
	          RANDOMNEWS DEL {numer | ALL}
	          RANDOMNEWS LIST
	
	Edytuje lub wyświetla listę losowych newsów.
	Po połączeniu z siecią użytkownik otrzyma dokładnie
	jedną wylosowaną z tej listy wiadomość.
	
	RANDOMNEWS may only be used by Services admins. 

###########################################################################
#
# HelpServ help message
#
###########################################################################
HELP_HELP
	%S jest serwisem udzielającym informacji
	na temat innych serwisów. Dostępne tematy pomocy:
	
	
	%R%s HELP
	     rejestracja i zarządzanie nickami
	
	%R%s HELP
	     rejestracja i zarządzanie kanałami
	
	%R%s HELP
	     wysyłanie wiadomości do użytkowników off-line

HELP_HELP_BOT
	%R%s HELP
	     stawianie serwisowego bota na kanale

HELP_HELP_HOST
	%R%s HELP
	     ustawianie vhostów

###########################################################################
#
# NickServ help messages
#
###########################################################################
NICK_HELP_CMD_CONFIRM
	    CONFIRM     Potwierdza rejestrację nicka

NICK_HELP_CMD_RESEND
	    RESEND      Wysyła ponownie kod autoryzujący

NICK_HELP_CMD_REGISTER
	    REGISTER    Rejestruje nicka

NICK_HELP_CMD_GROUP
	    GROUP       Dołącza nick do wskazanej grupy

NICK_HELP_CMD_IDENTIFY
	    IDENTIFY    Identyfikuje właściciela nicka

NICK_HELP_CMD_ACCESS
	    ACCESS      Zarządza listą dostępu

NICK_HELP_CMD_SET
	    SET         Modyfikuje ustawienia nicka

NICK_HELP_CMD_SASET
	    SASET       Ustawia opcje wskazanemu nickowi

NICK_HELP_CMD_DROP
	    DROP        Usuwa nicka

NICK_HELP_CMD_RECOVER
	    RECOVER     Odłącza użytkownika, który używa Twojego nicka

NICK_HELP_CMD_RELEASE
	    RELEASE     Zwalnia nick po użyciu komendy RECOVER

NICK_HELP_CMD_SENDPASS
	    SENDPASS    Pomaga odzyskać utracone hasło

NICK_HELP_CMD_GHOST
	    GHOST       Odłącza wskazany nick od serwera

NICK_HELP_CMD_ALIST
	    ALIST       Listuje kanały na których masz uprawnienia

NICK_HELP_CMD_GLIST
	    GLIST       Wyświetla wszystkie nicki w Twojej grupie

NICK_HELP_CMD_INFO
	    INFO        Pokazuje informacje o zarejestrowanym nicku

NICK_HELP_CMD_LIST
	    LIST        Listuje zarejestrowane nicki pasujące do wzorca

NICK_HELP_CMD_LOGOUT
	    LOGOUT      Odwraca działanie komendy IDENTIFY

NICK_HELP_CMD_STATUS
	    STATUS      Podaje status właściciela podanego nicka

NICK_HELP_CMD_UPDATE
	    UPDATE      Aktualizuje twój obecny status np.
	                sprawdza nowe wiadomości

NICK_HELP_CMD_GETPASS
	    GETPASS     Podaje hasło do wskazanego nicka

NICK_HELP_CMD_GETEMAIL
	    GETEMAIL    Wyświetla użytkowników zarejestrowanych z
	                podanym adresem e-mail

NICK_HELP_CMD_FORBID
	    FORBID      Blokuje podany nick

NICK_HELP_CMD_SUSPEND
	    SUSPEND     Blokuje podany nick z zachowaniem
	                wszelkich jego danych i ustawień

NICK_HELP_CMD_UNSUSPEND
	    UNSUSPEND   Uwalnia zawieszonego nicka

NICK_HELP
	%S umożliwia rejestrację nicka i zapewnia
	wyłączność na jego używanie. Poniższe komendy
	umożliwiają zarządzanie nickiem, aby ich użyć wpisz:
	%R%S komenda
	Aby uzyskać szczegółowy opis polecenia wpisz:
	%R%S HELP komenda
	
	

NICK_HELP_FOOTER
	
	UWAGA: Ten serwis ma na celu umożliwienie identyfikacji
	użytkowników. NIE służy do kradzieży nicków czy innych
	złośliwych akcji. Nadużycia będą skutkowały co najmniej
	utratą zarejestrowanego nicka.
	

NICK_HELP_EXPIRES
	
	Nicki nieużywane przez dłuższy czas są automatycznie
	usuwane po %d dniach od ostatniej identyfikacji.
	Wszelkie ustawienia oraz uprawnienia zostają usunięte.

NICK_HELP_REGISTER
	Składnia: REGISTER hasło [email]
	
	Rejestruje aktualnie używany nick w bazie %S.
	Po rejestracji możesz użyć komend SET i ACCESS
	do konfiguracji niektórych opcji nicka wedle upodobań.
	Upewnij się, że pamiętasz hasło rejestracyjne, bo 
	będzie ono potrzebne w przyszłości do zmiany
	ustawień i identyfikacji. Wielkość liter w haśle 
	ma znaczenie!!!.
	
	Jak wybrać hasło?
	
	Hasło musi być trudne do odgadnięcia. Używanie imion
	jako haseł jest niewskazane. Bardzo krótkie hasło
	może zostać odgadnięte metodą prób i błędów.
	Twoje hasło musi mieć długość co najmniej 5 znaków.
	Znak spacji nie może być użyty w haśle.
	
	Parametr email jest opcjonalny i od razu przy 
	rejestracji ustawia adres e-mail dla Twojego nicka. 
	Może się zdarzyć, że adres e-mail może być wymagany 
	na niektórych sieciach. Twoja prywatność jest
	chroniona - adres nie będzie udostępniany osobom
	trzecim.
	
	Wraz z rejestracją zostaje utworzona grupa.
	Nicki z tej samej grupy mają wspólne ustawienia,
	prawa na kanale oraz ustawienia wiadomości.
	Aby uzyskać więcej informacji napisz: 
	%R%S HELP GROUP.
	

NICK_HELP_GROUP
	Składnia: GROUP nazwa hasło
	
	Ta komenda powoduje dodanie Twojego nicka do grupy
	reprezentowanej przez nick nazwa o haśle hasło.
	
	Grupowanie nicków pozwala na dzielenie się ustawieniami,
	wiadomościami oraz uprawnieniami z innymi nickami z grupy.
	
	Jeśli jakiś nick z grupy zostanie usunięty nie tracisz
	żadnych ustawień czy uprawnień, jednak grupa istnieje
	dopóki jest w niej przynajmniej jeden nick.
	
	Komenda może być użyta nawet wtedy kiedy bieżący nick
	nie jest zarejestrowany, w przeciwnym wypadku musisz
	się zidentyfikować. Aby uzyskać więcej informacji wpisz:
	%R%S HELP IDENTIFY
	
	Możliwe i zalecane jest używanie tej komendy na nickach,
	które nie są zarejestrowane, zostaną one wtedy automatycznie
	dodane do bazy %S.
	
	UWAGA: Komendę można użyć także na zarejestrowanym nicku,
	należy jednak wziąć pod uwagę to, że jeśli bieżący nick jest
	ostatni ze swojej grupy, to wszystkie jego ustawienia oraz
	uprawnienia zostaną usunięte! Z tego powodu najlepiej grupować
	nowy nick ze starym, a nie na odwrót. Zmiana grupy może być
	wyłączona przez administratora w niektórych sieciach.
	
	Można być tylko w jednej grupie w danej chwili,
	łączenie grup nie jest możliwe.
	
	Uwaga: wszystkie nicki w grupie mają to samo hasło.

NICK_HELP_IDENTIFY
	Składnia: IDENTIFY hasło
	
	Informuje %S, że nick którego właśnie używasz 
	należy do Ciebie. Wiele komend wymaga identyfikacji 
	przed ich użyciem. Hasłem jest to samo hasło, 
	którego użyto przy komendzie REGISTER.

NICK_HELP_UPDATE
	Składnia: UPDATE
	
	Aktualizuje twój obecny status, np. sprawdza czy są nowe
	wiadomości, ustawia odpowiednie uprawnienia na kanałach,
	aktualizuje vhosta oraz flagi użytkownika.

NICK_HELP_LOGOUT
	Składnia: LOGOUT
	
	Odwraca działanie komendy IDENTIFY. Po wydaniu
	tego polecenia nie będziesz rozpoznawany jako
	właściciel nicka.
NICK_HELP_DROP
	Składnia: DROP [nick]
	
	Usuwa nick z bazy danych %S. Usunięty nick
	może zostać ponownie zarejestrowany przez każdego.
	
	Możesz usunąć nick należący do Twojej grupy podając
	go jako dodatkowy parametr nick.
	
	Użycie tej komendy wymaga identyfikacji z użyciem
	hasła. Aby uzyskać więcej informacji wpisz:
	%R%S HELP IDENTIFY

NICK_HELP_ACCESS
	Składnia: ACCESS ADD maska
	          ACCESS DEL maska
	          ACCESS LIST
	
	Modyfikuje lub wyświetla listę dostępu dla nicka.
	Lista dostępu określa hosty użytkowników mogących
	używać twojego nicka. Jeśli chcesz używać nicka z
	innego hosta musisz się najpierw zidentyfikować
	w serwisie %S komendą IDENTIFY.
	
	Przykłady:
	
	    ACCESS ADD userek@ircnet.pl
	        Zezwala na dostęp do nicka każdemu 
	        łączącemu się z domeny ircnet.pl.
	
	    ACCESS DEL userek@ircnet.pl
	        Odwraca efekt poprzedniej komendy.
	
	    ACCESS LIST
	        Wyświetla aktualną listę dostępu.

NICK_HELP_SET
	Składnia: SET opcja parametry
	
	Ustawia różne opcje nicka. Dostępne opcje to:
	
	    DISPLAY    Ustawia nick reprezentujący grupę nicków
	    PASSWORD   Ustawia hasło do nicka
	    LANGUAGE   Ustawia język w którym serwisy będą
	               wysyłały komunikaty
	    URL        Przypisuje adres www do nicka
	    EMAIL      Przypisuje adres e-mail do nicka
	    ICQ        Przypisuje numer ICQ do nicka
	    GREET      Przypisuje komunikat powitalny do nicka
	    KILL       Włącza lub wyłącza ochronę nicka
	    SECURE     Włącza lub wyłącza bezpieczeństwo nicka
	    PRIVATE    Zapobiega wyświetlaniu nicka po wydaniu
	               polecenia: %R%S LIST
	    HIDE       Ukrywa poszczególne informacje o nicku
	    MSG        Zmienia sposób komunikacji serwisów
	    AUTOOP     Włącza lub wyłącza automatyczne opowanie
	
	Aby użyć tej komendy musisz się zidentyfikować z użyciem
	Twojego hasła. Aby uzyskać więcej informacji wpisz:
	%R%S HELP IDENTIFY
	
	Aby uzyskać więcej informacji o danej opcji wpisz:
	%R%S HELP SET opcja

NICK_HELP_SET_DISPLAY
	Składnia: SET DISPLAY nowa-nazwa
	
	Zmienia nazwę reprezentującą Twoją grupę nicków w
	serwisach na nową. Nazwa MUSI być jednym z nicków
	należących do Twojej grupy.

NICK_HELP_SET_PASSWORD
	Składnia: SET PASSWORD nowe-hasło
	
	Zmienia Twoje hasło do nicka.

NICK_HELP_SET_LANGUAGE
	Składnia: SET LANGUAGE numer
	
	Zmienia język jakiego używają serwisy odpowiadając 
	Tobie (czyli przykładowo kiedy odpowiadają na 
	wysłaną przez Ciebie komendę). Numer może być 
	wybrany z poniższej listy obsługiwanych języków:

NICK_HELP_SET_URL
	Składnia: SET URL adres
	
	Przypisuje podany adres strony www nickowi.
	Ten adres będzie się pokazywał w opisie Twojego
	nicka dostępnym po użyciu polecenia INFO.

NICK_HELP_SET_EMAIL
	Składnia: SET EMAIL adres
	
	Przypisuje adres e-mail Twojemu nickowi. Adres
	będzie wyświetlany przy opisie Twojego nicka
	dostępnym przy użyciu komendy INFO.

NICK_HELP_SET_ICQ
	Składnia: SET ICQ numer
	
	Przypisuje numer ICQ Twojemu nickowi, który
	będzie wyświetlany przy opisie Twojego nicka
	dostępnym przy użyciu komendy INFO.
	

NICK_HELP_SET_GREET
	Składnia: SET GREET wiadomość
	
	Ustawia wiadomość powitalną dla Twojego nicka.
	Jeśli kanał ma przydzielonego bota, włączone witanie
	użytkowników oraz masz odpowiedni poziom dostępu to
	wtedy ta wiadomość będzie wysyłana na kanał przez bota.

NICK_HELP_SET_KILL
	Składnia: SET KILL {ON | QUICK | IMMED | OFF}
	
	Włącza lub wyłącza automatyczną ochronę dla nicka.
	Użytkownicy wchodzący na chroniony nick otrzymują
	informacje od %S, że nick jest zarejestrowany i
	jeśli się nie zidentyfikują lub go nie zmienią
	w określonym czasie to ich nick zostanie zmieniony
	siłą lub zostaną odłączeni od sieci.
	
	Opcja QUICK skraca czas oczekiwania na zmianę
	z 60 sekund do 20. W przypadku opcji IMMED
	nick zostanie zmieniony natychmiast bez możliwości
	identyfikacji (wstępna identyfikacja następuje
	na podstawie listy dostępu, dlatego tą opcję
	należy stosować z rozwagą). Administrator sieci 
	może wyłączyć korzystanie z IMMED.
NICK_HELP_SET_SECURE
	Składnia: SET SECURE {ON | OFF}
	
	Włącza lub wyłącza opcję bezpieczeństwa dla nicka.
	Włączenie SECURE wymusza na użytkowniku podanie
	hasła zanim ten zostanie rozpoznany jako właściciel
	nicka. %S nie bierze pod uwagę w tym wypadku
	występowania adresu liście dostępu. Jeśli adres 
	znajduje się na liście %S nie skilluje
	użytkownika niezależnie od ustawienia opcji KILL.

NICK_HELP_SET_PRIVATE
	Składnia: SET PRIVATE {ON | OFF}

	Włącza lub wyłącza opcję PRIVATE dla nicka.
	Kiedy ta opcja jest włączona nick nie będzie
	umieszczany na listach wyświetlanych komendą:
	%R%S LIST
	Jednak każdy, kto zna nick może uzyskać o nim
	informacje używając polecenia INFO.

NICK_HELP_SET_HIDE
	Składnia: SET HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	
	To polecenie pozwala na ukrycie części informacji, które
	są wyświetlane przez polecenie INFO serwisu %s.
	Pierwszy argument określa ukrywaną informację:
	EMAIL - adres e-mail, USERMASK - ostatnio używany host,
	QUIT - ostatnia wiadomość pożegnalna, STATUS - status
	dostępu do serwisów. Drugi argument określa, czy dana 
	informacja będzie pokazywana (OFF), czy ukrywana (ON).
NICK_HELP_SET_MSG
	Składnia: SET MSG {ON | OFF}
	
	Pozwala wybrać sposób w jaki serwisy będą pisać do
	Ciebie. Kiedy ta opcja jest włączona serwisy będą
	wysyłać wiadomości prywatne (query), w przeciwnym
	wypadku będą wysyłać powiadomienia (notice).

NICK_HELP_SET_AUTOOP
	Składnia: SET AUTOOP {ON | OFF}
	
	Włącza lub wyłącza automatyczne nadawanie uprawnień
	przy wchodzeniu na kanał.

NICK_HELP_SASET
	Składnia: SASET nick opcja parametry.
	
	Ustawia różne opcje nicka wskazanemu użytkownikowi.
	Dostępne opcje to:
	
	    DISPLAY    Ustawia nick reprezentujący grupę nicków
	    PASSWORD   Ustawia hasło do nicka
	    LANGUAGE   Ustawia język w którym serwisy będą
	               wysyłały komunikaty
	    URL        Przypisuje adres www do nicka
	    EMAIL      Przypisuje adres e-mail do nicka
	    ICQ        Przypisuje numer ICQ do nicka
	    GREET      Przypisuje komunikat powitalny do nicka
	    KILL       Włącza lub wyłącza ochronę nicka
	    SECURE     Włącza lub wyłącza bezpieczeństwo nicka
	    PRIVATE    Zapobiega wyświetlaniu nicka po wydaniu
	               polecenia: %R%S LIST
	    HIDE       Ukrywa poszczególne informacje o nicku
	    MSG        Zmienia sposób komunikacji serwisów
	    AUTOOP     Włącza lub wyłącza automatyczne opowanie
	    NOEXPIRE   Zapobiega wygaśnięciu nicka
	
	Aby uzyskać więcej informacji o danej opcji wpisz:
	%R%S HELP SASET opcja

NICK_HELP_SASET_DISPLAY
	Składnia: SASET nick DISPLAY nowa-nazwa
	
	Zmienia nazwę reprezentującą grupę nicków wskazanego
	użytkownika na nową. Nazwa MUSI być jednym z nicków
	należących do tej grupy.

NICK_HELP_SASET_PASSWORD
	Składnia: SASET nick PASSWORD nowe-hasło
	
	Zmienia hasło wskazanemu użytkownikowi.

NICK_HELP_SASET_URL
	Składnia: SASET nick URL url
	
	Przypisuje podany adres www wskazanemu użytkownikowi.
	Ten adres będzie się pokazywał w opisie jego nicka
	dostępnym po użyciu polecenia INFO.

NICK_HELP_SASET_EMAIL
	Składnia: SASET nick EMAIL adres
	
	Przypisuje wskazanemu użytkownikowi adres e-mail.

NICK_HELP_SASET_ICQ
	Składnia: SASET nick ICQ numer
	
	Przypisuje numer ICQ wskazanemu nickowi, który
	będzie wyświetlany przy opisie nicka dostępnym
	przy użyciu komendy INFO.
NICK_HELP_SASET_GREET
	Składnia: SASET nick GREET wiadomość
	
	Ustawia wiadomość powitalną dla wskazanego użytkownika.
	Jeśli kanał ma przydzielonego bota, włączone witanie
	oraz użytkownik ma odpowiedni poziom dostępu to
	wtedy ta wiadomość będzie wysyłana na kanał przez bota.

NICK_HELP_SASET_KILL
	Składnia: SASET nick KILL {ON | QUICK | IMMED | OFF}
	
	Włącza lub wyłącza automatyczną ochronę dla nicka.
	Użytkownicy wchodzący na chroniony nick otrzymują
	informacje od %S, że nick jest zarejestrowany i
	jeśli się nie zidentyfikują lub go nie zmienią
	w określonym czasie to ich nick zostanie zmieniony
	siłą lub zostaną odłączeni od sieci.
	
	Opcja QUICK skraca czas oczekiwania na zmianę
	z 60 sekund do 20. W przypadku opcji IMMED
	nick zostanie zmieniony natychmiast bez możliwości
	identyfikacji (wstępna identyfikacja następuje
	na podstawie listy dostępu, dlatego tą opcję
	należy stosować z rozwagą). Administrator sieci 
	może wyłączyć korzystanie z IMMED.
NICK_HELP_SASET_SECURE
	Składnia: SASET nick SECURE {ON | OFF}
	
	Włącza lub wyłącza opcję bezpieczeństwa dla nicka.
	Włączenie SECURE wymusza na użytkowniku podanie
	hasła zanim ten zostanie rozpoznany jako właściciel
	nicka. %S nie bierze pod uwagę w tym wypadku
	występowania adresu liście dostępu. Jeśli adres 
	znajduje się na liście %S nie skilluje
	użytkownika niezależnie od ustawienia opcji KILL.

NICK_HELP_SASET_PRIVATE
	Składnia: SASET nick PRIVATE {ON | OFF}

	Włącza lub wyłącza opcję PRIVATE dla nicka.
	Kiedy ta opcja jest włączona nick nie będzie
	umieszczany na listach wyświetlanych komendą:
	%R%S LIST
	Jednak każdy, kto zna nick może uzyskać o nim
	informacje używając polecenia INFO.

NICK_HELP_SASET_HIDE
	Składnia: SASET nick HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	
	To polecenie pozwala na ukrycie części informacji, które
	są wyświetlane przez polecenie INFO serwisu %s.
	Pierwszy argument określa ukrywaną informację:
	EMAIL - adres e-mail, USERMASK - ostatnio używany host,
	QUIT - ostatnia wiadomość pożegnalna, STATUS - status
	dostępu do serwisów. Drugi argument określa, czy dana 
	informacja będzie pokazywana (OFF), czy ukrywana (ON).
NICK_HELP_SASET_MSG
	Składnia: SASET nick MSG {ON | OFF}
	
	Pozwala wybrać sposób w jaki serwisy będą pisać do
	wskazanego użytkownika. Kiedy ta opcja jest
	włączona serwisy będą wysyłać wiadomości prywatne
	w przeciwnym wypadku będą wysyłać powiadomienia.

NICK_HELP_SASET_NOEXPIRE
	Składnia: SASET nick NOEXPIRE {ON | OFF}
	
	Włącza lub wyłącza automatyczne usunięcie nicka,
	jeśli nie będzie on używany.

NICK_HELP_SASET_AUTOOP
	Składnia: SASET nick AUTOOP {ON | OFF}
	
	Włącza lub wyłącza automatyczne nadawanie uprawnień
	wskazanemu użytkownikowi przy wchodzeniu na kanał.

NICK_HELP_SASET_LANGUAGE
	Składnia: SASET nick LANGUAGE numer
	
	Zmienia język jakiego używają serwisy komunikując 
	się ze wskazaną osobą. Numer musi być wybrany z
	listy obsługiwanych języków, która jest dostępna
	po wydaniu polecenia %R%S HELP SET LANGUAGE.

NICK_HELP_RECOVER
	Składnia: RECOVER nick [hasło]
	
	Pozwala na odzyskanie nicka jeśli jest on używany przez
	inną osobę. Wykonuje te same czynności co %S w
	przypadku automatycznej ochrony nicka.
	
	Użycie tej komendy powoduje wprowadzenie sztucznego
	użytkownika przez %S o nicku, który chcesz odzyskać.
	Spowoduje to odłączenie użytkownika, który go aktualnie
	używa. Serwis pozostanie przez minutę online, aby
	uniemożliwić natychmiastowe połączenie z serwerem
	na tym samym nicku. Po tym czasie możesz zająć nick.
	Jeśli nie chcesz czekać minuty możesz użyć polecenia
	RELEASE (%R%S HELP RELEASE).

	Aby użyć polecenia RECOVER musi być spełniony jeden
	z warunków:
	1. twój adres znajduje się na liście dostępu,
	2. jesteś zidentyfikowany w grupie,
	   do której należy wskazany nick,
	3. podasz prawidłowe hasło do nicka.

NICK_HELP_RELEASE
	Składnia: RELEASE nick [hasło]
	
	Instruuje %S aby zdjął wszelkie blokady nałożone
	przez automatyczną ochronę nicka lub w wyniku użycia
	polecenia RECOVER. Blokada trwa %s; to polecenie
	pozwala ją skrócić.
	
	Aby użyć polecenia RELEASE musi być spełniony jeden
	z warunków:
	1. twój adres znajduje się na liście dostępu,
	2. jesteś zidentyfikowany w grupie,
	   do której należy wskazany nick,
	3. podasz prawidłowe hasło do nicka.

NICK_HELP_GHOST
	Składnia: GHOST nick [hasło]
	
	Opcja likwiduje sesję-ducha o wskazanym nicku.
	Taka sytuacja najczęściej ma miejsce wtedy, gdy
	połączenie z serwem IRC nie zostało zakończone w
	sposób prawidłowy (komputer się zawiesił lub
	wystąpiła awaria łącza internetowego). Serwer IRC
	może wtedy nie rozpoznać zerwania połączenia i
	będzie czekał określoną ilość czasu na odpowiedź 
	od klienta.
	
	Aby użyć polecenia GHOST musi być spełniony jeden
	z warunków:
	1. twój adres znajduje się na liście dostępu,
	2. jesteś zidentyfikowany w grupie,
	   do której należy wskazany nick,
	3. podasz prawidłowe hasło do nicka.

NICK_HELP_INFO
	Składnia: INFO nick [ALL]
	
	Wyświetla informacje na temat wybranego nicka:
	właściciel, kiedy ostatnio widziano, z jakiego 
	hosta oraz opcje nicka. Jeśli zidentyfikowany 
	użytkownik użyje tej komendy na sobie wraz z
	parametrem ALL otrzyma wszystkie możliwe
	informacje - nawet jeśli zostały one ukryte.

NICK_HELP_LIST
	Składnia: LIST wzorzec
	
	Listuje wszystkie zarejestrowane nicki pasujące do
	podanego wzorca w postaci nick!ident@host. Nicki z
	włączoną opcją PRIVATE zostaną pominięte.
	
	Przykłady:
	
	    LIST *!adirm@mafia.ru
	        Lista wszystkich nicków pasujących do
	        *!adirm@mafia.ru.
	
	    LIST *Bot*!*@*
	        Lista wszystkich nicków z Bot w nazwie
	        (wielkość liter nie ma znaczenia).
	
	    LIST *!*@*.ircnet.pl
	        Lista wszystkich nicków z maską domeny
	        ircnet.pl

NICK_HELP_ALIST
	Składnia: ALIST [poziom]
	
	Listuje wszystkie kanały, gdzie masz wpis na liście
	dostępu. Aby ograniczyć listę pokazywanych kanałów
	możesz podać poziom XOP lub numer

	Przykłady:
	    ALIST Founder
	        Listuje kanały, których jesteś właścicielem

	    ALIST AOP
	        Listuje kanały, na których masz poziom
	        AOP lub wyższy.

	    ALIST 10
	        Listuje kanały, na których masz poziom
	        10. lub wyższy.

	Kanały z opcją NOEXPIRE będą oznaczone wykrzyknikiem.
NICK_HELP_GLIST
	Składnia: GLIST
	
	Listuje wszystkie nicki z Twojej grupy.

NICK_HELP_STATUS
	Składnia: STATUS nick...
	
	Zwraca status wskazanych użytkowników (czy są
	rozpoznawani jako właściciele nicka).
	Odpowiedź ma następujący format:
	
	    nick kod
	
	Gdzie nick jest tym nickiem wysłanym w 
	komendzie, a kod może oznaczać:
	
	0 - użytkownik jest offline lub nick niezarejestrowany
	1 - użytkownik nie zidentyfikował się jako właściciel nicka
	2 - użytkownik rozpoznany na podstawie listy dostępu
	3 - użytkownik rozpoznany na podstawie hasła
	
	Maksymalnie można podać 16 nicków w jednym poleceniu.
	Reszta będzie ignorowana. Jeśli nie zostanie podany
	żaden nick zostanie zwrócony twój status.

NICK_HELP_SENDPASS
	Składnia: SENDPASS nick
	
	Wysyła hasło do podanego nicka na adres e-mail
	przypisany do niego. Ta komenda pomaga odzyskać
	zapomniane hasło.
	
	Ta komenda w niektórych sieciach może być dostępna
	jedynie dla osób z uprawnieniami IRC operatora.
	
	Ta komenda jest niedostępna kiedy hasła są szyfrowane.

NICK_HELP_CONFIRM
	Składnia: CONFIRM kod
	
	To polecenie umożliwia zakończenie procesu rejestracji.
	Aby nick został zarejestrowany w serwisie %S należy
	wywołać to polecenie z kodem, który został wysłany na
	adres e-mail podany podczas pierwszego kroku rejestracji.
	Aby się dowiedzieć więcej wpisz %R%S HELP REGISTER

NICK_HELP_RESEND
	Składnia: RESEND
	
	To polecenie powoduje ponowne wysłanie kodu autoryzującego
	na adres e-mail użytkownika, który wydaje polecenie.

NICK_SERVADMIN_HELP
	
	Administratorzy serwisów mogą usunąć każdy nick
	bez potrzeby identyfikacji jako jego właściciele
	oraz przeglądać listę dostępu do każdego nicka
	(%R%S ACCESS LIST nick).

NICK_SERVADMIN_HELP_LOGOUT
	Składnia: LOGOUT [nick [REVALIDATE]]

	Polecenie wydane bez parametrów odwraca działanie
	komendy IDENTIFY - nie będziesz rozpoznawany jako
	właściciel nicka.
	
	Administrator serwisów może podać jako parametr nick
	użytkownika, który ma zostać wylogowany. Parametr
	REVALIDATE powoduje informowanie przez serwisy
	użytkownika o potrzebie ponownej identyfikacji.

NICK_SERVADMIN_HELP_DROP
	Składnia: DROP [nick]
	
	Komenda wywołana bez parametru spowoduje usunięcie
	Twojego nicka z bazy serwisu %S.
	
	Komenda użyta z parametrem usuwa wskazany nick.
	Każdy użytkownik może usuwać nicki znajdujące się
	w jego grupie bez specjalnych uprawnień. Usuwanie
	dowolnego nicka jest ograniczone do administratorów.

NICK_SERVADMIN_HELP_INFO
	
	Administratorzy serwisów mogą używać parametru
	ALL dla każdego nicka.

NICK_SERVADMIN_HELP_LIST
	Składnia: LIST wzorzec [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
	
	Listuje wszystkie zarejestrowane nicki pasujące
	do podanego wzorca w postaci nick!ident@host.
	Administratorzy serwisów mogą zobaczyć nicki z
	ustawioną opcją PRIVATE, a przy nickach z opcją
	NOEXPIRE zobaczą dodany do nich wykrzyknik.
	
	Administratorzy serwisów mogą także podać parametry:
	FORBIDDEN, SUSPENDED, NOEXPIRE i UNCONFIRMED, które
	ograniczą listę wyświetlanych nicków do tych, które
	spełniają podane warunki. Jeśli zostanie podanych
	więcej warunków, wszystkie nicki spełniające choć
	jeden z nich zostaną pokazane.
	
	Przykłady:
	
	    LIST *!adirm@mafia.ru
	        Lista wszystkich nicków pasujących do
	        *!adirm@mafia.ru.
	
	    LIST *Bot*!*@*
	        Lista wszystkich nicków z Bot w nazwie
	        (wielkość liter nie ma znaczenia).
	
	    LIST *!*@*.ircnet.pl
	        Lista wszystkich nicków z maską domeny
	        ircnet.pl

NICK_SERVADMIN_HELP_ALIST
	Składnia: ALIST [nick] [poziom]
	
	Listuje wszystkie kanały na których jesteś na liście
	dostępu. Opcjonalnie możesz podać nick wraz z poziomem,
	co ograniczy ilość pokazywanych wpisów.
	
	Parametr nick jest przeznaczony tylko dla
	administratorów serwisów.

NICK_SERVADMIN_HELP_GLIST
	Składnia: GLIST [nick]
	
	Polecenie wywołane bez parametrów listuje wszystkie
	nicki należące do grupy wydającego polecenie.
	
	Administratorzy serwisów mogą jako parametr podać
	nick osoby, której nicki chcą sprawdzić.

NICK_SERVADMIN_HELP_GETPASS
	Składnia: GETPASS nick
	
	Zwraca hasło właściciela dla wskazanego nicka.
	UWAGA: użycie tej komendy powoduje wysłanie
	informacji o jej użyciu przy pomocy WALLOP/GLOBOP.
	
	Ta komenda jest niedostępna kiedy hasła są szyfrowane.

NICK_SERVADMIN_HELP_GETEMAIL
	Składnia: GETEMAIL uzytkownik@serwer.com
	
	Listuje nicki, które mają ustawiony podany adres e-mail.
	Uwaga: nie można używać symboli wieloznacznych (* lub ?).
	Każdy przypadek użycia tej komendy jest logowany.

NICK_SERVADMIN_HELP_FORBID
	Składnia: FORBID nick [powód]
	
	Uniemożliwia rejestrację i korzystanie ze wskazanego
	nicka. Blokadę można zdjąć używając komendy DROP.
	
	W niektórych sieciach wymagane jest podanie powodu.

NICK_SERVADMIN_HELP_SUSPEND
	Składnia: SUSPEND nick powód
	
	Zawiesza nick uniemożliwiając identyfikację.

NICK_SERVADMIN_HELP_UNSUSPEND
	Składnia: UNSUSPEND nick
	
	Uwalnia zawieszony nick.

###########################################################################
#
# ChanServ help messages
#
###########################################################################
CHAN_HELP_CMD_GETPASS
	    GETPASS     Podaje hasło właściciela wskazanego kanału

CHAN_HELP_CMD_FORBID
	    FORBID      Blokuje podany kanał

CHAN_HELP_CMD_SUSPEND
	    SUSPEND     Blokuje podany kanał z zachowaniem
	                wszelkich jego danych i ustawień

CHAN_HELP_CMD_UNSUSPEND
	    UNSUSPEND   Uwalnia zawieszony kanał

CHAN_HELP_CMD_STATUS
	    STATUS      Zwraca aktualny poziom dostępu do
	                kanału wskazanego użytkownika

CHAN_HELP_CMD_REGISTER
	    REGISTER    Rejestruje kanał

CHAN_HELP_CMD_IDENTIFY
	    IDENTIFY    Identyfikuje właściciela kanału

CHAN_HELP_CMD_SET
	    SET         Modyfikuje ustawienia kanału

CHAN_HELP_CMD_AOP
	    AOP         Zarządza listą AOP (operatorów)

CHAN_HELP_CMD_SOP
	    SOP         Zarządza listą SOP (super-operatorów)

CHAN_HELP_CMD_ACCESS
	    ACCESS      Zarządza listą dostępu

CHAN_HELP_CMD_LEVELS
	    LEVELS      Zarządza poziomami dostępu

CHAN_HELP_CMD_AKICK
	    AKICK       Zarządza listą AKICK

CHAN_HELP_CMD_DROP
	    DROP        Usuwa kanał

CHAN_HELP_CMD_SENDPASS
	    SENDPASS    Pomaga odzyskać utracone hasło

CHAN_HELP_CMD_BAN
	    BAN         Banuje wskazaną osobę na kanale

CHAN_HELP_CMD_CLEAR
	    CLEAR       Usuwa wskazane obiekty z kanału

CHAN_HELP_CMD_DEVOICE
	    DEVOICE     Odbiera wskazanej osobie prawo głosu

CHAN_HELP_CMD_GETKEY
	    GETKEY      Podaje klucz do wskazanego kanału

CHAN_HELP_CMD_INFO
	    INFO        Pokazuje informacje o zarejestrowanym kanale

CHAN_HELP_CMD_INVITE
	    INVITE      Zaprasza osobę wydającą polecenie na kanał

CHAN_HELP_CMD_KICK
	    KICK        Wyrzuca wskazany nick z kanału

CHAN_HELP_CMD_LIST
	    LIST        Listuje zarejestrowane kanały pasujące do wzorca

CHAN_HELP_CMD_LOGOUT
	    LOGOUT      Wyloguje wskazaną osobę

CHAN_HELP_CMD_OP
	    OP          Nadaje wskazanej osobie uprawnienia operatora

CHAN_HELP_CMD_TOPIC
	    TOPIC       Zmienia temat podanego kanału

CHAN_HELP_CMD_UNBAN
	    UNBAN       Usuwa wszystkie bany blokujące wejście na kanał

CHAN_HELP_CMD_VOICE
	    VOICE       Nadaje wskazanej osobie prawo głosu

CHAN_HELP_CMD_VOP
	    VOP         Zarządza listą VOP (osób z prawem głosu)

CHAN_HELP_CMD_DEHALFOP
	    DEHALFOP    Odbiera wskazanej osobie uprawnienia pół-operatora

CHAN_HELP_CMD_DEOWNER
	    DEOWNER     Usuwa twój status właściciela kanału

CHAN_HELP_CMD_DEPROTECT
	    DEPROTECT   Wyłącza ochronę wskazanej osoby

CHAN_HELP_CMD_HALFOP
	    HALFOP      Nadaje wskazanej osobie uprawnienia pół-operatora

CHAN_HELP_CMD_HOP
	    HOP         Zarządza listą HOP (pół-operatorów)

CHAN_HELP_CMD_OWNER
	    OWNER       Nadaje Tobie status właściciela kanału

CHAN_HELP_CMD_PROTECT
	    PROTECT     Chroni wskazaną osobę

CHAN_HELP_CMD_ADMIN
	    ADMIN       Chroni wskazaną osobę

CHAN_HELP_CMD_DEADMIN
	    DEADMIN     Wyłącza ochronę wskazanej osoby

CHAN_HELP_CMD_DEOP
	    DEOP        Odbiera wskazanej osobie uprawnienia operatora

CHAN_HELP
	%S umożliwia rejestrację kanału, zmianę
	jego ustawień oraz zapobiega przed odebraniem
	kontroli nad kanałem. Poniższe komendy pozwalają
	na zarządzanie kanałem, aby ich użyć wpisz:
	%R%S komenda
	Aby uzyskać szczegółowy opis polecenia wpisz:
	%R%S HELP komenda
	

CHAN_HELP_EXPIRES
	
	Uwaga! Kanał który nie był używany przez %d dni
	(np. nie odwiedził go żaden użytkownik umieszczony
	na liście dostępu kanału w tym czasie) zostanie
	automatycznie odrejestrowany.

CHAN_HELP_REGISTER
	Składnia: REGISTER kanał hasło opis
	
	Rejestruje kanał w bazie danych %S. Aby użyć
	tej komendy musisz być operatorem na kanale, który
	chcesz zarejestrować. Hasło umożliwia późniejszą
	identyfikację jako właściciel kanału (IDENTIFY).
	Ostatni parametr, który musi zostać podany, określa
	cel istnienia kanału.
	
	Po rejestracji kanału stajesz się jego właścicielem,
	który może zmieniać wszystkie jego ustawienia.
	%S automatycznie nadaje uprawnienia operatora
	właścicielowi, który wchodzi na kanał. Informacje 
	na temat nadawania uprawnień innym użytkownikom
	znajdują się w pomocy polecenia ACCESS
	(%R%S HELP ACCESS).
	
	UWAGA: Aby zarejestrować kanał należy posiadać
	zarejestrowany nick, aby uzyskać więcej informacji
	na temat zarządzania nickiem wpisz: %R%s HELP

CHAN_HELP_IDENTIFY
	Składnia: IDENTIFY kanał hasło
	
	Autoryzuje użytkownika w serwisie %S jako właściciela
	wskazanego kanału. Wiele ważnych komend wymaga dokonania
	identyfikacji przed ich użyciem. Hasłem jest to samo
	hasło, którego użyto przy komendzie REGISTER.

CHAN_HELP_LOGOUT
	Składnia: LOGOUT kanał nick
	
	Pozwala na wylogowanie wskazanego użytkownika z kanału.
	W celu odzyskania uprawnień użytkownik będzie musiał
	ponownie się zidentyfikować.
	
	Każdy może wylogować siebie, natomiast właściciel kanału
	może wylogować każdego.

CHAN_HELP_DROP
	Składnia: DROP kanał
	
	Usuwa podany kanał. Komenda może zostać użyta
	jedynie przez właściciela kanału, po wcześniejszej
	IDENTIFYKACJI przy pomocy hasła kanału.

CHAN_HELP_SET
	Składnia: SET kanał opcja parametry
	
	Pozwala właścicielowi kanału na zmianę rożnych  
	opcji oraz informacji dotyczących kanału.
	
	Dostępne opcje:
	
	    FOUNDER       Ustawia nick właściciela kanału
	    SUCCESSOR     Ustawia nick spadkobiercy kanału
	    PASSWORD      Ustawia hasło właściciela
	    DESC          Ustawia opis kanału
	    URL           Przypisuje adres www do kanału
	    EMAIL         Przypisuje adres e-mail do kanału
	    ENTRYMSG      Ustawia wiadomość, która będzie wysyłana
	                  do użytkowników wchodzących na kanał
	    BANTYPE       Ustawia sposób banowania przez serwisy
	    MLOCK         Blokuje zdejmowanie lub zakładanie flag
	    KEEPTOPIC     Zapamiętuje temat kiedy kanał jest pusty
	    OPNOTICE      Wysyła powiadomienie kiedy zostają użyte
	                  komendy OP/DEOP
	    PEACE         Reguluje użycie krytycznych komend
	    PRIVATE       Zapobiega wyświetlaniu kanału po wydaniu
	                  polecenia LIST
	    RESTRICTED    Ogranicza dostęp do kanału
	    SECURE        Włącza lub wyłącza bezpieczeństwo kanału
	    SECUREOPS     Ściśle kontroluje status operatorów
	    SECUREFOUNDER Ściśle kontroluje status właściciela
	    SIGNKICK      Podpisuje kicki kiedy użyto komendy KICK
	    TOPICLOCK     Ogranicza możliwość zmiany tematu
	    XOP           Włącza system uprawnień xOP
	                  (użycie komend SOP, AOP, HOP, VOP)
	
	Aby uzyskać więcej informacji o danej opcji wpisz:
	%R%S HELP SET opcja

CHAN_HELP_SET_FOUNDER
	Składnia: SET kanał FOUNDER nick
	
	Zmienia właściciela kanału.
	Nowy nick musi być zarejestrowany.

CHAN_HELP_SET_SUCCESSOR
	Składnia: SET kanał SUCCESSOR nick
	
	Ustawia spadkobiercę kanału. Jeśli nick właściciela
	wygaśnie lub zostanie usunięty kanał zostaje przekazany
	spadkobiercy, który staje się nowym właścicielem.
	Jeżeli spadkobierca jest właścicielem zbyt dużej
	liczby kanałów (%d) to kanał zostanie odrejestrowany.
CHAN_HELP_SET_PASSWORD
	Składnia: SET kanał PASSWORD hasło
	
	Zmienia hasło właściciela kanału.

CHAN_HELP_SET_DESC
	Składnia: SET kanał DESC opis
	
	Ustawia opis kanału widoczny po wydaniu polecenia LIST oraz INFO.

CHAN_HELP_SET_URL
	Składnia: SET kanał URL [url]
	
	Przypisuje adres strony www do kanału. Adres będzie
	widoczny po użyciu polecenia INFO. Komenda wywołana
	bez parametru usuwa wcześniej ustawiony adres.

CHAN_HELP_SET_EMAIL
	Składnia: SET kanał EMAIL [adres]
	
	Przypisuje adres e-mail do kanału. Adres będzie
	widoczny po użyciu polecenia INFO. Komenda wywołana
	bez parametru usuwa wcześniej ustawiony adres.

CHAN_HELP_SET_ENTRYMSG
	Składnia: SET kanał ENTRYMSG [treść]
	
	Ustawia tekst powiadomienia wysyłanego poprzez /notice
	do użytkowników wchodzących na kanał. Komenda wywołana
	bez parametru usuwa wcześniej ustawioną wiadomość.

CHAN_HELP_SET_BANTYPE
	Składnia: SET kanał BANTYPE typ
	
	Ustala typ banów zakładanych przez serwisy.
	
	Typ banów oznaczany jest numerami od 0 do 3,
	poszczególne numery oznaczają:
	
	0: ban w postaci *!ident@host
	1: ban w postaci *!*ident@host
	2: ban w postaci *!*@host
	3: ban w postaci *!*ident@*.domena

CHAN_HELP_SET_KEEPTOPIC
	Składnia: SET kanał KEEPTOPIC {ON | OFF}
	
	Włącza lub wyłącza opcję zapamiętywania tematu.
	Kiedy ta opcja jest włączona %S ustawi ostatni
	temat za każdym razem, gdy na kanał będzie wchodzić
	pierwsza osoba.

CHAN_HELP_SET_TOPICLOCK
	Składnia: SET kanał TOPICLOCK {ON | OFF}
	
	Włącza lub wyłącza opcję blokowania tematu kanału.
	
	Jeśli ta opcja jest włączona, %S pozwoli na
	zmianę tematu tylko poprzez wydanie komendy TOPIC.

CHAN_HELP_SET_MLOCK
	Składnia: SET kanał MLOCK flagi
	
	Ustawia blokadę flag kanałowych. %S pozwala na 
	definiowanie, które flag kanałowe mają być zawsze 
	włączone, wyłączone lub ustawiane dowolnie przez 
	operatorów kanału.
	
	Składnia polecenia jest identyczna jak w komendzie 
	/MODE, tzn. flagi poprzedzone znakiem+ 
	zostaną założone na kanał, natomiast poprzedzone 
	znakiem - będą zdejmowane z kanału. W odróżnieniu 
	od komendy /MODE, każde użycie SET MLOCK, 
	usunie wszystkie wcześniej zdefiniowane mody!
	
	UWAGA: W przypadku ustawiania klucza dostępu do 
	kanału (drugi przykład poniżej), powinna również 
	zostać aktywowana opcja RESTRICTED (zobacz 
	HELP SET RESTRICTED), w przeciwnym wypadku, 
	użytkownik wchodzący na pusty kanał, będzie mógł 
	odczytać założony klucz!
	
	Przykłady:
	
	    SET #kanał MLOCK +nt-iklps
	        Wymusza włączenie flag n oraz t, wyłączenie flag
	        i, k, l, p, s; flaga m nie jest zmieniana.
	
	    SET #kanał MLOCK +knst-ilmp my-key
	        Wymusza włączenie flag k, n, s, oraz t, wyłączenie
	        i, l, m, oraz p. Wymusza także ustawienie klucza 
	        na wartość "my-key".
	
	    SET #kanał MLOCK +
	        Wyłącza blokowanie flag - mogą być zmieniane dowolnie.

CHAN_HELP_SET_PEACE
	Składnia: SET kanał PEACE {ON | OFF}
	
	Włącza lub wyłącza opcję PEACE dla kanału.
	Włączenie tej opcji uniemożliwia wykopanie,
	banowanie lub odebranie uprawnień użytkownikowi,
	który ma poziom uprawnień wyższy lub równy
	korzystając z poleceń serwisu %S.

CHAN_HELP_SET_PRIVATE
	Składnia: SET kanał PRIVATE {ON | OFF}
	
	Włącza lub wyłącza opcję PRIVATE dla kanału.
	Kiedy ta opcja jest włączona kanał nie będzie
	umieszczany na listach wyświetlanych komendą:
	%R%S LIST

CHAN_HELP_SET_RESTRICTED
	Składnia: SET kanał RESTRICTED {ON | OFF}
	
	Włącza lub wyłącza opcję ograniczonego dostępu do kanału.
	Po włączeniu tej opcji tylko osoby znajdujące się na
	liście dostępu będą mogły przebywać na kanale. Pozostali
	użytkownicy będą banowani, a następnie usuwani z kanału.

CHAN_HELP_SET_SECURE
	Składnia: SET kanał SECURE {ON | OFF}
	
	Włącza lub wyłącza opcje bezpieczeństwa kanału.
	Po włączeniu tej opcji tylko zarejestrowani
	użytkownicy, którzy się zidentyfikowali będą
	otrzymywać od serwisu %S uprawnienia
	wynikające z wpisów na liście dostępu.

CHAN_HELP_SET_SECUREOPS
	Składnia: SET kanał SECUREOPS {ON | OFF}
	
	Włącza lub wyłącza opcję SECUREOPS dla kanału.
	Kiedy ta opcja jest włączona użytkownicy bez wpisu
	na liście dostępu kanału (ACCESS LIST) nie będą
	mogli posiadać statusu operatora.

CHAN_HELP_SET_SECUREFOUNDER
	Składnia: SET kanał SECUREFOUNDER {ON | OFF}
	
	Włącza lub wyłącza opcję bezpiecznego właściciela.
	Ustawienie tej opcji powoduje ograniczenie uprawnień
	właściciela do osoby, która jest wpisana jako właściciel
	(a nie osób znających hasło właściciela kanału).
	Operacje takie jak usunięcie kanału, zmiana hasła,
	właściciela oraz zastępcy będą dostępne tylko
	dla jednego użytkownika.

CHAN_HELP_SET_SIGNKICK
	Składnia: SET kanał SIGNKICK {ON | LEVEL | OFF}
	
	Włącza lub wyłącza podpisywanie komend kick.
	Włączenie tej opcji powoduje dodawanie nicka osoby 
	wydającej polecenie do uzasadnienia kicka.
	
	Jeśli poziomy dostępu były konfigurowane z użyciem LEVEL
	osoby mające poziom większy lub równy SIGNKICK nie będą
	podpisywane. Aby uzyskać więcej informacji wpisz:
	%R%S HELP LEVELS

CHAN_HELP_SET_XOP
	Składnia: SET kanał XOP {ON | OFF}
	
	Włącza lub wyłącza system list xOP dla kanału.
	Kiedy XOP zostanie włączony przyznawanie uprawnień
	odbywa się przy pomocy poleceń AOP/ SOP/ VOP.
	Wyłączenie funkcji xOP wymusza korzystanie z
	polecenia ACCESS.
	
	Uwaga: w momencie włączania systemu list XOP
	wszelkie definicje poziomów dostępu zostaną
	trwale zresetowane. Ponowne przejście z XOP na
	system listy dostępu nie spowoduje odzyskania
	poprzedniej konfiguracji!
	
	Kiedy XOP zostanie włączony użytkownikom
	automatycznie zostaje przypisany odpowiedni poziom
	dostępu. Automatyczne przyporządkowanie nie zawsze 
	musi być poprawne. Nie zaleca się przejścia na
	system XOP, jeśli definicje poziomów dostępu dla 
	kanału zostały wcześniej zmodyfikowane przy pomocy 
	polecenia LEVELS.
	

CHAN_HELP_SET_OPNOTICE
	Składnia: SET kanał OPNOTICE {ON | OFF}
	
	Włącza lub wyłącza opcję OPNOTICE dla kanału.
	Kiedy ta opcja jest włączona, %S będzie
	informował użytkowników przebywających na kanale,
	kiedy zostanie użyta komenda OP lub DEOP.

CHAN_HELP_AOP
	Składnia: AOP kanał ADD nick
	          AOP kanał DEL {nick | numer | lista}
	          AOP kanał LIST [maska | lista]
	          AOP kanał CLEAR
	
	Zarządza listą AOP (AutoOP) dla kanału.
	Użytkownicy wpisani na tą listę będą otrzymywać
	automatycznie status operatora, mają prawo się
	odbanować i zaprosić jeśli jest taka potrzeba itd.
	
	Komenda AOP ADD dodaje podany nick do listy AOP.
	
	Komenda AOP DEL usuwa wskazane wpisy z listy.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	Komenda AOP LIST wyświetla zawartość listy AOP.
	Parametr maska pozwala filtrować wyświetlane wpisy
	(symbol * zastępuje dowolny ciąg znaków w nicku).
	Jako parametr można też podać numery wpisów na liście:
	
	   AOP kanał LIST 2-5,7-9
	      Wyświetli wpisy na liście od numeru 2 do 5 oraz
	      od 7 do 9.
	
	Komenda AOP CLEAR usuwa wszystkie wpisy z listy.
	
	Komendy AOP ADD oraz AOP DEL są dostępne dla
	użytkowników z uprawnieniami SOP lub wyższymi.
	Komenda AOP CLEAR jest dostępna dla właściciela
	kanału. Wszyscy użytkownicy wpisani na listę AOP
	mogą używać komendy AOP LIST.
	
	Komenda AOP może być wyłączona dla Twojego kanału,
	w takim przypadku należy używać komendy ACCESS.
	Aby uzyskać informacje o komendzie ACCESS wpisz:
	%R%S HELP ACCESS
	Aby dowiedzieć się jak włączyć tryb xOP wpisz:
	%R%S HELP SET XOP

CHAN_HELP_HOP
	Składnia: HOP kanał ADD nick
	          HOP kanał DEL {nick | numer | lista}
	          HOP kanał LIST [maska | lista]
	          HOP kanał CLEAR
	
	Zarządza listą HOP (HalfOP) dla kanału.
	Użytkownicy wpisani na tą listę będą otrzymywać
	automatycznie status pół-operatora.
	
	Komenda HOP ADD dodaje podany nick do listy HOP.
	
	Komenda HOP DEL usuwa wskazane wpisy z listy.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	Komenda HOP LIST wyświetla zawartość listy HOP.
	Parametr maska pozwala filtrować wyświetlane wpisy
	(symbol * zastępuje dowolny ciąg znaków w nicku).
	Jako parametr można też podać numery wpisów na liście:
	
	   HOP kanał LIST 2-5,7-9
	      Wyświetli wpisy na liście od numeru 2 do 5 oraz
	      od 7 do 9.
	
	Komenda HOP CLEAR usuwa wszystkie wpisy z listy.
	
	Komendy HOP ADD, HOP DEL oraz HOP LIST są dostępne
	dla użytkowników z uprawnieniami AOP lub wyższymi.
	Komenda HOP CLEAR jest dostępna tylko dla
	właściciela kanału.
	
	Komenda HOP może być wyłączona dla Twojego kanału,
	w takim przypadku należy używać komendy ACCESS.
	Aby uzyskać informacje o komendzie ACCESS wpisz:
	%R%S HELP ACCESS
	Aby dowiedzieć się jak włączyć tryb xOP wpisz:
	%R%S HELP SET XOP

CHAN_HELP_SOP
	Składnia: SOP kanał ADD nick
	          SOP kanał DEL {nick | numer | lista}
	          SOP kanał LIST [maska | lista]
	          SOP kanał CLEAR
	
	Zarządza listą SOP (SuperOP) dla kanału.
	Użytkownicy wpisani na tą listę będą otrzymywać
	automatycznie status operatora.
	
	Komenda SOP ADD dodaje podany nick do listy SOP.
	
	Komenda SOP DEL usuwa wskazane wpisy z listy.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	Komenda SOP LIST wyświetla zawartość listy SOP.
	Parametr maska pozwala filtrować wyświetlane wpisy
	(symbol * zastępuje dowolny ciąg znaków w nicku).
	Jako parametr można też podać numery wpisów na liście:
	
	   SOP kanał LIST 2-5,7-9
	      Wyświetli wpisy na liście od numeru 2 do 5 oraz
	      od 7 do 9.
	
	Komenda SOP CLEAR usuwa wszystkie wpisy z listy.
	
	Komendy SOP ADD, SOP DEL oraz SOP CLEAR są
	dostępne tylko dla właściciela kanału.
	Komenda SOP LIST jest dostępna dla
	użytkowników wpisanych na listę AOP.
	
	Komenda SOP może być wyłączona dla Twojego kanału,
	w takim przypadku należy używać komendy ACCESS.
	Aby uzyskać informacje o komendzie ACCESS wpisz:
	%R%S HELP ACCESS
	Aby dowiedzieć się jak włączyć tryb xOP wpisz:
	%R%S HELP SET XOP

CHAN_HELP_VOP
	Składnia: VOP kanał ADD nick
	          VOP kanał DEL {nick | numer | lista}
	          VOP kanał LIST [maska | lista]
	          VOP kanał CLEAR
	
	Zarządza listą VOP (VOicePeople) dla kanału.
	Użytkownicy wpisani na tą listę będą otrzymywać
	automatycznie prawo głosu i będą mogli je sobie
	nadać jeśli będzie taka potrzeba.
	
	Komenda VOP ADD dodaje podany nick do listy VOP.
	
	Komenda VOP DEL usuwa wskazane wpisy z listy.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
		
	Komenda VOP LIST wyświetla zawartość listy VOP.
	Parametr maska pozwala filtrować wyświetlane wpisy
	(symbol * zastępuje dowolny ciąg znaków w nicku).
	Jako parametr można też podać numery wpisów na liście:
	
	   VOP kanał LIST 2-5,7-9
	      Wyświetli wpisy na liście od numeru 2 do 5 oraz
	      od 7 do 9.
	
	Komenda VOP CLEAR usuwa wszystkie wpisy z listy.
	
	Komendy VOP ADD, VOP DEL oraz VOP LIST są dostępne
	dla użytkowników z uprawnieniami AOP lub wyższymi.
	Komenda VOP CLEAR jest dostępna tylko dla
	właściciela kanału.
	
	Komenda VOP może być wyłączona dla Twojego kanału,
	w takim przypadku należy używać komendy ACCESS.
	Aby uzyskać informacje o komendzie ACCESS wpisz:
	%R%S HELP ACCESS
	Aby dowiedzieć się jak włączyć tryb xOP wpisz:
	%R%S HELP SET XOP

CHAN_HELP_ACCESS
	Składnia: ACCESS kanał ADD nick level
	          ACCESS kanał DEL {nick | numer | list}
	          ACCESS kanał LIST [maska | list]
	          ACCESS kanał CLEAR
	
	Polecenie pozwala na zarządzanie wpisami w kanałowej
	liście dostępu (access list). Ustalony poziom
	dostępu określa, którzy użytkownicy mogą pełnić
	funkcje operatorów kanału, oraz posiadać dostęp do
	komend %S. Różne poziomy określają inne
	przywileje.
	Napisz msg %R%S HELP ACCESS LEVELS,
	aby uzyskać więcej informacji. Każdy użytkownik,
	który nie został wpisany na listę dostępu, posiada
	poziom uprawnień równy 0.
	
	Polecenie ACCESS ADD dodaje podany nick do listy z
	określonym poziomem dostępu. Jeśli nick jest już
	wpisany na liście, jego poziom dostępu zostanie
	zmieniony zgodnie z podanym parametrem. Przyznawany
	poziom dostępu nie może być wyższy niż poziom osoby
	wydającej komendę ADD.
	
	Polecenie ACCESS DEL usuwa wskazane wpisy z listy.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	Polecenie ACCESS LIST wyświetla zawartość listy.
	Parametr maska pozwala zawęzić wynik polecenia
	do jedynie tych wpisów, których host pasuje do
	wskazanej w komendzie maski (dozwolone jest używanie
	znaku * - zastępuje on dowolny ciąg znaków).
	Jako parametr można podać także numery wpisów na
	liście, na przykład:
	
	   ACCESS kanał LIST 2-5,7-9
	    Wyświetli wpisy na liście od numeru 2 do 5, oraz
	    od 7 do 9.
	
	Polecenie ACCESS CLEAR usuwa wszystkie wpisy z listy.

CHAN_HELP_ACCESS_LEVELS
	Poziomy dostępu użytkowników:
	
	Standardowe poziomy dostępu zostały podane poniżej:
	   Founder  Pełny dostęp do poleceń %S.
	            Automatyczne nadawanie statusu operatora.
	            UWAGA: tylko jedna osoba może być
	            właścicielem (Founder) kanału.
	            Nie można nadać tego uprawnienia
	            za pomocą polecenia ACCESS.
	        10  Dostęp do polecenia AKICK,
	            Automatyczne nadawanie statusu operatora.
	         5  Automatyczne nadawanie statusu operatora.
	         3  Automatyczne nadawanie prawa głosu.
	         0  Brak specjalnych przywilejów.
	            Inne osoby mogą nadać status
	            operatora temu użytkownikowi
	            (jeśli wyłączono opcję secure-ops).
	        <0  Brak możliwości pełnienia funkcji
	            operatora.
	
	Standardowe poziomy mogą zostać zmienione, możliwe
	jest także definiowanie własnych poziomów dostępu.
	Aby uzyskać więcej informacji wpisz:
	%R%S HELP LEVELS

CHAN_HELP_AKICK
	Składnia: AKICK kanał ADD {nick | maska} [powód]
	          AKICK kanał STICK maska
	          AKICK kanał UNSTICK maska
	          AKICK kanał DEL {nick | maska | numer-wpisu | lista}
	          AKICK kanał LIST [maska | numer-wpisu | lista]
	          AKICK kanał VIEW [maska | numer-wpisu | lista]
	          AKICK kanał ENFORCE
	          AKICK kanał CLEAR
	
	Polecenie zarządza listą AutoKick dla kanału. Jeśli
	użytkownik znajdujący się na liście AKICK, wejdzie
	na kanał, %S założy bana, a następnie wykopie
	użytkownika z kanału.
	
	Polecenie AKICK ADD dodaje podany nick lub maskę
	hosta do listy AutoKick. Jeśli zostanie podany
	powód, będzie on używany przy wykopywaniu
	użytkownika dodanego do listy z kanału, jeśli nie
	zostanie podany, używany będzie domyślny:
	You have been banned from channel.
	Dodawanie zarejestrowanego nicka na listę powoduje
	wykopywanie wszystkich nicków należących do grupy.
	
	Polecenie AKICK STICK umożliwia permanentne
	dodanie podanej maski do banów na kanale. Za każdym
	razem gdy ktoś zdejmie wskazanego bana z kanału,
	%S automatycznie założy go ponownie.
	Parametrem polecenia nie może być nick a jedynie
	host.
	
	Polecenie AKICK UNSTICK niweluje działanie
	polecenia AKICK STICK - umożliwia zdjęcie bana z
	kanału.
	
	AKICK DEL usuwa wskazany nick lub maskę z listy AKICK.
	Jako argument przyjmuje nick, maskę, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	AKICK LIST wyświetla zawartość listy AKICK. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane.

	AKICK VIEW zwraca więcej szczegółów niż AKICK LIST.
	
	Polecenie AKICK ENFORCE powoduje że %S
	usunie z kanału wszystkich użytkowników, których
	hosty pasują do wskazanych masek w liście AKICK.
	
	Polecenie AKICK CLEAR usuwa wszystkie wpisy z listy.

CHAN_HELP_LEVELS
	Składnia: LEVELS kanał SET typ poziom
	          LEVELS kanał {DIS | DISABLE} typ
	          LEVELS kanał LIST
	          LEVELS kanał RESET
	
	Polecenie LEVELS umożliwia przypisywanie 
	uprawnień poszczególnym poziomom dostepu.
	Przy użyciu tej komendy możesz definiować 
	poziomy dostępu do wszystkich funkcji %S 
	(SET FOUNDER, SET PASSWORD oraz LEVELS
	są dostępne tylko dla właściciela kanału).
	
	LEVELS SET pozwala zmienić przypisany poziom dla 
	określonej operacji lub ich grup. LEVELS DISABLE 
	(lub DIS w skrócie) wyłącza określoną funkcję lub
	zastrzega dostęp do niej dla właściciela kanału.
	LEVELS LIST wyświetla aktualnie ustalone poziomy 
	dla każdej z operacji. LEVELS RESET przywraca 
	standardowe ustawienia poziomów dostępu - identyczne 
	z tymi jakie ustawiane są dla kanału po jego 
	utworzeniu (zobacz HELP ACCESS LEVELS).
	
	Aby obejrzeć spis wszystkich funkcji które mogą 
	zostać przypisane poziomom dostępu, zobacz
	HELP LEVELS DESC.

CHAN_HELP_LEVELS_DESC
	Poniżej znajduje się lista wszystkich dostępnych uprawnień.
	Poziomy dla AUTODEOP oraz NOJOIN to poziomy maksymalne,
	reszta uprawnień ma poziomy minimalne.

CHAN_HELP_LEVELS_DESC_FORMAT
	    %-*s  %s

CHAN_HELP_INFO
	Składnia: INFO kanał [ALL]
	
	Wyświetla informacje o zarejestrowanym kanale:
	właściciel, data założenia, opis, blokada flag,
	czas ostatniego użycia. Kiedy zostanie podany parametr
	ALL zostaną wyświetlone także informacje o spadkobiercy
	kanału i wiadomości powitalnej.
	
	Domyślnie parametr ALL jest dostępny dla osób z
	uprawnieniami właściciela kanału.

CHAN_HELP_LIST
	Składnia: LIST wzorzec
	
	Listuje kanały o nazwie pasującej do podanego wzorca
	(kanały z opcją PRIVATE nie będą pokazywane).
	Poprzedzenie znakiem '#' powoduje podawanie zakresu,
	nazwy kanałów powinny być pisane bez znaku '#'.

CHAN_HELP_OP
	Składnia: OP [kanał [nick]]
	
	Nadaje status operatora wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_DEOP
	Składnia: DEOP [kanał [nick]]
	
	Odbiera status operatora wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_VOICE
	Składnia: VOICE [kanał [nick]]
	
	Nadaje prawo głosu wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających przynajmniej
	5. poziom dostępu. Osoby wpisane na listę VOP lub
	posiadające 3. poziom dostępu mogą ją wykonywać
	jedynie na sobie.

CHAN_HELP_DEVOICE
	Składnia: DEVOICE [kanał [nick]]
	
	Odbiera prawo głosu wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających przynajmniej
	5. poziom dostępu. Osoby wpisane na listę VOP lub
	posiadające 3. poziom dostępu mogą ją wykonywać
	jedynie na sobie.

CHAN_HELP_HALFOP
	Składnia: HALFOP [kanał [nick]]
	
	Nadaje status pół-operatora wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających przynajmniej
	5. poziom dostępu. Osoby wpisane na listę HOP lub
	posiadające 4. poziom dostępu mogą ją wykonywać
	jedynie na sobie.

CHAN_HELP_DEHALFOP
	Składnia: DEHALFOP [kanał [nick]]
	
	Odbiera status pół-operatora wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających przynajmniej
	5. poziom dostępu. Osoby wpisane na listę HOP lub
	posiadające 4. poziom dostępu mogą ją wykonywać
	jedynie na sobie.

CHAN_HELP_PROTECT
	Składnia: PROTECT [kanał [nick]]
	
	Nadaje ochronę wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę SOP lub posiadających przynajmniej
	10. poziom dostępu.

CHAN_HELP_DEPROTECT
	Składnia: DEPROTECT [kanał [nick]]
	
	Usuwa ochronę wskazanemu użytkownikowi.
	Jeśli nie zostanie podany nick operacja będzie
	przeprowadzona na osobie wydającej tą komendę.
	Jeśli także nie zostanie podany kanał operacja
	będzie przeprowadzona na wszystkich kanałach na
	których przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę SOP lub posiadających przynajmniej
	10. poziom dostępu.

CHAN_HELP_OWNER
	Składnia: OWNER [kanał]
	
	Nadaje uprawnienia właściciela kanału.
	Jeśli nie zostanie podany kanał operacja będzie
	przeprowadzona na wszystkich kanałach na których
	przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna tylko dla właściciela kanału.

CHAN_HELP_DEOWNER
	Składnia: DEOWNER [kanał]
	
	Odbiera uprawnienia właściciela kanału.
	Jeśli nie zostanie podany kanał operacja będzie
	przeprowadzona na wszystkich kanałach na których
	przebywa osoba wydająca to polecenie z
	uwzględnieniem posiadanych uprawnień.
	
	Standardowo ta komenda jest dostępna tylko dla właściciela kanału.

CHAN_HELP_INVITE
	Składnia: INVITE kanał
	
	%S wysyła użytkownikowi zaproszenie do kanału.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_UNBAN
	Składnia: UNBAN kanał
	
	Sprawia, że %S zdejmie wszystkie bany, które
	uniemożliwiają wydającemu komendę wejście na
	wskazany kanał.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_KICK
	Składnia: KICK [kanał [nick [powód]]]
	
	Wykopuje wskazanego użytkownika z kanału.
	Pominięcie nicka powoduje wyrzucenie osoby
	wydającej polecenie. Dodatkowo pominięcie
	nazwy kanału powoduje wyrzucenie wydającego
	polecenie ze wszystkich kanałów, na których
	przebywa z uwzględnieniem uprawnień na nich
	przysługujących.
	
	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_BAN
	Składnia: BAN [kanał [nick [powód]]]
	
	Banuje wskazanego użytkownika na kanale.
	Pominięcie nicka powoduje zbanowanie osoby
	wydającej polecenie. Dodatkowo pominięcie
	nazwy kanału powoduje zbanowanie wydającego
	polecenie na wszystkich kanałach, na których
	przebywa z uwzględnieniem uprawnień na nich
	przysługujących.

	Standardowo ta komenda jest dostępna dla użytkowników
	wpisanych na listę AOP lub posiadających poziom
	dostępu 5 lub wyższy.

CHAN_HELP_TOPIC
	Składnia: TOPIC kanał [temat]
	
	Wymusza na serwisie %S zmianę tematu na kanale.
	Pominięcie tematu powoduje usunięcie istniejącego.
	Ta komenda jest użyteczna w połączeniu z ustawieniem
	TOPICLOCK. Aby uzyskać więcej informacji wpisz
	%R%S HELP SET TOPICLOCK
	
	Standardowo ta komenda jest dostępna dla właściciela kanału.

CHAN_HELP_CLEAR
	Składnia: CLEAR kanał opcje
	
	Umożliwia kompleksowe usunięcie niektórych ustawień na
	kanale poprzez %S. Dostępne opcje:
	
	   MODES     Usuwa tryby z kanału
	   BANS      Usuwa bany z kanału
	   EXCEPTS   Usuwa wyjątki od banów z kanału
	   INVITES   Usuwa zaproszenia z kanału
	   OPS       Odbiera wszystkim status operatora
	   HOPS      Odbiera wszystkim status pół-operatora
	   VOICES    Odbiera wszystkim prawo głosu
	   USERS     Usuwa użytkowników z kanału
	
	Standardowo ta komenda jest dostępna dla właściciela kanału.
	
CHAN_HELP_GETKEY
	Składnia: GETKEY kanał
	
	Zwraca hasło wstępu do wskazanego kanału.
	Komenda jest głównie przeznaczona dla botów,
	dlatego wynik ma format:
	
	KEY <kanał> <klucz>
	
	Jeśli kanał nie ma klucza zostanie zwrócona
	wartość "NO KEY".

CHAN_HELP_SENDPASS
	Składnia: SENDPASS kanał
	
	Wysyła hasło do podanego kanału na adres e-mail
	przypisany do nicka właściciela kanału. Ta komenda
	pomaga odzyskać zapomniane hasło.
	
	Ta komenda w niektórych sieciach może być dostępna
	jedynie dla osób z uprawnieniami IRC operatora.
	
	Ta komenda jest niedostępna kiedy hasła są szyfrowane.

CHAN_SERVADMIN_HELP
	
	Administratorzy serwisów mogą usunąć każdy kanał
	bez potrzeby identyfikacji jako jego właściciele.
	Mogą przeglądać listę dostępu każdego kanału,
	listę AKICK, ustawienia poziomów dostępu itd.

CHAN_SERVADMIN_HELP_LOGOUT
	Składnia: LOGOUT kanał nick
	
	Pozwala na wylogowanie wskazanego użytkownika z kanału.
	W celu odzyskania uprawnień użytkownik będzie musiał
	ponownie się zidentyfikować.
	
	Każdy może wylogować siebie, natomiast właściciel kanału
	może wylogować każdego.
	
	Administrator serwisów może wylogować dowolną osobę
	z dowolnego kanału. Pominięcie nicka powoduje wylogowanie
	wszystkich zidentyfikowanych osób.

CHAN_SERVADMIN_HELP_DROP
	Składnia: DROP kanał
	
	Usuwa wskazany kanał. Tylko administratorzy serwisów
	mogą usunąć kanał, którego nie są właścicielami.

CHAN_SERVADMIN_HELP_SET
	
	Administratorzy serwisów mogą ustawić kanałowi 
	opcję NOEXPIRE, która zapobiega wygaśnięciu
	kanału jeśli nie jest on używany.

CHAN_SERVADMIN_HELP_SET_NOEXPIRE
	Składnia: SET kanał NOEXPIRE {ON | OFF}
	
	Włącza lub wyłącza automatyczne usunięcie kanału,
	jeśli nie będzie on używany.

CHAN_SERVADMIN_HELP_INFO
	
	Administratorzy serwisów zawsze mogą używać parametru ALL.

CHAN_SERVADMIN_HELP_LIST
	Składnia: LIST wzorzec [FORBIDDEN] [SUSPENDED] [NOEXPIRE]

	Listuje kanały o nazwie pasującej do podanego wzorca
	(kanały z opcją PRIVATE będą pokazywane jedynie
	administratorom serwisów). Kanały z ustawioną opcją
	NOEXPIRE będą miały przy nazwie dodany znak !.

	Administratorzy serwisów mogą także podać parametry:
	FORBIDDEN, SUSPENDED i NOEXPIRE, które ograniczą listę
	wyświetlanych kanałów do tych, które spełniają podane 
	warunki. Jeśli zostanie podane więcej warunków
	wszystkie kanały spełniające choć jeden z nich 
	zostaną pokazane.

CHAN_SERVADMIN_HELP_GETPASS
	Składnia: GETPASS kanał
	
	Zwraca hasło właściciela dla wskazanego kanału. 
	UWAGA: użycie tej komendy powoduje wysłanie
	informacji o jej użyciu przy pomocy WALLOP/GLOBOP.

CHAN_SERVADMIN_HELP_FORBID
	Składnia: FORBID kanał [powód]
	
	Uniemożliwia rejestrację i korzystanie ze wskazanego
	kanału. Blokadę można zdjąć używając komendy DROP.
	
	W niektórych sieciach wymagane jest podanie powodu.

CHAN_SERVADMIN_HELP_SUSPEND
	Składnia: SUSPEND kanał [powód]
	
	Zawiesza działanie wskazanego kanału.
	Blokada może zostać zdjęta z zachowaniem
	wszelkich ustawień komendą UNSUSPEND.
	
	W niektórych sieciach wymagane jest podanie powodu.

CHAN_SERVADMIN_HELP_UNSUSPEND
	Składnia: UNSUSPEND kanał
	
	Uwalnia zawieszony kanał. Wszystkie dane i ustawienia
	są odtworzone sprzed zawieszenia.

CHAN_SERVADMIN_HELP_STATUS
	Składnia: STATUS kanał nick
	
	Wyświetla aktualny poziom dostępu (access level) 
	wskazanego nicka na kanale. Format odpowiedzi jest 
	następujący:
	
	    STATUS kanał nick poziom-dostępu
	
	W przypadku wystąpienia błędu, format odpowiedzi 
	będzie następujący:
	
	    STATUS ERROR informacja-o-błędzie

###########################################################################
#
# MemoServ help messages
#
###########################################################################
MEMO_HELP_CMD_SEND
	    SEND        Wysyła wiadomość do użytkownika/kanału

MEMO_HELP_CMD_CANCEL
	    CANCEL      Wycofuje ostatnią wysłaną wiadomość

MEMO_HELP_CMD_LIST
	    LIST        Wyświetla wszystkie wiadomości

MEMO_HELP_CMD_READ
	    READ        Wyświetla jedną lub więcej wiadomości

MEMO_HELP_CMD_DEL
	    DEL         Kasuje jedną lub więcej wiadomości

MEMO_HELP_CMD_SET
	    SET         Ustawia opcje związane z wiadomościami

MEMO_HELP_CMD_INFO
	    INFO        Wyświetla informacje o wiadomościach

MEMO_HELP_CMD_RSEND
	    RSEND       Wysyła wiadomość z żądaniem potwierdzenia odbioru

MEMO_HELP_CMD_CHECK
	    CHECK       Sprawdza czy ostatnia wiadomość została przeczytana

MEMO_HELP_CMD_SENDALL
	    SENDALL     Wysyła wiadomość do wszystkich
	                zarejestrowanych użytkowników

MEMO_HELP_CMD_STAFF
	    STAFF       Wysyła wiadomość do wszystkich
	                operatorów/administratorów

MEMO_HELP_HEADER
	%S umożliwia wysyłanie krótkich wiadomości
	do innych użytkowników (niezależnie od tego czy
	są oni w danej chwili na IRCu) lub do kanałów(*).
	Aby móc używać tego serwisu nadawca i odbiorca
	(kanał lub nick) muszą być zarejestrowani.
	Poniższe komendy pozwalają na wysyłanie i
	odbieranie wiadomości, aby ich użyć wpisz:
	%R%S komenda
	Aby uzyskać szczegółowy opis polecenia wpisz:
	%R%S HELP komenda

MEMO_HELP_ADMIN
	nie jest używane.

MEMO_HELP_OPER
	nie jest używane.

MEMO_HELP_FOOTER
	
	Napisz %R%S HELP polecenie aby uzyskać pomoc
	na temat powyższych poleceń.

	(*) Domyślnie każdy użytkownik mający przynajmniej 10.
	    poziom dostępu na kanale może czytać wiadomości,
	    ale można to zmienić komendą LEVELS serwisu %s.

MEMO_HELP_SEND
	Składnia: SEND {nick | kanał} treść-wiadomości
	
	Wysyła wiadomość wskazanej osobie lub na podany kanał.
	Po wysłaniu odbiorca otrzyma powiadomienie o nowej
	wiadomości (o ile ma włączone powiadomienia).
	Adresatem musi być zarejestrowany nick lub kanał.

MEMO_HELP_CANCEL
	Składnia: CANCEL {nick | kanał}
	
	Wycofuje ostatnią wysłaną wiadomość,
	o ile nie została przeczytana.

MEMO_HELP_LIST
	Składnia: LIST [kanał] [lista | NEW]
	
	Wyświetla wszystkie odebrane wiadomości. Parametr 
	NEW ogranicza listę do nowych wiadomości, które
	oznaczane są symbolem "*" po lewej stronie numeru.
	Można także sprecyzować listę wyświetlanych 
	wiadomości podając ich numery, np:

	   LIST 2-5,7-9
	      Wyświetli wiadomości od numeru 2 do 5 oraz od 7 do 9.

MEMO_HELP_READ
	Składnia: READ [kanał] {numer | lista | LAST | NEW}
	
	Wyświetla tekst wskazanej wiadomości. Parametr LAST
	oznacza ostatnią z wiadomości, NEW wyświetla wszystkie
	nieprzeczytane wiadomości. Jeśli zostanie podany numer
	zostanie wyświetlona wiadomość o podanym numerze. Można
	także podawać listę wiadomości np.:
	
	   READ 2-5,7-9
	      Wyświetli wiadomości od numeru 2 do 5 oraz od 7 do 9.

MEMO_HELP_DEL
	Składnia: DEL [kanał] {numer | lista | LAST | ALL}
	
	Kasuje jedną lub więcej wiadomości. Dopuszczalne 
	jest podanie numeru wiadomości lub listy wiadomości, 
	przykład poniżej.
	
	Parametr LAST oznacza skasowanie ostatniej wiadomości.
	Parametr ALL oznacza skasowanie wszystkich wiadomości.
	
	Przykłady:
	
	   DEL 1
	      Usuwa pierwszą wiadomość.
	
	   DEL 2-5,7-9
	      Kasuje wiadomości od numeru 2 do 5 oraz od 7 do 9.

MEMO_HELP_SET
	Składnia: SET opcja parametry
	
	Ustawia różne opcje wiadomości. Dostępne opcje:
	
	    NOTIFY      Ustawia kiedy otrzymasz informację
	                o nowej wiadomości
	    LIMIT       Ustawia maksymalną liczbę wiadomości
	                jakie możesz odebrać
	
	Aby uzyskać więcej informacji o danej opcji wpisz:
	%R%S HELP SET opcja

MEMO_HELP_SET_NOTIFY
	Składnia: SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}
	
	Ustala sposób wysłania powiadomień o nowych wiadomościach:
	
	   ON      Powiadomienie zostanie wysłane po 
	           zalogowaniu się, kiedy nie będzie 
	           ustawiony tryb /AWAY oraz w momencie
	           otrzymania wiadomości.
	   LOGON   Powiadomienie zostanie wysłane jedynie 
	           po zalogowaniu się lub po wyłączeniu 
	           trybu /AWAY.
	   NEW     Powiadomienie będzie wysyłane jedynie w 
	           momencie otrzymania wiadomości.
	   MAIL    Powiadomienia będą wysyłane e-mailem oraz
	           wedle pozostałych ustawień.
	   NOMAIL  Powiadomienia nie będą wysyłane e-mailem.
	   OFF     Powiadomienia nie będą wysyłane.
	
	Opcja ON jest kombinacją opcji LOGON oraz NEW.

MEMO_HELP_SET_LIMIT
	Składnia: SET LIMIT [kanał] limit
	
	Ustala Twoją (lub kanału) maksymalną liczbę 
	wiadomości. Jeśli ustalona zostanie ona na 0, 
	przyjmowanie wiadomości zostanie wyłączone. Limit 
	nie może być większy niż %d.

MEMO_HELP_INFO
	Składnia: INFO [kanał]
	
	Wyświetla ilość wiadomości, ile z nich jest 
	nieprzeczytanych oraz limit przyjmowania 
	wiadomości. Jeśli podany zostanie kanał wyświetlone 
	informacje będą odnosiły się do wskazanego kanału.

MEMO_SERVADMIN_HELP_SET_LIMIT
	Składnia: SET LIMIT [nick | kanał] {limit | NONE} [HARD]
	
	Ustala maksymalną ilość wiadomości jaką może 
	posiadać użytkownik lub kanał. Ustalenie limitu 
	na 0, wyłączy przyjmowanie wiadomości. Parametr 
	NONE pozwoli na nielimitowaną ilość wiadomości. 
	Jeśli nie podany zostanie nick lub kanał zmieniony 
	zostanie limit wydającego polecenie.
	
	Dodanie parametru HARD uniemożliwia zmianę 
	limitu przez użytkownika.

	To użycie polecenia SET LIMIT jest dostępne dla 
	administratorów serwisów. Pozostali użytkownicy 
	mogą jedynie modyfikować własny limit lub kanału na
	którym mają do tego uprawnienia. Nie mogą wyłączyć 
	limitu, a także ustalić jego wartości powyżej %d 
	oraz użyć parametru HARD.



MEMO_SERVADMIN_HELP_INFO
	Składnia: INFO [nick | kanał]
	
	Polecenie wydane bez parametru wyświetla informacje o
	liczbie odebranych wiadomości, liczbie nowych wiadomości
	oraz limicie wiadomości.
	
	Jeśli zostanie wskazany kanał, pokazane zostaną te 
	same informacje w odniesieniu do tego kanału.
	
	Administratorzy serwisów mogą obejrzeć informacje 
	dot. dowolnych użytkowników podając parametr nick.
	

MEMO_HELP_STAFF
	Składnia: STAFF treść-wiadomości
	
	Wysyła wiadomość o podanej treści do wszystkich
	operatorów i administratorów serwisów. Użytkownicy
	wpisani jednocześnie na kilka list otrzymają
	wiadomości kilka razy.

MEMO_HELP_SENDALL
	Składnia: SENDALL treść-wiadomości
	
	Wysyła wiadomość do wszystkich zarejestrowanych użytkowników.

MEMO_HELP_RSEND
	Składnia: RSEND {nick | kanał} treść-wiadomości
	
	Wysyła wiadomość wskazanej osobie lub na podany kanał.
	Po wysłaniu odbiorca otrzyma powiadomienie o nowej
	wiadomości (o ile ma włączone powiadomienia).
	Adresatem musi być zarejestrowany nick lub kanał.
	Kiedy wiadomość zostanie przeczytana przez odbiorcę
	automatyczne potwierdzenie odbioru zostanie wysłane
	do nadawcy.
MEMO_HELP_CHECK
	Składnia: CHECK nick
	
	Sprawdza, czy ostatnia wiadomość wysłana do nick
	została przeczytana. Ta komenda nie działa dla kanałów.

###########################################################################
#
# OperServ help messages
#
###########################################################################
OPER_HELP_CMD_GLOBAL
	    GLOBAL      Wysyła wiadomość do wszystkich użytkowników

OPER_HELP_CMD_STATS
	    STATS       Pokazuje informacje o serwisach i sieci

OPER_HELP_CMD_OPER
	    OPER        Zarządza listą operatorów serwisów

OPER_HELP_CMD_ADMIN
	    ADMIN       Zarządza listą administratorów serwisów

OPER_HELP_CMD_STAFF
	    STAFF       Wyświetla ekipę serwisów oraz jej status

OPER_HELP_CMD_MODE
	    MODE        Zmienia flagi kanału

OPER_HELP_CMD_KICK
	    KICK        Wyrzuca użytkownika z kanału

OPER_HELP_CMD_CLEARMODES
	    CLEARMODES  Usuwa wszystkie flagi z kanału

OPER_HELP_CMD_KILLCLONES
	    KILLCLONES  Odłącza wszystkich użytkowników o danym hoście

OPER_HELP_CMD_AKILL
	    AKILL       Zarządza listą AKILL

OPER_HELP_CMD_SGLINE
	    SGLINE      Zarządza listą SGLINE

OPER_HELP_CMD_SQLINE
	    SQLINE      Zarządza listą SQLINE

OPER_HELP_CMD_SZLINE
	    SZLINE      Zarządza listą SZLINE

OPER_HELP_CMD_CHANLIST
	    CHANLIST    Listuje wszystkie kanały

OPER_HELP_CMD_USERLIST
	    USERLIST    Listuje wszystkich użytkowników

OPER_HELP_CMD_LOGONNEWS
	    LOGONNEWS   Zarządza wiadomościami powitalnymi

OPER_HELP_CMD_RANDOMNEWS
	    RANDOMNEWS  Zarządza losowymi wiadomościami

OPER_HELP_CMD_OPERNEWS
	    OPERNEWS    Zarządza wiadomościami dla operatorów

OPER_HELP_CMD_SESSION
	    SESSION     Wyświetla listę sesji

OPER_HELP_CMD_EXCEPTION
	    EXCEPTION   Zarządza listą wyjątków dla limitów sesji

OPER_HELP_CMD_NOOP
	    NOOP        Tymczasowo usuwa wszystkie O:linie na serwerze

OPER_HELP_CMD_JUPE
	    JUPE        Blokuje podłączanie podanego serwera

OPER_HELP_CMD_IGNORE
	    IGNORE      Zarządza listą ignorowanych przez serwisy

OPER_HELP_CMD_SET
	    SET         Ustawia różne globalne opcje serwisów

OPER_HELP_CMD_RELOAD
	    RELOAD      Ładuje na nowo plik konfiguracyjny

OPER_HELP_CMD_UPDATE
	    UPDATE      Wymusza natychmiastowy zapis baz na dysku

OPER_HELP_CMD_RESTART
	    RESTART     Zapisuje bazy i restartuje serwisy

OPER_HELP_CMD_QUIT
	    QUIT        Wyłącza serwisy bez zapisywania baz

OPER_HELP_CMD_SHUTDOWN
	    SHUTDOWN    Wyłącza serwisy z zapisaniem baz

OPER_HELP_CMD_DEFCON
	    DEFCON      Modyfikuje poziom systemu DefCon

OPER_HELP_CMD_CHANKILL
	    CHANKILL    AKILL wszystkich użytkowników na kanale

OPER_HELP_CMD_OLINE
	    OLINE       Daje flagi operatora wybranemu użytkownikowi

OPER_HELP_CMD_UMODE
	    UMODE       Modyfikuje flagi wskazanego użytkownika

OPER_HELP_CMD_SVSNICK
	    SVSNICK     Wymusza zmianę nicka danego użytkownika

OPER_HELP_CMD_MODLOAD
	    MODLOAD     Ładuje moduł

OPER_HELP_CMD_MODUNLOAD
	    MODUNLOAD   Wyładowuje moduł

OPER_HELP_CMD_MODINFO
	    MODINFO     Wyświetla informacja o podanym module

OPER_HELP_CMD_MODLIST
	    MODLIST     Listuje załadowane moduły

OPER_HELP
	Komendy %S:

OPER_HELP_LOGGED
	Uwaga: Wszystkie komendy odbierane przez %S są logowane!

OPER_HELP_GLOBAL
	Składnia: GLOBAL wiadomość
	
	Pozwala administratorom wysyłać wiadomości do wszystkich
	użytkowników. Wiadomość zostanie wysłana z nicka %s.

OPER_HELP_STATS
	Składnia: STATS [AKILL | ALL | RESET | MEMORY | UPLINK]
	
	Polecenie bez parametrów wyświetla bieżącą liczbę 
	użytkowników oraz operatorów podłączonych do sieci (nie
	licząc serwisów), największą liczbę użytkowników licząc od 
	startu serwisów oraz czas pracy serwisów.
	
	Parametr AKILL wyświetla informacje o rozmiarze listy
	AKILL oraz domyślnym czasie wygasania wpisów.
	
	Parametr RESET resetuje maksymalną liczbę użytkowników
	podłączonych do sieci.
	
	Parametr MEMORY wyświetla informacje o zużyciu pamięci
	przez serwisów. Użycie tego polecenia może chwilowo
	zawiesić działanie serwisów na dużych sieciach.
	
	Parametr UPLINK wyświetla informacje o serwerze, do 
	którego serwisy są bezpośrednio podłączone.
	
	Parametr ALL wyświetla wszystkie dostępne informacje.
	
	UPTIME może być używane jako synonim STATS.

OPER_HELP_OPER
	Składnia: OPER ADD nick
	          OPER DEL {nick | numer-wpisu | lista}
	          OPER LIST [maska | lista]
	          OPER CLEAR
	
	Pozwala głównym administratorom serwisów na zarządzanie
	listą operatorów serwisów. Osoby na takiej liście po 
	identyfikacji u %s będą mogły korzystać z poleceń
	zarezerwowanych dla operatorów serwisów.
	
	OPER ADD dodaje wskazany nick na listę operatorów.
	
	OPER DEL usuwa wskazane wpisy z listy operatorów.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	OPER LIST wyświetla listę operatorów serwisów. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   OPER LIST 2-5,7-9
	      Listuje operatorów od 2 do 5 oraz od 7 do 9.
	
	OPER CLEAR usuwa wszystkie wpisy z listy operatorów.
	
	Każdy IRC operator może użyć polecenia OPER LIST.

OPER_HELP_ADMIN
	Składnia: ADMIN ADD nick
	          ADMIN DEL {nick | numer-wpisu | lista}
	          ADMIN LIST [maska | lista]
	          ADMIN CLEAR
	
	Pozwala głównym administratorom serwisów na zarządzanie
	listą administratorów serwisów. Osoby na takiej liście po 
	identyfikacji u %s będą mogły korzystać z poleceń
	zarezerwowanych dla administratorów serwisów.
	
	ADMIN ADD dodaje wskazany nick na listę administratorów.
	
	ADMIN DEL usuwa wskazane wpisy z listy administratorów.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).

	ADMIN LIST wyświetla listę administratorów serwisów. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   ADMIN LIST 2-5,7-9
	      Listuje administratorów od 2 do 5 oraz od 7 do 9.

	ADMIN CLEAR usuwa wszystkie wpisy z listy administratorów.
	
	Każdy IRC operator może użyć polecenia ADMIN LIST.

OPER_HELP_IGNORE
	Składnia: IGNORE {ADD|DEL|LIST|CLEAR} [czas] [nick | maska]
	
	Pozwala administratorom serwisów na włączenie ignorowania
	osób na podstawie nicka lub maski przez określony czas lub
	do najbliższego restartu. Podając czas można stosować
	jednostki: s dla sekund, m dla minut, h dla godzin
	oraz d dla dni. Kombinacja tych jednostek nie jest możliwa.
	Stałe ignorowanie uzyskuje siępodając wartość 0.
	Jeśli maska nie będzie w formacie user@host oraz 
	nick!user@host to zostanie potraktowana jako nick.
	Podając maskę można korzystać z symboli wieloznacznych.

	IRC operatorzy nie będą ignorowani.
	
OPER_HELP_MODE
	Składnia: MODE kanał flagi
	
	Pozwala operatorom serwisów na zmianę flag dla wskazanego
	kanału. Parametry są identyczne jak dla komendy /MODE.

OPER_HELP_UMODE
	Składnia: UMODE użytkownik flagi
	
	Pozwala super-administratorom zmieniać flagi
	innym użytkownikom. Parametry są identyczne jak
	dla komendy /MODE.

OPER_HELP_OLINE
	Składnia: OLINE nick flagi
	
	Pozwala super-administratorom na nadanie wskazanemu
	użytkownikowi uprawnień irc operatora z określonymi
	flagami. Flagi powinny być poprzedzone znakami "+" lub "-". 
	Aby usunąć wszystkie flagi wystarczy podać "-".

OPER_HELP_CLEARMODES
	Składnia: CLEARMODES kanał [ALL]
	
	Usuwa wszystkie binarne flagi (i,k,l,m,n,p,s,t) oraz bany
	ustawione na wskazanym kanale. Dodanie parametru ALL
	odbiera także uprawnienia (+o, +v).

OPER_HELP_KICK
	Składnia: KICK kanał nick powód
	
	Pozwala administratorom wyrzucić użytkownika z
	dowolnego kanału. Parametry są identyczne jak
	dla komendy /KICK. Do powodu zostaje dołączony
	nick operatora, który wydaje polecenie.
	
	*** SpamMan has been kicked off channel #my_channel by %S (Alcan (Flood))

OPER_HELP_SVSNICK
	Składnia: SVSNICK nick nowy-nick
	
	Zmienia nick wskazanemu użytkownikowi.

OPER_HELP_AKILL
	Składnia: AKILL ADD [+czas-trwania] maska powód
	          AKILL DEL {maska | numer-wpisu | lista}
	          AKILL LIST [maska | lista]
	          AKILL VIEW [maska | lista]
	          AKILL CLEAR
	
	Pozwala operatorom serwisów na zarządzanie listą AKILL.
	Jeśli użytkownik pasujący do maski na liście podłączy się
	do sieci serwisy natychmiast go rozłączą oraz założą K-line
	na jego host.
	
	AKILL ADD dodaje maskę (w formacie user@host lub ip)
	oraz powód (który musi zostać podany) na listę AKILL.
	Podając czas można stosować jednostki: s dla sekund,
	m dla minut, h dla godzin oraz d dla dni.
	Kombinacja tych jednostek nie jest możliwa. Domyślną
	jednostką są dni (+30 oznacza 30 dni). Podanie +0
	oznacza, że wpis nie wygaśnie. Jeśli maska zaczyna się
	znakiem + to podanie czasu jest obowiązkowe (nawet jeśli
	jest identyczny z domyślnym). Domyślny czas wygasania
	można sprawdzić przy pomocy polecenia STATS AKILL.
	
	AKILL DEL usuwa wskazane wpisy z listy AKILL.
	Jako argument przyjmuje nick, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).

	AKILL LIST wyświetla zawartość listy AKILL. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   AKILL LIST 2-5,7-9
	      Listuje wpisy od 2 do 5 oraz od 7 do 9.
	
	AKILL VIEW zwraca więcej szczegółów niż AKILL LIST.
	Wyświetla informacje o dodającym AKILL, datę dodania,
	datę wygaśnięcia, maskę oraz powód.
	
	AKILL CLEAR usuwa wszystkie wpisy z listy AKILL.
	

OPER_HELP_SGLINE
	Składnia: SGLINE ADD [+czas-trwania] maska powód
	          SGLINE DEL {maska | numer-wpisu | lista}
	          SGLINE LIST [maska | lista]
	          SGLINE VIEW [maska | lista]
	          SGLINE CLEAR
	
	Pozwala operatorom serwisów na zarządzanie listą SGLINE.
	Jeśli użytkownik z realname pasującym do maski na liście
	podłączy się do sieci serwisy natychmiast go rozłączą.
	
	SGLINE ADD dodaje wskazaną maskę realname oraz 
	powód (który musi zostać podany) na listę SGLINE.
	Podając czas można stosować jednostki: s dla sekund,
	m dla minut, h dla godzin oraz d dla dni.
	Kombinacja tych jednostek nie jest możliwa. Domyślną
	jednostką są dni (+30 oznacza 30 dni). Podanie +0
	oznacza, że wpis nie wygaśnie. Jeśli maska zaczyna się
	znakiem + to podanie czasu jest obowiązkowe (nawet jeśli
	jest identyczny z domyślnym). Domyślny czas wygasania
	można sprawdzić przy pomocy polecenia STATS AKILL.
	Uwaga: realname może zawierać spacje, dlatego
	separatorem pomiędzy maską i powodem jest dwukropek.
	
	SGLINE DEL usuwa wskazane wpisy z listy SGLINE.
	Jako argument przyjmuje maskę, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	SGLINE LIST wyświetla zawartość listy SGLINE. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   SGLINE LIST 2-5,7-9
	      Listuje wpisy od 2 do 5 oraz od 7 do 9.
	
	SGLINE VIEW zwraca więcej szczegółów niż SGLINE LIST.
	Wyświetla informacje o dodającym SGLINE, datę dodania,
	datę wygaśnięcia, maskę oraz powód.
	
	SGLINE CLEAR usuwa wszystkie wpisy z listy.

OPER_HELP_SQLINE
	Składnia: SQLINE ADD [+czas-trwania] maska powód
	          SQLINE DEL {maska | numer-wpisu | lista}
	          SQLINE LIST [maska | lista]
	          SQLINE VIEW [maska | lista]
	          SQLINE CLEAR
	
	Pozwala operatorom serwisów na zarządzanie listą SQLINE.
	Jeśli użytkownik z nickiem pasującym do maski na liście
	podłączy się do sieci serwisy natychmiast go rozłączą.
	
	Jeśli pierwszym znakiem maski jest # serwisy zablokują
	możliwość korzystania z kanałów o nazwie pasującej do
	niej (o ile IRCd obsługuje taki rodzaj blokady).
	
	SQLINE ADD dodaje wskazaną maskę oraz powód
	(który musi zostać podany) na listę SQLINE.
	Podając czas można stosować jednostki: s dla sekund,
	m dla minut, h dla godzin oraz d dla dni.
	Kombinacja tych jednostek nie jest możliwa. Domyślną
	jednostką są dni (+30 oznacza 30 dni). Podanie +0
	oznacza, że wpis nie wygaśnie. Jeśli maska zaczyna się
	znakiem + to podanie czasu jest obowiązkowe (nawet jeśli
	jest identyczny z domyślnym). Domyślny czas wygasania
	można sprawdzić przy pomocy polecenia STATS AKILL.
	
	SQLINE DEL usuwa wskazane wpisy z listy SQLINE.
	Jako argument przyjmuje maskę, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	SQLINE LIST wyświetla zawartość listy SQLINE. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   SQLINE LIST 2-5,7-9
	      Listuje wpisy od 2 do 5 oraz od 7 do 9.
	
	SQLINE VIEW zwraca więcej szczegółów niż SQLINE LIST.
	Wyświetla informacje o dodającym SQLINE, datę dodania,
	datę wygaśnięcia, maskę oraz powód.

	SQLINE CLEAR usuwa wszystkie wpisy z listy.

OPER_HELP_SZLINE
	Składnia: SZLINE ADD [+czas-trwania] maska powód
	          SZLINE DEL {maska | numer-wpisu | lista}
	          SZLINE LIST [maska | lista]
	          SZLINE VIEW [maska | lista]
	          SZLINE CLEAR
	
	Pozwala operatorom serwisów na zarządzanie listą SZLINE.
	Jeśli użytkownik z adresem IP pasującym do maski na liście
	podłączy się do sieci serwisy natychmiast go rozłączą.
	
	SZLINE ADD dodaje wskazaną maskę oraz powód
	(który musi zostać podany) na listę SZLINE.
	Podając czas można stosować jednostki: s dla sekund,
	m dla minut, h dla godzin oraz d dla dni.
	Kombinacja tych jednostek nie jest możliwa. Domyślną
	jednostką są dni (+30 oznacza 30 dni). Podanie +0
	oznacza, że wpis nie wygaśnie. Jeśli maska zaczyna się
	znakiem + to podanie czasu jest obowiązkowe (nawet jeśli
	jest identyczny z domyślnym). Domyślny czas wygasania
	można sprawdzić przy pomocy polecenia STATS AKILL.
	
	SZLINE DEL usuwa wskazane wpisy z listy SZLINE.
	Jako argument przyjmuje maskę, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).
	
	SZLINE LIST wyświetla zawartość listy SZLINE. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   SZLINE LIST 2-5,7-9
	      Listuje wpisy od 2 do 5 oraz od 7 do 9.
	
	SZLINE VIEW zwraca więcej szczegółów niż SZLINE LIST.
	Wyświetla informacje o dodającym SZLINE, datę dodania,
	datę wygaśnięcia, maskę oraz powód.

	SZLINE CLEAR usuwa wszystkie wpisy z listy.

OPER_HELP_SET
	Składnia: SET opcja wartość
	
	Ustawia różne globalne ustawienia serwisów.
	Obecnie zdefiniowane są następujące ustawienia:
	    READONLY   Włącza tryb tylko-do-odczytu lub odczyt-zapis
	    LOGCHAN    Włącza raportowanie na kanał
	    DEBUG      Włącza lub wyłącza tryb debugowania
	    NOEXPIRE   Włącza lub wyłącza tryb noexpire
	    SUPERADMIN Włącza lub wyłącza tryb super administratora
	    SQL        Włącza lub wyłącza obsługę SQL
	    IGNORE     Włącza lub wyłącza tryb ignorowania
	    LIST       Listuje aktualne ustawienia

OPER_HELP_SET_READONLY
	Składnia: SET READONLY {ON | OFF}
	
	Włącza lub wyłącza tryb tylko-do-odczytu. Włączenie tej
	opcji powoduje zablokowanie wykonywania zmian w ustawieniach
	serwisów, dotyczy to list dostępu kanału oraz nicka itd.
	Operatorzy serwisów z odpowiednimi uprawnieniami będą
	mogli modyfikować listę AKILL, usuwać lub blokować nicki
	oraz kanały, ale żadne z tych zmian nie zostaną zapisane
	dopóki tryb tylko-do-odczytu nie zostanie wyłączony przed
	restartem lub wyłączeniem serwisów.
	
	Ta opcja ma taki sam efekt jak argument linii poleceń -readonly.

OPER_HELP_SET_LOGCHAN
	Składnia: SET LOGCHAN {ON | OFF}
	
	Włącza lub wyłącza wysyłanie wiadomości na podany kanał, które
	trafiają do logów. Aby można było skorzystać z tej opcji należy
	zdefiniować w pliku konfiguracyjnym nazwę kanału (LogChannel).

	Ta opcja ma taki sam efekt jak argument linii poleceń -logchan.

	Uwaga: Ustawiony kanał musi być odpowiednio zabezpieczony,
	aby chronić prywatność użytkowników.
OPER_HELP_SET_DEBUG
	Składnia: SET DEBUG {ON | OFF | poziom}
	
	Włącza lub wyłącza tryb debugowania. W tym trybie wszystkie
	dane wysyłane do serwisów i przez nie oraz wiele innych
	komunikatów zapisywane są do loga. Jeśli zostanie podany 
	numer poziomu poziom tryb debugowania jest aktywowany
	ze wskazanym poziomem.
	
	Ta opcja ma taki sam efekt jak argument linii poleceń -debug.

OPER_HELP_SET_NOEXPIRE
	Składnia: SET NOEXPIRE {ON | OFF}
	
	Włącza lub wyłącza tryb wygasania. Jeśli ta opcja
	została włączona nicki, kanały, wpisy na listach
	AKILL oraz wyjątków nie będą automatycznie wygasały.
	
	Ta opcja ma taki sam efekt jak argument linii poleceń -noexpire.

OPER_HELP_SET_SUPERADMIN
	Składnia: SET SUPERADMIN {ON | OFF}
	
	Ustawienie tej opcji nadaje wydającemu polecenie
	dodatkowe uprawnienia (np. jest właścicielem 
	wszystkich kanałów w sieci).
	
	Ta opcja powinna być używana tylko wtedy, kiedy
	jest taka potrzeba. Należy ją później wyłączyć.

OPER_HELP_SET_SQL
	Składnia: SET SQL {ON | OFF}
	
	Włącza lub wyłącza korzystanie z bazy danych SQL.
	Komenda ta pozwala na wyłączenie serwera SQL
	podczas nieprzerwanej pracy serwisów.

OPER_HELP_SET_IGNORE
	Składnia: SET IGNORE {ON | OFF}
	
	To ustawienie pozwala włączać/wyłączać system ignorowania.

OPER_HELP_SET_LIST
	Składnia: SET LIST
	
	Listuje aktualne ustawienia serwisu %S.

OPER_HELP_NOOP
	Składnia: NOOP SET serwer
	          NOOP REVOKE serwer
	
	NOOP SET usuwa wszystkie O:linie ze wskazanego
	serwera oraz killuje wszystkich operatorów, aby
	zapobiec zrehashowaniu serwera (przeładowanie pliku
	konfiguracyjnego usuwa efekt tego polecenia).
	
	NOOP REVOKE powoduje przywrócenie wszystkich 
	uprawnień na wskazanym serwerze.
	
	Uwaga: Serwisy nie sprawdzają wartości serwer.

OPER_HELP_JUPE
	Składnia: JUPE serwer [powód]
	
	To polecenie powoduje wprowadzenie przez serwisy do sieci
	sztucznego serwera, co zapobiega podłączaniu prawdziwego
	serwera o tej samej nazwie. Blokadę można zdjąć używając
	standardowego polecenia SQUIT. Jeśli zostanie podany
	powód będzie on wyświetlany w polu informacyjnym serwera,
	w przeciwnym wypadku wyświetlane będzie "Juped by <nick>".

OPER_HELP_RAW
	Składnia: RAW tekst
	
	Wysyła tekst bezpośrednio do serwera, do którego są
	podłączone serwisy. To polecenie ma bardzo ograniczone
	zastosowanie i może powodować chaos, kiedy jest używane
	w sposób nieprawidłowy. NIE UŻYWAJ TEGO POLECENIA
	jeśli nie masz pewności co robisz.

OPER_HELP_UPDATE
	Składnia: UPDATE
	
	Wymusza natychmiastowy zapis baz danych na dysku.

OPER_HELP_RELOAD
	Składnia RELOAD
	
	Wymusza ponowne załadowanie pliku konfiguracyjnego.
	Niektóre opcje wciąż wymagają restartu serwisów
	(zmiana nicków serwisów, aktywacja limitów sesji itd.).
OPER_HELP_QUIT
	Składnia: QUIT
	
	Wymusza na serwisach natychmiastowe zakończenie pracy bez
	zapisywania baz. To polecenie powinno być użyte jedynie,
	gdy zachodzi podejrzenie uszkodzenia baz, które serwisy
	przechowują w pamięci. Do normalnego zakończenia pracy
	serwisów należy użyć polecenia SHUTDOWN.

OPER_HELP_SHUTDOWN
	Składnia: SHUTDOWN
	
	Wymusza zapisanie baz danych, a następnie wyłącza serwisy.

OPER_HELP_RESTART
	Składnia: RESTART
	
	Wymusza zapisanie baz, a następnie restartuje serwisy.

OPER_HELP_CHANLIST
	Składnia: CHANLIST [{wzorzec | nick} [SECRET]]
	
	Listuje wszystkie istniejące kanały w sieci, niezależnie od
	tego czy są zarejestrowane.
	
	Podanie wzorca ogranicza listę pokazywanych kanałów.
	Podanie nicka wyświetla kanały, na których przebywa
	wskazany użytkownik. Dodanie parametru SECRET ogranicza
	listę do kanałów z flagą +s lub +p.

OPER_HELP_USERLIST
	Składnia: USERLIST [{wzorzec | kanał} [INVISIBLE]]
	
	Listuje wszystkich użytkowników w sieci, niezależnie od
	tego czy mają zarejestrowanego nicka.
	
	Podanie wzorca ogranicza listę pokazywanych użytkowników.
	(musi być w formacie nick!ident@host). Podanie kanału 
	listuje użytkowników przebywających na wskazanym kanale.
	Dodanie parametru INVISIBLE listuje tylko użytkowników z flagą +i.

OPER_HELP_MODLOAD
	Składnia: MODLOAD nazwa-pliku
	
	To polecenie ładuje wskazany moduł z katalogu modułów.

OPER_HELP_MODUNLOAD
	Składnia: MODUNLOAD nazwa-pliku
	
	To polecenie wyładuje wskazany moduł.

OPER_HELP_MODINFO
	Składnia: MODINFO nazwa-pliku
	
	To polecenie wyświetla informacje na temat załadowanego modułu

OPER_HELP_MODLIST
	Składnia: MODLIST [Core|3rd|protocol|encryption|supported|qatested]
	
	Listuje załadowane moduły.

###########################################################################
#
# BotServ help messages
#
###########################################################################
BOT_HELP_CMD_BOTLIST
	    BOTLIST        Listuje dostępne boty

BOT_HELP_CMD_ASSIGN
	    ASSIGN         Przydziela bota na kanał

BOT_HELP_CMD_SET
	    SET            Konfiguruje bota

BOT_HELP_CMD_KICK
	    KICK           Konfiguruje opcje kopania

BOT_HELP_CMD_BADWORDS
	    BADWORDS       Zarządza listą zakazanych słów

BOT_HELP_CMD_ACT
	    ACT            Wyraża przez bota akcję (komenda /me)

BOT_HELP_CMD_INFO
	    INFO           Pokazuje informacje i ustawienia BotServa
	                   dotyczące bota lub kanału

BOT_HELP_CMD_SAY
	    SAY            Wypowiada przez bota tekst na kanale

BOT_HELP_CMD_UNASSIGN
	    UNASSIGN       Usuwa bota z kanału

BOT_HELP_CMD_BOT
	    BOT            Zarządza sieciową listą botów

BOT_HELP
	%S pozwala umieścić bota na własnym kanale.
	Został stworzony dla użytkowników, którzy nie mogą
	hostować własnego bota oraz dla tych sieci które
	nie pozwalają na ich używanie. Poniższe komendy
	umożliwiają zarządzanie botem, aby ich użyć wpisz:
	%R%S komenda
	Aby uzyskać szczegółowy opis polecenia wpisz:
	%R%S HELP komenda

BOT_HELP_FOOTER
	Bot wejdzie na kanał jeśli przebywa na nim
	przynajmniej %d użytkownik(ów).

BOT_HELP_BOTLIST
	Składnia: BOTLIST
	
	Listuje dostępne w sieci boty.

BOT_HELP_ASSIGN
	Składnia: ASSIGN kanał nick
	
	Przydziela bota o wskazanym nicku na kanał.

BOT_HELP_UNASSIGN
	Składnia: UNASSIGN kanał
	
	Użycie tej komendy usuwa bota z kanału.
	Będzie można go ponownie przydzielić w każdej
	chwili, bez potrzeby ponownego konfigurowania.

BOT_HELP_INFO
	Składnia: INFO {kanał | nick}
	
	Wyświetla informacje serwisu %S o wskazanym kanale
	lub bocie. Jeśli parametrem jest nazwa kanału to
	zostaną pokazane informacje dotyczące kanału.
	Jeśli parametrem będzie nick bota to zostaną
	pokazane informacje takie jak: data utworzenia,
	ilość obsługiwanych kanałów itp.

BOT_HELP_SET
	Składnia: SET (kanał | bot) opcja parametry
	
	Umożliwia konfigurację następujących opcji bota:
	
	   DONTKICKOPS      Bot nie kopie operatorów
	   DONTKICKVOICES   Bot nie kopie osób z prawem głosu
	   GREET            Włącza wiadomość powitalną
	   FANTASY          Włącza publiczne komendy
	   SYMBIOSIS        Przejmuje zadania ChanServa
	
	Aby uzyskać więcej informacji wpisz:
	%R%S HELP SET opcja
	
	Informacja: dostęp do tej komendy jest kontrolowany
	przez poziom SET.
BOT_HELP_SET_DONTKICKOPS
	Składnia: SET kanał DONTKICKOPS {ON|OFF}
	
	Włącza lub wyłącza opcję kopania użytkowników
	posiadających status operatora nawet jeśli nie
	przysługuje im poziom dostępu NOKICK.

BOT_HELP_SET_DONTKICKVOICES
	Składnia: SET kanał DONTKICKVOICES {ON|OFF}
	
	Włącza lub wyłącza opcję kopania użytkowników
	posiadających prawo głosu nawet jeśli nie
	przysługuje im poziom dostępu NOKICK.

BOT_HELP_SET_FANTASY
	Składnia: SET kanał FANTASY {ON|OFF}
	
	Włącza lub wyłącza dostęp do publicznych poleceń
	na kanale takich jak: !op, !deop, !voice, !devoice,
	!kick, !kb, !unban, !seen (cześć komend przyjmuje
	jako parametry nicki i powody).
	
	Użytkownicy dopuszczeni do używania komend
	publicznych muszą mieć odpowiedni poziom dostępu
	do wydania danego polecenia (np. aby używac !deop
	trzeba posiadać poziom dostępu OPDEOP).

BOT_HELP_SET_GREET
	Składnia: SET kanał GREET {ON|OFF}
	
	Włącza lub wyłącza witanie podczas wejścia użytkowników
	ich własną wiadomością powitalną. Użytkownik zostanie
	powitany, jeśli będzie miał odpowiedni poziom dostępu.

BOT_HELP_SET_SYMBIOSIS
	Składnia: SET kanał SYMBIOSIS {ON|OFF}
	
	Włącza lub wyłącza opcję symbiozy na kanale.
	Gdy ten tryb jest włączony wszystkie operacje,
	które wykonywał %s (np. opowanie) będą
	wykonywane przez bota.

BOT_HELP_KICK
	Składnia: KICK kanał opcja parametry
	
	Konfiguruje opcje kopania na kanale:
	
	   BOLDS        Kopanie za używanie pogrubień
	   BADWORDS     Kopanie za używanie zakazanych słów
	   CAPS         Kopanie za pisanie WIELKIMI LITERAMI
	   COLORS       Kopanie za stosowanie kolorów
	   FLOOD        Kopanie za flood
	   REPEAT       Kopanie za wielokrotne powtarzanie
	   REVERSES     Kopanie za odwracanie kolorów
	   UNDERLINES   Kopanie za używanie podkreśleń
	
	Aby uzyskać więcej informacji wpisz:
	%R%S HELP KICK opcja

BOT_HELP_KICK_BOLDS
	Składnia: KICK kanał BOLDS {ON|OFF} [ttb]
	
	Ustawia kopanie za pogrubianie tekstu.
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_COLORS
	Składnia: KICK kanał COLORS {ON|OFF} [ttb]
	
	Ustawia kopanie za używanie kolorowego tekstu.
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_REVERSES
	Składnia: KICK kanał REVERSES {ON|OFF} [ttb]
	
	Ustawia kopanie za odwracanie kolorów tekstu (ctrl+r).
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_UNDERLINES
	Składnia: KICK kanał UNDERLINES {ON|OFF} [ttb]
	
	Ustawia kopanie za podkreślanie tekstu.
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_CAPS
	Składnia: KICK kanał CAPS {ON|OFF} [ttb [min [procent]]]
	
	Ustawia kopanie za używanie WIELKICH LITER.
	
	Bot kopie jeśli tekst zawiera przynajmniej min
	wielkich liter i stanowi przynajmniej procent
	całego tekstu w linii (w przypadku nie podania tych
	wartości przyjmowane są domyślne: 10 znaków i 25%).
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_FLOOD
	Składnia: KICK kanał FLOOD {ON|OFF} [ttb [ln [sek]]]
	
	Ustawia kopanie za flood. Włączenie tej opcji
	powoduje wykopywanie użytkowników wysyłających na
	kanał przynajmniej ln linii tekstu w ciągu sek
	sekund (w przypadku nie podania tych wartości przyjmowane
	są domyślne: 6 linii w ciągu 10 sekund).
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_REPEAT
	Składnia: KICK kanał REPEAT {ON|OFF} [ttb [liczba]]
	
	Ustawia kopanie za powtarzanie tekstu. Włączenie tej
	opcji powoduje wykopywanie użytkowników wysyłających
	na kanał przynajmniej liczba razy ten sam tekst
	(w przypadku nie podania tego parametru jego wartość
	ustalana jest domyślnie na 3).
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_KICK_BADWORDS
	Składnia: KICK kanał BADWORDS {ON|OFF} [ttb]
	
	Ustawia kopanie za używanie zakazanych słów.
	
	Aby ustalić listę zakazanych użyj polecenia BADWORDS.
	Aby uzyskać więcej informacji wpisz:
	%R%S HELP BADWORDS
	
	ttb to liczba określająca ile razy użytkownik
	zostanie wykopany zanim bot założy bana.
	Pominięcie parametru ttb wyłącza banowanie.

BOT_HELP_BADWORDS
	Składnia: BADWORDS kanał ADD słowo [SINGLE | START | END]
	          BADWORDS kanał DEL {słowo | numer-wpisu | lista}
	          BADWORDS kanał LIST [maska | lista]
	          BADWORDS kanał CLEAR
	
	Polecenie umożliwia zarządzanie listą niedozwolonych
	słów. Lista definiuje za jakie słowa użytkownicy mogą
	zostać wyrzuceni z kanału. Aby uzyskać więcej informacji
	napisz: %R%S HELP KICK BADWORDS
	
	BADWORDS ADD dodaje wskazane słowo do listy.
	Parametr SINGLE powoduje, że użytkownicy będą kopani za
	używanie wskazanego słowa w całości.
	Parametr START powoduje, że użytkownicy będą kopani za
	używanie wskazanego słowa na początku innych wyrazów.
	Parametr END powoduje, że użytkownicy będą kopani za
	używanie wskazanego słowa na końcu innych wyrazów.
	Pominięcie parametru powoduje, że użytkownicy będą
	kopani w każdym z przypadków, kiedy zostanie użyte 
	wskazane słowo.
	
	BADWORDS DEL usuwa wskazane wpisy z listy słów.
	Jako argument przyjmuje słowo, numer wpisu lub
	listę (przykład poniżej dla polecenia LIST).

	BADWORDS LIST wyświetla zawartość listy słów. Jeśli
	zostanie podana maska tylko pasujące wpisy zostaną
	pokazane. Można także użyć listy, przykład:

	   BADWORDS kanał LIST 2-5,7-9
	      Listuje wpisy od numeru 2 do 5 oraz od 7 do 9.
	
	BADWORDS CLEAR usuwa wszystkie wpisy z listy.

BOT_HELP_SAY
	Składnia: SAY kanał tekst
	
	Wypowiada przez bota podany tekst na kanale.

BOT_HELP_ACT
	Składnia: ACT kanał tekst
	
	Sprawia, że bot użyje komendy akcji (/me) przy
	wypowiadaniu podanego tekstu na kanale.

BOT_SERVADMIN_HELP_BOT
	Składnia: BOT ADD nick ident host nazwa
	          BOT CHANGE starynick nowynick [ident [host [nazwa]]]
	          BOT DEL nick
	
	Polecenie pozwala administratorom serwisów na
	tworzenie, modyfikowanie oraz kasowanie botów
	używanych przez użytkowników sieci na kanałach.
	
	BOT ADD dodaje bota o podanym nicku, idencie,
	hoście oraz realname.
	BOT CHANGE pozwala na zmianę nicka, identa,
	hosta lub realname bota bez jego kasowania.
	BOT DEL usuwa wskazanego bota.
	
	UWAGA: Jeśli stworzony zostanie bot o nicku,
	który jest już zarejestrowany, nick zostanie
	odrejestrowany. Podobnie jeśli nick stworzonego
	bota będzie używany przez innego użytkownika,
	zostanie on wtedy skillowany.

BOT_SERVADMIN_HELP_SET
	
	Opcje dostępne dla administratorów serwisów:
	
	   NOBOT     Uniemożliwia przypisanie bota do kanału
	   PRIVATE   Zastrzega przypisywanie bota tylko dla IRC
	             Operatorów

BOT_SERVADMIN_HELP_SET_NOBOT
	Składnia: SET kanał NOBOT {ON|OFF}
	
	Polecenie to pozwala określić kanał, dla którego
	nie wolno przypisywać botów. Jeśli w danej chwili
	bot jest przypisany do kanału, zostanie usunięty.

BOT_SERVADMIN_HELP_SET_PRIVATE
	Składnia: SET nick-bota PRIVATE {ON|OFF}
	
	Polecenie pozwala na ograniczenie przypisywania
	wskazanego bota dla użytkowników nie będących
	IRC operatorami.

###########################################################################
#
# HostServ messages
#
###########################################################################
HOST_EMPTY
	Lista vhostów jest pusta.

HOST_ENTRY
	#%d Nick:%s, vhost:%s (%s - %s)

HOST_IDENT_ENTRY
	#%d Nick:%s, vhost:%s@%s (%s - %s)

HOST_SET
	Vhost dla %s został zmieniony na %s.

HOST_IDENT_SET
	Vhost dla %s został zmieniony na %s@%s.

HOST_SETALL
	Vhosty dla grupy %s zostały zmienione na %s.

HOST_DELALL
	Vhosty dla grupy %s zostały usunięte.

HOST_DELALL_SYNTAX
	DELALL <nick>.

HOST_IDENT_SETALL
	Vhosty dla grupy %s zostały zmienione na %s@%s.

HOST_SET_ERROR
	Vhost musi mieć format prawidłowej maski hosta.

HOST_SET_IDENT_ERROR
	Ident vhosta musi mieć format prawidłowego identa.

HOST_SET_TOOLONG
	Błąd! Vhost jest za długi, użyj vhosta krótszego niż %d znaków.

HOST_SET_IDENTTOOLONG
	Błąd! Ident jest za długi, użyj identa krótszego niż %d znaków.

HOST_NOREG
	Nie znaleziono %s w bazie serwisu NickServ.

HOST_SET_SYNTAX
	SET <nick> <maska-hosta>.

HOST_SETALL_SYNTAX
	SETALL <nick> <maska-hosta>.

HOST_DENIED
	Brak dostępu.

HOST_NOT_ASSIGNED
	Skontaktuj się z operatorem, aby uzyskać vhosta na ten nick.

HOST_ACTIVATED
	Twój vhost %s jest teraz aktywny.

HOST_IDENT_ACTIVATED
	Twój vhost %s@%s jest teraz aktywny.

HOST_ID
	Najpierw zidentyfikuj się u serwisów.

HOST_NOT_REGED
	Aby uzyskać vhosta musisz być najpierw zarejestrowany.

HOST_DEL
	Vhost dla %s został usunięty.

HOST_DEL_SYNTAX
	DEL <nick>.
HOST_OFF
	Twój vhost został usunięty i zostało włączone normalne ukrywanie hosta.
HOST_OFF_UNREAL
	Twój vhost został usunięty. Aby włączyć standardowe ukrywanie hosta wpisz /mode %s +%s

HOST_NO_VIDENT
	Twoje IRCD nie obsługuje vIdentów, jeśli nie jest to prawda zgłoś błąd.

HOST_GROUP
	Wszystkie vhosty w grupie %s zostały zmienione na %s

HOST_IDENT_GROUP
	Wszystkie vhosty w grupie %s zostały zmienione na %s@%s

HOST_LIST_FOOTER
	Wyświetlono wszystkie wpisy (Liczba: %d)

HOST_LIST_RANGE_FOOTER
	Wyświetlono wpisy od %d do %d

HOST_LIST_KEY_FOOTER
	Wyświetlono pasujące wpisy %s (Liczba: %d)

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_HELP_CMD_ON
	    ON          Aktywuje przypisanego vhosta

HOST_HELP_CMD_OFF
	    OFF         Deaktywuje przypisanego vhosta

HOST_HELP_CMD_GROUP
	    GROUP       Synchronizuje vhosty wszystkich nicków w grupie

HOST_HELP_CMD_SET
	    SET         Zmienia vhost wskazanemu użytkownikowi

HOST_HELP_CMD_SETALL
	    SETALL      Zmienia vhosty wszystkich nicków w grupie

HOST_HELP_CMD_DEL
	    DEL         Usuwa vhost wskazanego użytkownika

HOST_HELP_CMD_DELALL
	    DELALL      Usuwa vhosty wszystkich nicków w grupie

HOST_HELP_CMD_LIST
	    LIST        Listuje vhosty

HOST_OPER_HELP
	nie jest używane.

HOST_ADMIN_HELP
	nie jest używane.

HOST_HELP
	Komendy %S:

HOST_HELP_ON
	Składnia: ON
	
	Aktywuje vhosta aktualnie przypisanego do używanego nicka.
	Po użyciu tego polecenia Twój prawdziwy adres zostanie 
	zastąpiony vhostem.

HOST_HELP_SET
	Składnia: SET <nick> <vhost>.
	
	Ustawia wskazanemu użytkownikowi vhosta.
	Jeśli Twoje IRCD obsługuje videnty to używając
	polecenia SET <nick> <ident>@<vhost>
	można zmieniać także ident.

HOST_HELP_DELALL
	Składnia: DELALL <nick>.
	
	Usuwa wszystkie vhosty grupy, do której należy wskazany nick.

HOST_HELP_SETALL
	Składnia: SETALL <nick> <vhost>.
	
	Ustawia vhosta dla wszystkich nicków w obrębie grupy.
	Jeśli IRCD obsługuje vIdenty wydanie polecenia
	SETALL <nick> <ident>@<vhost> spowoduje ustawienie
	także identów.
	
	UWAGA: to polecenie nie spowoduje zmiany vhosta
	dla nicka, który później zostanie dodany do grupy.

HOST_HELP_OFF
	Składnia: OFF
	
	Deaktywuje vhosta aktualnie przypisanego do używanego nicka.
	Po użyciu tego polecenia każdy będzie mógł sprawdzić Twój
	prawdziwy adres używając polecenia /WHOIS.

HOST_HELP_DEL
	Składnia: DEL <nick>
	
	Usuwa vhosta przypisanego do wskazanego nicka.

HOST_HELP_LIST
	Składnia: LIST [<wzorzec>|<#X-Y>]
	
	To polecenie listuje zarejestrowane vhosty operatorowi.
	Jeśli podano wzorzec tylko wpisy o pasujących nickach
	lub vhostach zostaną pokazane. Podanie np. Rob*
	spowoduje wyświetlenie wszystkich wpisów zaczynających
	się od Rob.
	
	Jeśli zostanie użyty format #X-Y to tylko wpisy należące
	do przedziału od X do Y będą pokazane. Podanie #1-3
	spowoduje wyświetlenie pierwszych 3 wpisów wpisów.
	
	Maksymalna długość listy wyświetlanej operatorowi podczas
	jednego zapytania jest określona przez ustawienie NSListMax.

HOST_HELP_GROUP
	Składnia: GROUP
	
	To polecenie pozwala ustawić vhost bieżącego nicka
	dla wszystkich nicków w grupie.

OPER_SVSNICK_UNSUPPORTED
	Komenda SVSNICK nie jest dostępna w tej sieci.

OPER_SQLINE_UNSUPPORTED
	Komenda SQLINE nie jest dostępna w tej sieci.

OPER_SVSO_UNSUPPORTED
	Komenda OLINE nie jest dostępna w tej sieci.

OPER_UMODE_UNSUPPORTED
	Komenda UMODE nie jest dostępna w tej sieci.

OPER_SUPER_ADMIN_NOT_ENABLED
	Opcja SuperAdmin nie jest włączona w pliku konfiguracyjnym.

