libname in "C:\Users\Maserati\Desktop\Examen SAS Maserati";

/*importation de la table de données*/
proc import out = cars 
Datafile= "C:\Users\maserati\Desktop\MEMOIRE M1\cars.xlsx"
Dbms=xlsx replace;
run;


/*stats descriptives*/
 proc summary data=in.cars print; /*tous les annees*/
   var eurpr qu pop ;
   ods output Summary=proc_summary;
run;
data before_93 ; set in.cars ; /*table des donnees avant la mise en place du marché unique*/
if ye <= 93 ;
run;
data after_93 ; set in.cars ; /*table des donnees après la mise en place du marché unique*/
if ye > 93 ;
run;
proc summary data=before_93 print; /*stats descriptives sur les prix et ventes et population avant 93*/
   var eurpr qu pop ;
   ods output Summary=proc_summary;
run;
proc summary data=after_93 print;  /*stats descriptives sur les prix et ventes et population après 93*/
   var eurpr qu pop ;
   ods output Summary=proc_summary;
run;

/*Proc univariate data=before_93 noprint;
Histogram eurpr ;
run;
Proc univariate data=after_93 noprint ;
Histogram eurpr ;
run; */

/*proc freq data = in.cars ; tables he do hp sp eurpr ma brand; run; */
proc means data = in.cars nmiss; run; 

data cars ; set in.cars ; 
if sp=. then delete ; 
if do=. then delete ; 
run; 
data cars; set cars; keep code eurpr ye ma brand he sp li do hp wi le; run;

/*calcul de correlation pour choisir les variales explicatives à garder pour éviter le problème de multicolinéarité*/ 

proc corr data = cars ; var he li do hp sp wi le ye ma ; run; 

/*creer une indicatrice pour les annees avant et après 93*/
data cars ; set in.cars ; 
before_ye93 = (ye<=93); label before_ye93='1 si avant la mise en place du marché unique' ;
after_ye93 = (ye>93);   label after_ye93='1 si après la mise en place du marché unique' ;
run;


/*creer les dummies pays*/
data cars ; set cars; 
if ma= 1 then pays = "Belgium";
if ma= 2 then pays = "France";
if ma= 3 then pays = "Germany";
if ma= 4 then pays = "Italy";
if ma= 5 then pays = "UK" ;
run; 
 
data cars ; set cars ; 
if pays = "France" then dum_FR= 1 ; else dum_FR=0; 	   label dum_FR='vaut 1 si FR est le pays de destination';
if pays = "Belgium" then dum_BEL= 1 ; else dum_BEL=0;  label dum_BEL='vaut 1 si BEL est le pays de destination';
if pays = "Italy" then dum_IT= 1 ; else dum_IT=0;      label dum_IT='vaut 1 si IT est le pays de destination';
if pays = "UK" then dum_UK= 1 ; else dum_UK=0;		   label dum_UK='vaut 1 si UK est le pays de destination';
if pays = "Germany" then dum_DEU= 1 ; else dum_DEU=0;  label dum_DEU='vaut 1 si DEU est le pays de destination';
run;

 
/*Création des dummies pour la variable brand et ceci en introduisant le GLM dans la 
proc logiqtique. cette méthode  permet de creer des indicatrices rapidement*/
data cars ; set cars ; rename brand=dum_ ; run; 
proc logistic
     data = cars
          noprint
          outdesign = dum_brand;
     class dum_ / param = glm;
     model ma = dum_;
run;
/*maintenant on annule la proc logiqtique en supprimant l'intercept et la variable 'ma' que nous avons 
utilisé accessoirement. alors nous gardons que les indicatrices de la variable brand et 
on la fusionne avec notre table initiale*/
data cars1;
     merge cars
           dum_brand (drop = Intercept ma);
run;

/*vu que nous nous intéressons au marché automobile européen et nous avons dans notre table que les
pays : france , allemagne, italie , UK  et Belgique donc nous allons garder que les marques appartenantes 
à l'un de ces pays*/
data temp ; set cars1; 
keep dum_BMW dum_VW dum_audi dum_mercedes dum_Opel dum_citroen dum_peugeot dum_renault  
     dum_talbot dum_alfa_romeo dum_fiat dum_innocenti dum_lancia dum_simca dum_rover ;
run; 

/*la table final avec tous les variables servant à faire la régression */
data cars_final ; merge cars temp ; run ; 


data cars_final ; set cars_final ; Leurpr=log(eurpr) ; rename sp=max_speed; run; 


/*régression linéaire*/
proc reg data = cars_final; 
model Leurpr = he do hp /*li*/ max_speed dum_BMW dum_VW dum_audi dum_mercedes dum_Opel dum_citroen dum_peugeot 
			dum_simca dum_talbot dum_alfa_romeo dum_fiat dum_innocenti dum_lancia dum_rover 
			dum_FR dum_IT dum_BEL dum_UK ; 
quit;
run; 
after_ye93

/*tests*/








 	
