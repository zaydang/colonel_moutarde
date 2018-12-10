require 'faker'

@game_list = [
  [ "Monopoly", "Le Monopoly est un jeu de société américain édité par Hasbro. Le but du jeu consiste à ruiner ses concurrents par des opérations immobilières. Il symbolise les aspects apparents et spectaculaires du capitalisme, les fortunes se faisant et se défaisant au fil des coups de dés. Ce jeu de société est mondialement connu, et il en existe de multiples versions."],
  [ "Cluedo", "En début de partie on classe les différentes cartes indices par type (suspects / armes / lieux) et on en tire une de chaque au hasard que l'on met dans l'enveloppe prévue sans les regarder : il s'agit de la solution de l'énigme de cette partie. Chaque joueur choisit ensuite un pion. Les cartes indices restantes sont alors mélangées et distribuées faces cachées équitablement à tous les joueurs. Ces cartes servent alors d'alibi : si un joueur possède cette carte c'est qu'elle n'est pas parmi les trois cartes mises à part et donc que l'indice correspondant n'est pas la clef de l'énigme. C'est donc une carte qui a son alibi et qui n'est pas suspecte."],
  [ "Scrabble", "Le Scrabble est un jeu de société et un jeu de lettres où l'objectif est de cumuler des points, sur la base de tirages aléatoires de lettres, en créant des mots sur une grille carrée, dont certaines cases sont primées."],
  [ "Trivial Pursuit", "Le plateau consiste en cases arrangées sous la forme d'une roue, avec six « rayons ». Les cases sont colorées dans une distribution systématique avec une case dédiée à chacune des six couleurs au centre, où les joueurs commencent, sur le début du rayon. À son tour, le joueur fait rouler un dé (ordinaire à six faces) et déplace son pion dans la direction de son choix, du nombre de cases indiqué par le dé. Quand le pion atteint la case de destination, un autre participant tire une carte du talon de cette couleur et pose la question qui y est indiquée. Si le joueur répond correctement, il peut jouer à nouveau et si la case est une spéciale à la base d'un rayon il peut prendre une part du camembert (de la roue) de la couleur s'il ne l'a pas déjà."],
  [ "Dixit", "Le jeu est composé de 84 cartes illustrées et sans texte, toutes strictement différentes. L'extension Dixit 2 permet de jouer avec un total de 168 cartes. À noter qu'il existe des règles différentes pour la Dixy party (minimum 6 joueurs) ainsi que pour le jeu en équipe (3, 4, 5 ou 6). On distribue six (sept à 3 joueurs) cartes à chaque joueur."],
  [ "Jungle Speed", "Le jeu de base se compose de 80 cartes. Il contient plusieurs cartes de symboles différentes répartis en 4 couleurs : jaune, orange, violet et vert, ainsi que des cartes spéciales. Mis à part ces dernières, chaque carte est unique. Il n'existe donc pas deux cartes du même symbole avec la même couleur. Le but du jeu est de se débarrasser de toutes ses cartes le plus vite possible2."],
  [ "Qui est-ce ?", "Une partie de Qui-est-ce ? se joue à deux joueurs. Chaque joueur dispose d'un plateau sur lequel sont représentés les portraits de 24 personnages. Au début de la partie, chaque joueur choisit secrètement l'un de ces personnages. Le but du jeu est alors de deviner le personnage choisi par l'adversaire, en posant des questions sur son apparence physique."],
  [ "Les Loups-Garous", "Thiercelieux semble être un village normal, mais chaque nuit certains villageois se transforment en loups-garous pour dévorer d'autres villageois. Chaque matin venu, les villageois découvrent qui manque à l'appel et se réunissent pour tenter de démasquer les loups-garous se cachant parmi eux.
Le matériel de jeu est formé uniquement de cartes carrées représentant chacune une identité au recto et une même illustration pour toutes les cartes au verso."],
  [ "Destin", "Une partie se joue de 2 à 10 joueurs. Chacun reçoit une voiture en plastique qui le représente avec sa famille au long de la partie. À chaque tour, on lance une roue composée des nombres de 1 à 10 qui fait office de dé et indique le déplacement de la voiture. Au fil du jeu, le joueur se voit faire face à tout un tas d'événements (naissances, dettes, etc.) qui vont rythmer sa vie. Le plateau de jeu est atypique, en effet il n'est pas plat, il contient des pièces plastiques en 3D dont une petite montagne (représentant l'Everest) et des maisons."],
  [ "Risk", "Le jeu consiste à allouer des armées dans les territoires contrôlés puis attaquer les zones voisines pour les conquérir. C’était le premier jeu populaire où le mouvement n’était pas déterminé par un jet de dé. La résolution des combats, par exemple, ne demande aucun calcul particulier, il est décidé en jetant un, deux ou trois dés par joueur participant au combat. Ses deux limites sont la place prépondérante du hasard et l'absence de plusieurs niveaux de jeu, c'est-à-dire l'absence de mécanismes parallèles qui permettent de contrebalancer le déséquilibre des forces sur la carte. Un participant est éliminé s’il ne lui reste plus de territoires."],
  [ "Docteur Maboul", "Le jeu se présente sous la forme d'une table d'opération, avec un patient percé de cavités occupées par des éléments en plastique blanc avec des noms humoristiques. Le nez du patient est représenté sous forme d'une ampoule rouge qui s'allume en cas d'échec. Le but du jeu est d'amasser le plus d'argent en effectuant des opérations chirurgicales."],
  [ "Twister", "Le plus jeune joueur fait tourner la girouette. Celle-ci va lui indiquer un pied ou une main (gauche ou droite) à mettre sur une pastille de couleur. Il s'exécute, et c'est au tour du joueur suivant. La difficulté croît au fil du jeu, en effet, à chaque tour, les ordres de la girouette s'ajoutent, et les joueurs sont souvent dans une position inconfortable. Les joueurs sont éliminés s'ils tombent au sol. Toucher le sol avec une autre partie du corps que les mains ou les pieds est considéré comme tomber. On ne peut pas, par exemple, poser un genou à terre. Le dernier joueur qui tombe, ou le dernier qui reste sur le tapis est désigné vainqueur."],
  [ "La bonne Paye", "Le but du jeu est d'être le joueur ayant accumulé le plus d'argent (ou que les autres n'en aient plus), à l'aide de différentes méthodes :
    1) En avançant dans le mois, vous verrez que votre salaire a ses limites. Jouez autant que vous voulez mais prenez garde, car la chance peut tourner à tout moment.
    2) D'énormes factures peuvent vous tomber dessus ou vous pourriez fêter un gros gain à la loterie et tout cela, la même semaine ! Touchez votre paye à la fin de chaque mois et ne la laissez pas vous glisser entre les doigts !
    3)Empruntez, investissez dans de bonnes affaires, faites le nécessaire pour gérer votre argent.
    4) Le gagnant est le joueur qui aura le plus d'argent (ou le moins de dettes) à la fin de la partie."],
  [ "Jenga", "Le Jenga est un jeu de société d'adresse et de réflexion dans lequel les joueurs retirent progressivement les pièces d'une tour pour les replacer à son sommet jusqu'à ce qu'elle finisse par perdre l'équilibre. Son nom vient du verbe swahili « kujenga », signifiant « construire » : « jenga! » en est l'impératif. L'âge minimum conseillé est de 6 ans. Ce jeu demande beaucoup d'attention et de la dextérité : il faut faire attention à l'équilibre de la tour. Le gagnant est le dernier joueur à avoir déplacé une pièce de bois sans faire tomber la tour. Le placement des pièces sur la tour se fait perpendiculairement aux pièces situées à l'étage inférieur. Chaque étage est composé de 3 pièces. "],
  [ "Montana", "Au beau milieu du XIXe siecle, les premiers campements permanents font leur apparition dans le Montana. Les montagnes regorgent de métaux précieux et la demande de main d’oeuvre agricole est forte. Le nombre de campements grandit rapidement et la production de ressources doit suivre.
Dans le jeu Montana, une partie se joue en plusieurs tours, jusqu’à ce qu’au moins un des joueurs ait construit tous ses campements. À votre tour, vous pouvez effectuer l’une des 3 actions : recruter des ouvriers, récolter des ressources, ou construire un campement.
Rassemblez les ouvriers et faites-les travailler à la mine, à la carrière, dans les champs ou au potager. Envoyez-les chercher de l’argent à la banque et faire du commerce en ville. Livrez des ressources dans une région pour y construire des camps. Positionnez astucieusement vos baraquements pour prendre un avantage, et gardez un oeil sur les autres joueurs qui chercheront à vous couper l’herbe sous le pied."],
  [ "Le Ciel Interdit", "Travaillez en équipe pour explorer une plate-forme flottant au milieu d’un orage violent. Ce défi est un numéro d’équilibriste qui mettra à l’épreuve la coopération et le sang-froid de votre équipe. Seule issue possible : connecter un circuit de câbles pour faire décoller une fusée avant d’être électrocutés ou projetés dans le vide !
Dans le jeu Le Ciel Interdit, votre machine volante est sur le point de se poser sur une station secrète qui flotte à 2000 mètres au-dessus du sol. Pendant la descente, vous apercevez une fusée à travers les nuages. Si votre équipe parvient à alimenter cette fusée, vous pourrez décoller et enfin découvrir la civilisation depuis longtemps disparue des Atlantes. Pour accomplir votre mission, vous devrez explorer la plate-forme expérimentale et connecter tous les composants nécessaires (condensateurs, paratonnerres et rampe de lancement) pour former un véritable circuit électrique. Le problème est que la plate-forme est au beau milieu d’un orage violent : chacun de vos déplacements est menacé par des éclairs et des bourrasques. Votre équipe sera-t-elle capable d’alimenter la fusée avant d’être électrocutée ou projetée dans le vide ? "],
  [ "Custom Heroes", "Custom Heroes est un jeu de pli rapide et plein d’humour qui utilise un système nouveau et passionnant, le card-crafting, qui vous permet de changer la valeur et l’effet de vos cartes en cours de partie. Faites évoluez vos personnages vers leurs formes supérieures afin de conserver l’avantage. Mais attention ! À chaque nouveau round, un de vos adversaire pourrait bien prendre le contrôle des Héros que vous avez customisés ! Pour gagner, il vous faudra être le meilleur à chaque round.
Dans Custom Heroes, les joueurs modifient leurs cartes au fur et à mesure de la partie. Chaque joueur dispose derrière son écran d’une sélection d’Évolutions qu’il va glisser dans les cartes qu’il a en main (du moins dans les protège-cartes de ses cartes). Une fois insérée dans un étui, une Évolution ne peut pas être enlevée (enfin si, après la partie !) : les modifications qu’elle opère ne s’appliquent pas uniquement lors du pli où cette carte est jouée, mais perdurent au contraire jusqu’à la fin de la partie ! "],
  [ "Gentes", "Laissez une trace permanente dans les annales en guidant votre peuple à travers les aléas de l'histoire. Choisissez le meilleur chemin vers la victoire tout en optimisant votre utilisation du temps. Afin de gagner, vous devrez exploiter les capacités d'individus de toutes les classes de la société.
Dans Gentes les joueurs prennent le rôle d'un peuple qui tente de se développer. Avec vos prêtres, nobles, marchands, artisans, soldats et savants, vous allez construire des villes importantes et de somptueux monuments dans le bassin méditerranéen. Gentes contient un ingénieux système de gestion du temps qui exigera des joueurs de prendre des décisions tactiques nombreuses et variées."],
  [ "CATAN", "Construisez vos villes, vos routes, en profitant au mieux des ressources de cette île si accueillante tout en commerçant avec vos voisins.
Catan est un jeu passionnant, véritable succès parmi les jeux de société contemporains. Sorti en 1995 sous le nom Les Colons de Catane, ce jeu de société reste l'un des plus vendus dans le monde et insufflé un véritable renouveau dans le monde des jeux de stratégie et de plateau.
Les règles sont simples, les parties sont d'une durée raisonnable et le mécanisme est très fluide alliant gestion de ressources et négociations entre joueurs.
L'objectif : vous devez être le premier à atteindre 10 points de victoire. Les points de victoire sont acquis en construisant des routes etvillages. 
Catan est basé sur plusieurs mécanismes simples. Le plateau représente l'Ile de Catane et ses différents paysages vous apportant différents types de ressources. Selon la position sur le plateau de vos routes et villages,vous collecterez à chaque tour des ressources que vous gérerez afin de construire routes et villages (qui doivent toujours être reliés).
Vous pourrez échanger des ressources avec vos adversaires, négocier mais aussi gêner leur développement en plaçant judicieusement vos propres constructions. Plus vous vous développerez, plus vous aurez des chances de collecter des ressources supplémentaires pour construire et ainsi voler vers la victoire.
Catan, malgré sa simplicité, a une dimension tactique et stratégique très sympathique.Des extensions complémentaires au jeu de base vous permettent en apportant de nouvelles possibilités de renouveler le jeu et de le rendre encore plus passionnant."],
  [ "Five Tribes", "Après des journées de voyage au cœur du pays des mille et une nuits, votre caravane arrive enfin au fabuleux sultanat de Naqala. Les rumeurs étaient vraies : le vieux sultan est mort... Les oracles prédisent la venue d'un étranger qui saurait gagner les faveurs des Cinq Tribus pour prendre sa place. Allez-vous accomplir la prophétie ? Invoquez les anciens Djinns, faites appel aux différentes tribus au moment opportun, et le trône sera à vous !  Dans le jeu Five Tribes, vous allez devoir gagner les faveurs des tribus locales et invoquer les anciens Djinns, rassemblant ainsi suffisamment d'influence pour obtenir le titre de Grand Sultan. Faites preuve de sens tactique pour utiliser les Vizirs, les Sages, les Marchands, les Bâtisseurs et les Assassins qui sont répartis sur le territoire du sultanat entre villages, marchés, oasis et lieux sacrés.  Fives Tribes est un jeu au mécanisme original. Votre objectif est d'obtenir un maximum de points en prenant le contrôle d'un maximum de tuiles formant le Sultanat de Naqala. Pour cela, vous allez utiliser les capacités des cinq tribus présentes sur le territoire en les déplaçant de tuiles en tuiles. Inspiré du système d'égrainage de l'awalé, les déplacements des tribus vous demanderont de la réflexion pour bien optimiser vos coups.  Avec ses règles accessibles, Five Tribes est un jeu de société qui s'adresse à tous types de joueurs. Il faudra cependant plusieurs parties et un réel investissement cérébral pour profiter de toute la richesse du jeu. Le système de déplacement et les nombreux moyens de remporter des points en fin de partie rendent le jeu assez exigeant. 
Comme d'habitude, l'éditeur Days of Wonder nous offre avec Five Trives un jeu avec un matériel de qualité, superbement illustré par Clément Masson. "]
]
@address=["10 rue du Vercors, Grenoble, 38000, France","80 avenue de Constantine, Grenoble, 38100, France","35 chemin des sources, Meylan, 38240", "14 chemin de l'église, Grenoble, 38000, France", "4 avenue Paul Cocat, Grenoble, 38100, France", "13 rue de la saoupe,Marseille, 13011, France", "56 Traverse de la Buzine, Marseille,13011, France" ]
@age = ["3", "6", "8", "12", "18"]
@player=["1","2","3","4","5","6","10","16"]
@style = ["Coopératif", "Compétitif", "Peut être compétitif ou coopératif"]
@genre = ["Adresse", "Traditionnel", "Stratégie", "Tout public", "Ambiance", "Dés", "Cartes"]


3.times do |i|
  Style.create!(sort: @style[i])
end

5.times do |i|
  age = Age.create!(minimum:@age[i])
end

j=@player.count
k=j
j.times do |i|
  k.times do |y|
    PlayerNumber.create!(number_low: @player[i], number_high:@player[k-y+i-1])
  end
  k=k-1
end

7.times do |i|
  Genre.create!(title: @genre[i])
end

# 10.times do
#   user = User.create!(username: Faker::Name.first_name , email: Faker::Internet.email, password: Faker::Internet.password(8))
# end

@game_list.each do |name, description|
  rand_age = Age.offset(rand(Age.count)).first
  rand_genre= Genre.offset(rand(Genre.count)).first
  rand_player = PlayerNumber.offset(rand(PlayerNumber.count)).first
  rand_style = Style.offset(rand(Style.count)).first
  game = Game.create!( title: name, description: description)
  cat = Category.create!(age: rand_age, game: game, genre: rand_genre,player_number: rand_player, style: rand_style) 
end

20.times do
  rand_user = User.offset(rand(User.count)).first
  rand_game = Game.offset(rand(Game.count)).first
  copy = Copy.create!(game: rand_game, user: rand_user, available: true, address: @address[rand(7)], return: nil, rented:false)
end