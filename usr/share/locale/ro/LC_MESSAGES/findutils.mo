??    -      ?  =   ?      ?  ?   ?     j  $   ?     ?     ?     ?  !   ?       7   %  ?   ]  q   ?     a     x     ?     ?     ?     ?  !   ?     ?     ?          '     E  P   X  )   ?     ?     ?     	  )   "  %   L      r  ?   ?  	  b	  6   l
     ?
  )  ?
     ?     ?  W   ?  +   O  q   {  >   ?  "   ,  -   O  ?  }  ?   G     ?  $   ?          +     G  %   X     ~  >   ?  ?   ?  ?   f     ?          &     :     M     R  /   X     ?  %   ?     ?  !   ?       I     '   ^  "   ?     ?     ?  +   ?  "        )  ?   G      C   :     ~  2  ?     ?  
   ?  ?   ?  +   c  ?   ?  I     &   c  2   ?        %      "                                        *                    #          ,   +                             !   )          (                  
          '       $      	         &      -                  
default path is the current directory; default expression is -print
expression may consist of: operators, options, tests, and actions:
 %s terminated by signal %d %s: exited with status 255; aborting %s: stopped by signal %d %s: terminated by signal %d < %s ... %s > ?  Database %s is in the %s format.
 Features enabled:  Only one instance of {} is supported with -exec%s ... + The environment variable FIND_BLOCK_SIZE is not supported, the only thing that affects the block size is the POSIXLY_CORRECT environment variable You may not use {} within the utility name for -execdir and -okdir, because this is a potential security problem. argument line too long argument list too long cannot fork command too long days double environment is too large for exec error waiting for %s error waiting for child process invalid -size type `%c' invalid argument `%s' to `%s' invalid expression invalid expression; I was expecting to find a ')' somewhere but did not see one. invalid expression; you have too many ')' invalid null argument to -size invalid predicate `%s' missing argument to `%s' oops -- invalid default insertion of and! oops -- invalid expression type (%d)! oops -- invalid expression type! operators (decreasing precedence; -and is implicit where no others are given):
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
      EXPR1 -o EXPR2   EXPR1 -or EXPR2   EXPR1 , EXPR2
 positional options (always true): -daystart -follow -regextype

normal options (always true, specified before other expressions):
      -depth --help -maxdepth LEVELS -mindepth LEVELS -mount -noleaf
      --version -xdev -ignore_readdir_race -noignore_readdir_race
 sanity check of the fnmatch() library function failed. single tests (N can be +N or -N or N): -amin N -anewer FILE -atime N -cmin N
      -cnewer FILE -ctime N -empty -false -fstype TYPE -gid N -group NAME
      -ilname PATTERN -iname PATTERN -inum N -iwholename PATTERN -iregex PATTERN
      -links N -lname PATTERN -mmin N -mtime N -name PATTERN -newer FILE unexpected extra predicate unknown unmatched %s quote; by default quotes are special to xargs unless you use the -0 option warning: not following the symbolic link %s warning: the -d option is deprecated; please use -depth instead, because the latter is a POSIX-compliant feature. warning: the locate database can only be read from stdin once. warning: unrecognized escape `\%c' warning: unrecognized format directive `%%%c' Project-Id-Version: findutils 4.2.24
Report-Msgid-Bugs-To: bug-findutils@gnu.org
PO-Revision-Date: 2005-08-01 12:00-0500
Last-Translator: Laurentiu Buzdugan <lbuz@rolix.org>
Language-Team: Romanian <translation-team-ro@lists.sourceforge.net>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=2; plural=(n != 1);
 
calea implicit? este directorul curent; expresia implicit? este -print
expresia poate fi compus? din: operatori op?iuni, teste ?i ac?iuni:
 %s terminat de semnal %d %s: a terminat cu starea 255; renun? %s: oprit de semnalul %d %s: terminat de semnalul %d < %s ... %s > ?  Baza de date %s este ?n formatul %s.
 Capabilit??i activate:  Numai o singur? instan?? de {} este suportat? cu -exec%s ... + Variabila de mediu FIND_BLOCK_SIZE nu este suportat?, singurul lucru care afecteaz? dimensiunea blocului esre variabila de mediu POSIXLY_CORRECT Nu pute?i folosi {} ?n cadrul numelui utilitarului pentru -execdir ?i -okdir, pentru c? aceasta este o poten?ial? problem? de securitate. linie argumente prea lung? list? argumente prea lung? nu pot executa fork comand? prea lung? zile dublu mediul (environment) este prea larg pentru exec eroare a?tept?nd pentru %s eroare a?tept?nd pentru procese copil tip -size invalid `%c' argument invalid `%s' pentru `%s' expresie invalid? expresie invalid?; a?teptam s? g?sesc o ')' pe undeva, dar nu am g?sit-o. expresie invalid?; ave?i prea multe ')' argument null invalid pentru -size predicat invalid `%s' argument lips? pentru `%s' hopa -- inserare implicit? invalid? de and! hopa -- tip expresie invalid (%d)! hopa -- tip expresie invalid! operatori (preceden?a ?n sc?dere; -and este implicit c?nd al?ii nu sunt preciza?i):
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
      EXPR1 -o EXPR2   EXPR1 -or EXPR2   EXPR1 , EXPR2
 op?iuni pozi?ionale (?ntotdeauna adev?rat): -daystart -follow -regextype

op?iuni normale (?ntotdeauna adev?rat, specificate ?naintea altor expresii):
      -depth --help -maxdepth LEVELS -mindepth LEVELS -mount -noleaf
      --version -xdev -ignore_readdir_race -noignore_readdir_race
 verificarea corectitudinii func?ie de bibliotec? fnmatch() a e?uat. singur teste (N poate fi +N sau -N sau N): -amin N -anewer FI?IER -atime N -cmin N
      -cnewer FI?IER -ctime N -empty -false -fstype TIP -gid N -group NUME
      -ilname PATTERN -iname PATTERN -inum N -iwholename PATTERN -iregex PATTERN
      -links N -lname PATTERN -mmin N -mtime N -name PATTERN -newer FI?IER predicat adi?ional nea?teptat necunoscut ghilimele %s f?r? pereche; ?n mod implicit ghilimelele sunt speciale pentru xargs, ?n afar? de cazul ?n care folosi?i op?iunea -0 avertisment: nu urmez leg?tura simbolic? %s avertisment: op?iunea -d nu mai este valid?; v? rug?m folosi?i -depth ?n locul lui, pentru c? aceasta din urm? respect? standardul POSIX. avertisment: baza de date locate poate fi doar citit? de la stdin o dat?. avertisment: escape nerecunoscut `\%c' avertisment: directiv? format nerecunoscut? `%%%c' 