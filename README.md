# Loi du prix unique

Ce projet examine la conformité de la loi du prix unique pour les automobiles sur le marché européen. Il utilise des techniques d'analyse de données pour vérifier si les prix sont uniformes dans les différents pays de l'UE. Les résultats peuvent aider à comprendre la concurrence sur le marché automobile européen.
# Résultats:

## Statistiques descriptives 
![image](https://user-images.githubusercontent.com/123311478/215504610-9d5d6cbd-6947-467b-af4d-b938532a812c.png)

Le prix moyen sur la période étudié (1970-1999) d’un véhicule est de 8352,52 en monnaie
unique. Les modèles de voiture commercialisé réalisaient en moyenne 19813,24 ventes en une
année.

![image](https://user-images.githubusercontent.com/123311478/215504765-4ccf7407-7cac-478b-a0f7-275f8d8bdbdc.png)

Le prix moyen d’un véhicule de 1970 à 1993 était de 7005,66 ECU (monnaie unique) en
moyenne. Le modèle le moins cher était la Fiat 500/600 vendu sur le marché italien en 1970.
Le modèle le plus cher de notre échantillon était quant à lui la Honda legend vendu sur le
marché belge lors de l’année 1991.
Concernant les ventes, un modèle se vendait en moyenne 19782 fois sur une année avant la
mise en place du marché unique. Le modèle le plus vendu sur un marché sur une année lors de
cette période était la Fiat uno vendu sur le marché Italien en 1986.

![image](https://user-images.githubusercontent.com/123311478/215504871-55311017-55ab-471d-bdf1-6d35bc8ab020.png)

Un véhicule se vendait en moyenne 12911 ECU après la mise en place du marché unique. Le
modèle le moins cher était la Seat Marbella de 1994 qui se vendait 3927 en monnaie unique et
également sur le marché italien. Le véhicule le plus cher était l’Audi a8 du marché italien en
1998. Nous pouvons remarquer que l’étendu ainsi que la dispersion du prix exprimé en
monnaie unique est plus grande après 1993. Cela peut s’expliquer par des prix plus élevés
ainsi que par une segmentation plus forte du marché dû à la course à la différentiation



![image](https://user-images.githubusercontent.com/123311478/215502955-fa1450cd-4867-43ea-82da-4a60b2546531.png)




![image](https://user-images.githubusercontent.com/123311478/215503038-88440c59-1c19-42f6-a76e-14a1d155a079.png)

On peut voir ci-dessus les coefficients de corrélations entre les variables évoqués
précédemment et le prix. La variable la plus corrélé avec le prix est la puissance du véhicule


## Le modèle

Nous allons tout d’abord nous intéresser aux variables d’intérêt de notre modèle, c’est-à-dire
les variables qui font l’objet de notre étude. Dans notre cas ce sont les indicatrices pays avant
et après 1993. Ces variables nous permettront de déterminer si la loi unique est bien vérifiée
sur le marché automobile européen. La variable pays de référence sera comme dans l’étude de
Mertens et Ginsburgh celle de la Belgique qui est le pays le moins cher de notre échantillon.
Il y a plusieurs variables de contrôles dans notre modèle. Ces variables de contrôles nous
permettront de mieux apprécier nos variables d’intérêt et d’éviter un biais dans l’estimation de
ces dernières. Nous avons lors de notre analyse descriptive sélectionné les caractéristiques
techniques qui serviront de variables dans notre modèle. Les indicatrices de marques font ici
aussi office de variable de contrôle. Nous nous sommes inspirés de Mertens et Ginsburgh
pour la sélection de ces variables, qui se rendent compte que seulement quelques marques
réalisent des ventes conséquentes dans chaque pays. Nous avons dans notre cas retenu les
marques qui vendaient des véhicules dans tous les pays de notre échantillon. (Cf. annexe n°2).
On utilisera l’indicatrice de la marque Peugeot comme variable de référence.
Nous avons aussi utilisé dans notre modèle la variable home pour savoir si le fait que la
véhicule soit une voiture domestique à une influence sur le pays. Nous utilisons également
l’indicatrice d’année pour avoir l’effet du temps sur le prix.
Nous allons effectuer une régression linéaire sur notre modèle par la méthode des moindres
carrées ordinaire. Voici les résultats de cette modélisation :

![image](https://user-images.githubusercontent.com/123311478/215503288-0dd23a30-5bf5-4e77-8fa7-dc221366799a.png)

![image](https://user-images.githubusercontent.com/123311478/215503477-3138f9ea-e012-407d-a94a-a740c5a12e25.png)

![image](https://user-images.githubusercontent.com/123311478/215503548-c6e106a7-1d51-4150-8f17-73f290e1a42b.png)

- Le modèle

Nous avons donc ici un modèle qui comporte 11547 observations. Le R carré de notre modèle
est de 0.7624 c’est-à-dire que 76.24% de la variance du log du prix en monnaie unique est
expliqué par notre modèle ce qui est élevé. De plus notre modèle est significatif au seuil de
1% toute chose étant égale par ailleurs aux vues de la p-value de la statistique de Fisher qui
est inférieur à 0.001.

- Les caractéristiques techniques

Nos variables de caractéristiques techniques sont tous significatives au seuil de 1%. Les
variables de puissance, du nombre de porte, et de place ont un effet positif sur le prix. On
estime que l’augmentation du nombre de place de 1 entraine une augmentation du prix en
monnaie unique de 13,56% toutes chose étant égales par ailleurs (TCEPA). La consommation
de la voiture a quant à elle un effet négatif sur le prix. On estime que plus la voiture
consomme de carburant, moins la voiture est chère TCEPA.

L’indicatrice home
Cette variable indique si le véhicule vendu sur le marché est une voiture domestique. Il parait
logique que si la voiture est produite dans le même pays cela entrainera un cout plus faible et
donc un prix moins élevé. Dans notre modèle notre variable n’est pas significative, elle ne
joue pas de rôle dans le prix. A l’instar de Mertens et Ginsburgh, on peut penser que les
producteurs nationaux n’ont pas une capacité à fixer des prix plus élevé ou plus faible sur leur
marché domestique.

Variable année
L’indicatrice concernant l’année de vente du véhicule est significative au seuil de 1% dans
notre modèle. On estime que le fait que la voiture soit vendue après 1993 entraine une
augmentation de son prix de 36,05% TCEPA.

Les indicatrices de marques
La marque de référence dans notre modèle est Peugeot. Daewoo Nissan et Mazda sont les
seules marques de notre modèle qui ne sont pas significatives au seuil de 10%.
Peugeot apparait comme la marque française qui entraine une augmentation la plus forte du
prix, en effet au seuil de 1%, on estime que la marque Renault est moins chère que Peugeot de
4,02% TCEPA et Citroën moins cher de 12.48% en prix exprimé en monnaie unique TCEPA.
On peut voir que les marques Allemandes bénéficient d’une meilleure image de marque que
les marques françaises. Au seuil de 1%, les marques Mercedes, BMW, Audi sont
respectivement plus cher de 31.52%, 9.02% et 7.08% que la marque Peugeot TCEPA. Opel
est plus cher de 4.15% TCEPA au seuil de 5%.
Les marques italiennes sont quant à elle globalement moins cher que Peugeot. On rappelle
que le modèle le moins cher vendu sur tout notre échantillon était une Fiat 500/600. Au seuil
de 1% on estime que Fiat 9.66% moins cher Peugeot TCEPA et Alfa Romeo 16,88% TCEPA.
Au seuil de 1% on estime qu’une voiture de la marque Ford sera 6.56% plus cher qu’une
voiture de la marque Peugeot TCEPA. En prix exprimé en monnaie unique on estime que
Toyota est moins cher de 5.96% comparé à Peugeot TCEPA au seuil de 1%.
Ces indicatrices, en plus de servir de variables de contrôles sont très intéressantes à analyser.
Ces estimations sont obtenues en fixant les autres variables qui expliquent le prix en monnaie
unique dont les caractéristiques techniques. Cela nous permet d’observer la différence de prix
selon les marques même si les véhicules ont des caractéristiques techniques similaires. La
marque a donc bien un effet sur le prix indépendant du reste dû au phénomène de
différenciation et à la renommée de la marque.

Les indicatrices pays
Les indicatrices pays jouent le rôle de variable d’intérêt dans notre modèle d’où leurs
importances. Elles permettront de voir si l’effet de l’application du marché unique dans
l’union européenne et ainsi voir si la loi unique est vérifiée. Nous avons des indicatrices qui
correspondent au pays de destination du véhicule ainsi que la période, c’est-à-dire avant ou après 1993.
Nous avons comme dans le modèle de Mertens et Ginsburgh choisi la Belgique
comme variable de référence pour nos 2 périodes.
Avant 1993
Nos indicatrices de pays sont tous significatives au seuil de 5% excepté l’indicatrice
concernant l’Allemagne.
Au seuil de 1% j’estime de qu’un véhicule vendu sur le marché français est plus cher de
8,85% en prix exprimé en monnaie unique comparé au marché belge avant 93 TCEPA.
On estime qu’une voiture au Royaume-Uni est vendu à des prix supérieurs de 15.45%
comparé à la Belgique au seuil de 1% TCEPA.
Au seuil de 5% on estime qu’un véhicule vendu en Italie est plus cher de 2.42% en
comparaison d’un véhicule vendu en Belgique TCEPA.
On remarque dès les effets des indicatrices pays sur le prix sont significatives. Les autres
variables expliquant le prix étant fixé, on peut conclure qu’ils existent bien un écart de prix
entre les pays qui n’est pas expliqué par des caractéristiques techniques ou par la marque. On
peut donc dire que la loi unique n’est pas vérifiée sur le marché automobile européen avant
1993
Après 1993
Nous allons maintenant vérifier si l’application du marché unique a eu effet sur les écarts de
prix. On va pouvoir comparer les prix sur les 2 périodes avant et après son implémentation.
Toutes nos indicatrices de pays après la mise place du marché unique en 1993 sont
significative au seuil de 5%. Seul l’indicatrice concernant le pays de destination de l’Italie
n’est pas significative dans notre modèle.
Au seuil de 1% on estime que lorsque le pays de destination est la France après 1993 le prix
du véhicule est supérieur de 3.69% comparé au véhicule lorsque le pays de destination est la
Belgique TCEPA.
Au seuil de 1% on estime qu’une voiture au Royaume-Uni est vendu à des prix supérieurs de
12.91% en comparaison d’un véhicule vendu en Belgique TCEPA.
On estime qu’un véhicule vendu en Allemagne est plus cher de 7.05% en comparaison d’un
véhicule vendu en Belgique après 1993 au seuil de 5% TCEPA.
Nous avons effectué un test Fisher pour tester l’égalité des coefficients (voir annexe3). Au
seuil de 1%, nous rejetons H0, alors les coefficients sont indépendants. Nous pouvons donc
comparer nos coefficients estimés.
Nous constatons ici une baisse des écarts de prix en comparaison de nos données avant 1993.
La mise en place du marché unique a bien eu un effet sur la dispersion des prix sur le marché.
Mais nos indicatrices pays sont globalement significatives, il y a donc bien un écart de prix
qui n’est pas lié à la réputation de la marque, à la qualité ou aux caractéristiques techniques.
La loi du prix unique n’est donc pas validée sur le marché automobile européen.

## Test statistique
Détection de l’hétéroscédasticité
Nous avons procédé à un test de Breusch-Pagan et de White pour vérifier l’hypothèse
d’homoscédasticité des perturbations. Nous constatons à la vue des résultats de ces tests (voir
annexe n°4), qu’au seuil 1%, nous rejetons l’hypothèse d’homoscédasticité dans notre
modèle.
Méthode de White
Il y a donc une présence d’hétéroscédasticité dans les résidus de notre modèle. Nos
estimations peuvent donc être incorrecte ainsi que la significativité de nos coefficients d’où
l’utilisation de la méthode de White afin de la corriger (voir annexe n°5).

## Discussion des résultats 
Concernant nos résultats, nous concluons comme les précédents travaux sur le sujet que la loi
unique n’est pas vérifiée sur le marché automobile européen.
On remarque tout d’abord que comme Ginsgurgh et Vanhamme une augmentation du prix de
l’automobile au cours du temps. Dans notre modèle un véhicule mise en circulation après la
mise en place du marché unique à un prix supérieur. Nous n’avons cependant pas modélisé
l’évolution du prix par année.
Nos avons pu voir dans notre modèle qu’une convergence des prix, certes faible à lieu. Les
écarts de prix entre les marchés après la mise en place du marché unique ont ainsi diminué.
Nous ne pouvons cependant pas conclure sur cette convergence des prix. D’autres
économistes ont abordé le sujet comme Guillaume Gaulier et de Séverine Haller qui
s’intéressent à la convergence des prix depuis 1993. Ils ont utilisé des concepts de
convergence nouveau. Il conclue comme Goldberg et Verboven que la dispersion des prix est
fortement influencée par la fluctuation des taux de change. Selon le phénomène de
convergence observé n'est pas une convergence des prix. Ils ont comme nous pas pu prendre
l’impact de l’Euro dans leur travail. Gil- Pareja et Sosvilla-Rivero ont eux conclus qu’il y
avait bien une convergence des prix entre 1995 et 2005 mais qu’elle varier selon les périodes
et les pays.
La sélection de notre variable explicative se discute. Nous avons décidé d’exprimer notre
modèle en fonction du prix exprimé en monnaie commune comme pour le modèle de Mertens
et Ginsburgh ou encore par Vanhamme et Ginsburgh. Nous n’avons pas essayé de prendre en
compte l’effet des taxes dans notre modèle contrairement à eux. 

L’indicatrice de la variable des variables domestique a aussi été introduite mais elle n’est pas
significative dans notre modèle. Mertens et Ginsburgh montre qu’il ne semble pas avoir
d’écart de prix significative entre les véhicules importés et domestique. Les producteurs
nationaux ont alors peu de pouvoir sur les prix. Goldberg et Verboven (1999) ont cependant
montré qu’il existait un fort biais pour les marques domestiques dans certains pays.
Une régression hédonique à été réalisé dans notre étude afin de supprimer les différences de
caractéristiques techniques entre nos véhicules afin de pouvoir mesurer l’écart de prix. Nous
avons aussi étudié l’effet des marques et ainsi montrer qu’il y a bien un écart de prix dû à la
différenciation dans ce secteur à forte segmentation.
Cela nous à permis de constater qu’il y a bien des écarts de prix entre les pays présent dans
notre échantillon grâce aux indicatrices pays que nous avons créé. Cette différence est
surement dû à la stratégie de Princing to Market qu’applique les producteurs.
