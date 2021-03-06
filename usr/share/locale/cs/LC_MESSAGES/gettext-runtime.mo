??            )   ?      ?  B   ?  9   ?  M        \  (   x     ?  e   ?  :       O  ?  i  ?  H     ?     ?  1   	  &   3	     Z	     i	  "   ~	  9   ?	  I   ?	  ?   %
     ?
     ?
     ?
     ?
               1  ?  =  B     B   b  T   ?  &   ?  /   !     Q  ^   ^  8   ?    ?  ?    ?  
     ?     ?  *   ?  7        J     Y  .   u  V   ?  k   ?  ?   g     )     5     Q     e     v     ?     ?     	          
                                                                                                                             -V, --version               output version information and exit
   -h, --help                  display this help and exit
   -v, --variables             output the variables occurring in SHELL-FORMAT
 %s: invalid option -- '%c'
 %s: option requires an argument -- '%c'
 Bruno Haible Display native language translation of a textual message whose grammatical
form depends on a number.
 Display native language translation of a textual message.
 If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
Standard search directory: %s
 If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
When used with the -s option the program behaves like the 'echo' command.
But it does not simply copy its arguments to stdout.  Instead those messages
found in the selected catalog are translated.
Standard search directory: %s
 In normal operation mode, standard input is copied to standard output,
with references to environment variables of the form $VARIABLE or ${VARIABLE}
being replaced with the corresponding values.  If a SHELL-FORMAT is given,
only those environment variables that are referenced in SHELL-FORMAT are
substituted; otherwise all environment variables references occurring in
standard input are substituted.
 Informative output:
 Operation mode:
 Substitutes the values of environment variables.
 Try '%s --help' for more information.
 Ulrich Drepper Unknown system error Usage: %s [OPTION] [SHELL-FORMAT]
 Usage: %s [OPTION] [TEXTDOMAIN] MSGID MSGID-PLURAL COUNT
 Usage: %s [OPTION] [[TEXTDOMAIN] MSGID]
or:    %s [OPTION] -s [MSGID]...
 When --variables is used, standard input is ignored, and the output consists
of the environment variables that are referenced in SHELL-FORMAT, one per line.
 Written by %s.
 error while reading "%s" memory exhausted missing arguments standard input too many arguments write error Project-Id-Version: gettext-runtime 0.19.4.73
Report-Msgid-Bugs-To: bug-gettext@gnu.org
PO-Revision-Date: 2015-06-26 08:34+0200
Last-Translator: Marek Černocký <marek@manet.cz>
Language-Team: Czech <translation-team-cs@lists.sourceforge.net>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
   -V, --version               vypsat informace o verzi a skončit
   -h, --help                  zobrazit tuto nápovědu a skončit
   -v, --variables             vypsat proměnné vyskytující se ve FORMÁTU_SHELLU
 %s: neznámý přepínač -- „%c“
 %s: přepínač vyžaduje argument -- „%c“
 Bruno Haible Zobrazí v národním jazyce překlad textové zprávy, která gramaticky závisí na počtu.
 Zobrazí v národním jazyce překlad textové zprávy.
 Není-li zadán argument TEXTOVÁ_DOMÉNA, je doména určena z proměnné
prostředí TEXTDOMAIN. Jestliže katalog se zprávami není nalezen
v předpokládané složce, hledán se ve složce, zadané v proměnné prostředí
TEXTDOMAINDIR.
Standardní prohledávaná složka: %s
 Není-li zadán argument TEXTOVÁ_DOMÉNA, je doména určena z proměnné
prostředí TEXTDOMAIN. Jestliže katalog se zprávami není nalezen
v předpokládané složce, hledán se ve složce, zadané v proměnné prostředí
TEXTDOMAINDIR.
Je-li použit argument -s, chová se program podobně jako příkaz „echo“. Ale
namísto toto, aby pouze zkopíroval svoje argumenty na standardní výstup,
zprávy nalezené ve vybraném katalogu napřed přeloží. 
Standardní prohledávaná složka: %s
 V normálním operačním režimu je standardní vstup kopírován na standardní
výstup s tím, že odkazy na proměnné prostředí ve formě $PROMĚNNÁ nebo
${PROMĚNNÁ} jsou nahrazeny odpovídajícími hodnotami. Pokud je zadán
FORMÁT-SHELLU, jsou dosazovány jen ty proměnné, na které odkazuje;
v opačném případě jsou dosazovány všechny odkazy na proměnné prostředí,
které se objeví na standardním vstupu.
 Informační výstup:
 Operační režim:
 Dosadí hodnoty proměnných prostředí.
 Více informací získáte příkazem „%s --help“.
 Ulrich Drepper Neznámá systémová chyba Použití: %s [PŘEPÍNAČE] [FORMÁT_SHELLU]
 Použití: %s [PŘEPÍNAČE] [TEXTOVÁ_DOMÉNA] ID_ZPRÁVY ID_PLURÁLU_ZPRÁVY POČET
 Použití: %s [PŘEPÍNAČE] [[TEXTOVÁ_DOMÉNA] ID_ZPRÁVY]
nebo:    %s [PŘEPÍNAČE] -s [ID_ZPRÁVY]…
 Když je použit přepínač --variables, je standardní vstup ignorován a výpis
sestává z proměnných prostředí, které jsou odkazovány z FORMÁTU-SHELLU, jedna
proměnná co řádek.
 Napsal %s.
 chyba při čtení „%s“ paměť vyčerpána chybí argumenty standardní vstup příliš mnoho argumentů chyba při zápisu 