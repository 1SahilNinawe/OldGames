import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xffb78e8e),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff360707),
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Game Categories")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              GameCategoryButton(
                title: "Top Rated Games",
                description: "Explore the highest-rated games of all time!",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopRatedPage()),
                  );
                },
                width: screenWidth * 0.85,
                height: screenHeight * 0.18,
              ),
              const SizedBox(height: 20),
              GameCategoryButton(
                title: "Most Popular Games",
                description: "Discover the popular games loved by everyone.",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MostPopularPage()),
                  );
                },
                width: screenWidth * 0.85,
                height: screenHeight * 0.18,
              ),
              const SizedBox(height: 20),
              GameCategoryButton(
                title: "Cult Classics",
                description:
                    "Overlooked by some, cherished by others for their unique charm, story, or gameplay.",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CultClassicsPage()),
                  );
                },
                width: screenWidth * 0.85,
                height: screenHeight * 0.18,
              ),
              const SizedBox(height: 20),
              GameCategoryButton(
                title: "Indie Games",
                description:
                    "Creativity unleashed — dive into unique games crafted by passionate developers.",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IndiePage()),
                  );
                },
                width: screenWidth * 0.85,
                height: screenHeight * 0.18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameCategoryButton extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;
  final double width;
  final double height;

  const GameCategoryButton({
    Key? key,
    required this.title,
    required this.description,
    required this.onTap,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffb23120),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(width, height),
        padding: const EdgeInsets.all(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                color: Color(0xffedcdcd),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
                fontSize: 14,
                color: Color(0xffedcdcd),
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TopRatedPage extends StatelessWidget {
  const TopRatedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top Rated Video Games")),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          child: Column(
            children: <Widget>[
              ProductBox(
                name: "Uncharted: Among Thieves",
                description: "Action-packed adventure following Nathan Drake.",
                detail:
                    "Nathan Drake tracks down Marco Polo's centuries-old trail to finally track down one of Earth's greatest mysteries: the city of Shambhala, the holder of the elusive Cintamani Stone. With the help of Chloe, Elena and Sully, Nate will uncover Shambhala's secrets that could change the course of history.",
                price: 1099,
                images: "assets/images/TopRated/Uncharted Among Thieves.jpg",
                color: const Color(0xff4edce7),
                genres: ["Action", "Adventure", "Third-Person Shooter"],
              ),
              ProductBox(
                name: "Half Life 2",
                description:
                    "Follows scientist Gordon Freeman battling alien forces to save humanity.",
                detail:
                    "After previously causing portals to open between worlds, Gordon released a race of aliens from enslavement on Xen and was placed into stasis by a mysterious figure known only as the G-Man. Meanwhile a race of aliens known as the combine enslaved Earth and is devouring its resources. Freeman awakens on a train heading for a massive city known only as City 17. The alien Combine empire watches over its human minions from a massive fortress called the Citadel, within which the human governor is none other than Gordon Freeman's old administrator, Dr. Wallace Breen. Uniting with the resistance fighters which contain some of his old acquaintances from the Black Mesa research facility (such as Barney Calhoun from Half-Life: Blue Shift), Gordon leads the resistance to free mankind with the help of the creatures he liberated from Xen, and the Antlion controlled with pheromones. After the fall of the first fortress G-Man places Gordon back into stasis.",
                price: 499,
                images: "assets/images/TopRated/Half Life 2.jpg",
                color: const Color(0xff567a6f),
                genres: ["Shooter", "Sci-Fi", "Action"],
              ),
              ProductBox(
                name: "Resident Evil 4",
                description:
                    "Action-packed rescue mission, following Leon Kennedy.",
                detail:
                    "Raccoon City is now a distant memory for ex-cop Leon S. Kennedy. Tasked by the US Government with saving The President's Daughter, Leon is sent to rural Spain where a maniacal cult not only has the hostage, but also a super-bacteria that could hold the world for ransom. Only Leon can make it out of this place alive and only he can cure himself: of the 'gift' he's been given. ",
                price: 1099,
                images: "assets/images/TopRated/Resident Evil 4.jpg",
                color: const Color(0xff3676d7),
                genres: ["Horror", "Action", "Survival"],
              ),
              ProductBox(
                name: "Grand Theft Auto: San Andreas",
                description:
                    "Open-world action game following CJ returning to his hometown and family.",
                detail:
                    "After five years on the east coast, Carl Johnson returns to the city of Los Santos, San Andreas to find numerous fellow gang-members dead and enemy gangs having dominance of the city. Carl must take over the city and get his old gang back on top before the city destroys itself.",
                price: 100,
                images: "assets/images/TopRated/GTA SA.jpg",
                color: const Color(0xffc87b76),
                genres: ["Open-World", "Action", "Crime"],
              ),
              ProductBox(
                name: "Metal Gear Solid 3: Snake Eater",
                description:
                    "Stealth game following 'Snake' trying to prevent a nuclear crisis.",
                detail:
                    "In 1963 Snake, soon to be Big Boss and father of Solid Snake, infiltrates the Russian jungle to extract a Russian weapons specialist. The mission turns into a catastrophic failure when Snake's former mentor, The Boss, defects to Russia and sets a nuke. Now alone and defenseless Snake must stop The Boss and her squad of crack special ops from unleashing nuclear war.",
                price: 1664,
                images: "assets/images/TopRated/MGS 3 Snake Eater.jpg",
                color: const Color(0xffae6623),
                genres: ["Stealth", "Action", "Espionage"],
              ),
              ProductBox(
                name: "Shadow of the Colossus",
                description:
                    "A lone warrior battles towering colossi to revive a lost soul.",
                detail:
                    "A young man who is named Wander brings a dead woman to a forbidden, mystical land inhabited by colossal stone creatures and is told by a being known as Dormin, that to revive the dead, he must destroy these legendary stone creatures. However, he is told that the consequences may be dire...",
                price: 1299,
                images: "assets/images/TopRated/Shadow of the Colossus.jpg",
                color: const Color(0xff6fab34),
                genres: ["Adventure", "Puzzle", "Action"],
              ),
              ProductBox(
                name: "Metal Gear Solid 4: Guns of the Patriots",
                description:
                    "Aging Snake's final mission in a tactical espionage thriller.",
                detail:
                    "In the near future, the nations of the world rely upon private military companies to fight their battles for them. When renegade super-soldier Liquid Ocelot emerges as the head of a potent coalition of mercenary powers, an aging Solid Snake returns to save the world one last time. ",
                price: 1999,
                images: "assets/images/TopRated/MGS 4 GOTP.jpg",
                color: const Color(0xff441010),
                genres: ["Stealth", "Action", "Espionage"],
              ),
              ProductBox(
                name: "Batman Arkham Asylum",
                description:
                    "A gripping action-adventure where Batman is trapped in Gotham’s infamous asylum.",
                detail:
                    "On a routine trip returning The Joker to Arkham Asylum, the Batman himself must deal with traps set within its inner sanctums, purposely set by the now escaped Joker, along with the rest of his rogues' gallery that are now free within the premises.",
                price: 1299,
                images: "assets/images/TopRated/Batman Arkham Asylum.jpg",
                color: const Color(0xff346bab),
                genres: ["Action", "Adventure", "Stealth"],
              ),
              ProductBox(
                name: "The Legend of Zelda: Twilight Princess",
                description:
                    "A dark and immersive adventure where Link must harness the power of the Twilight Realm.",
                detail:
                    "An all new and exciting adventure from game company Nintendo, The Legend of Zelda: Twilight Princess. Join Link, along with the help of a new and mysterious character Midna, to discover why the land of Hyrule is being engulfed by a mysterious darkness known as the Twilight. ",
                price: 1299,
                images:
                    "assets/images/TopRated/The Legend of Zelda Twilight Princess.jpg",
                color: const Color(0xff978d57),
                genres: ["Adventure", "Fantasy", "Action"],
              ),
              ProductBox(
                name: "Bioshock",
                description:
                    "A thought-provoking first-person shooter set in the underwater city of Rapture.",
                detail:
                    "The year is 1960, while flying over the Atlantic ocean, average citizen Jack blacks out and awakens to discover that he is the sole survivor of a plane crash. Amidst the wreckage of his plane Jack spots and swims to a lighthouse and boards a Bathysphere that takes him deep within the ocean and into Rapture. Originally conceived as a utopia where a man would be entitled to all that he made without the interference of 'parasites' by idealistic billionaire mogul Andrew Ryan. Rapture has since decayed and festered from the infectious effects of civil war and anarchy, brought about by the very ideals it citizens and it's leader embrace. Aided by a sympathetic smuggler and a rogue geneticist, Jack salvages gene altering chemicals transforming himself into a superhuman, and uses his newfound powers and abilities as well as an arsenal of weapons to fend off the vicious hordes of psychotic mutants, security robots and armored supersoldiers that resulted from Rapture's unrest while given the choice to either rescue or lethally harvest the genetic material from Rapture's only citizens with a chance: the 10 year old 'Little Sisters'. As Jack wanders through the condemning atmosphere of rapture, he treads towards a secret that could shatter all that he has known forever. ",
                price: 1299,
                images: "assets/images/TopRated/Bioshock.jpg",
                color: const Color(0xff6b5415),
                genres: ["Shooter", "Horror", "Sci-Fi"],
              ),
              ProductBox(
                name: "God of War",
                description:
                    "Kratos' brutal quest for revenge against Ares in ancient Greece.",
                detail:
                    "God of War follows Kratos: a soldier whose fate is intertwined with Ares, the Greek Mythological God of War. After 10 years of endless suffering and nightmares, Kratos must perform one final task to be free of his torment: kill Ares and become the greatest warrior in all of Sparta.",
                price: 899,
                images: "assets/images/TopRated/God of War.jpg",
                color: const Color(0xffd7bdb6),
                genres: ["Action", "Hack and Slash", "Mythology"],
              ),
              ProductBox(
                name: "God of War 2",
                description:
                    "Kratos seeks vengeance against Olympus in a mythological adventure.",
                detail:
                    "Kratos, a brutally violent Greek soldier, tortured by the memories of his past, has taken the throne as the new God of War and is a very angry and vengeful god. While leading a massacre through a city protected by Athena, Kratos is betrayed by his fellow gods and murdered by Zeus who is wielding the legendary Blade of Olympus. As the arms of Hades prepare to take him into the underworld the fallen god is saved by the titan Gaia. Gaia gives Kratos new life and sends him on a mission to change his fate, a task in which no god or man has ever been successful at. You play as Kratos and fight your way through countless hoards of monsters from Greek Mythology in an attempt to locate the temple of the Sisters of Fate, find the Blade of Olympus which holds your godly powers and take your revenge on Zeus himself.",
                price: 999,
                images: "assets/images/TopRated/God of War 2.jpg",
                color: const Color(0xff6de4e8),
                genres: ["Action", "Hack and Slash", "Mythology"],
              ),
              ProductBox(
                name: "Metal Gear Solid 2: Sons of Liberty",
                description:
                    "Raiden and Snake uncover a deep conspiracy in a stealth thriller.",
                detail:
                    "Two years after the events at Shadow Moses, Solid Snake infiltrates the United States' Marine Corps and sees that the government is trying to unleash Metal Gear upon the world. With the help of Otacon, Snake will expose Metal Gear to the world and try to save the world from the disaster that was the Shadow Moses Incident.",
                price: 1499,
                images: "assets/images/TopRated/MGS 2 Sons of Liberty.jpg",
                color: const Color(0xffecbfbf),
                genres: ["Stealth", "Action", "Espionage"],
              ),
              ProductBox(
                name: "Grand Theft Auto: Vice City",
                description:
                    "Tommy Vercetti rises to power in 1980s Vice City’s crime world.",
                detail:
                    "After being released from prison, Tommy Vercetti, a former mobster, is sent to the sunny and dangerous Vice City. When a deal within the city goes horribly wrong, Tommy embarks on a jorney across the city to reclaim what is rightfully his, no matter how many lives it takes.",
                price: 599,
                images: "assets/images/TopRated/GTA VC.jpg",
                color: const Color(0xffb26547),
                genres: ["Open-World", "Action", "Crime"],
              ),
              ProductBox(
                name: "Portal",
                description:
                    "A physics-based puzzle game with the iconic Portal Gun.",
                detail:
                    "You wake to find yourself in a small, square, glass room containing a futuristic-looking tube-like bed, a toilet, and a table with a radio playing a tune on it alongside a mug and a clipboard with data on it. A timer is counting down from a minute just above the closed door leading out of the small room. A voice sounds from a speaker in the ceiling of the room. After some things are said, the voice becomes distorted for a second, sparks come out of the speaker, and the voice returns to normal. It counts down from five, synchronized with the timer above the door. At zero, the door opens, and you are released from your cell....",
                price: 399,
                images: "assets/images/TopRated/Portal.jpg",
                color: const Color(0xff365c6e),
                genres: ["Puzzle", "Sci-Fi", "First-Person"],
              ),
              ProductBox(
                name: "Final Fantasy X",
                description:
                    "An epic tale of love, sacrifice, and fate set in the world of Spira.",
                detail:
                    "Tidus is a star athlete in his city. He is famous, has all the ladies, and simply loves his life. However, one day, his city is attacked by a mysterious evil, and an old family friend shows up, initiating his quest. He is magically taken to the world of Spira, where that evil, known as Sin, ravages the planet and its people with death and destruction. Sin is a punishment for the world's crimes, however, Tidus has been chosen to stop it. He meets up with Lady Yuna, a summoner (and daughter of a high summoner). Summoners can call the power of the fayth; aeons. Aeons are mighty and mystical creatures. Yuna quests for the Final Aeon: the one power that can slay Sin. Tidus joins as one of Yuna's many guardians, and travels with her to obtain the Final Aeon. However, the quest goes much deeper when high-ranking religious leaders betray the teachings of Yevon, the celestial overlord of Spira, and Yevon himself condones it. Tidus battles with his past and his true self while trying to sort his emotions and get back home to his world. Corruption of religion and the terror of Sin take the adventure to unimaginable heights full of friendship, war, and the power of true love.",
                price: 399,
                images: "assets/images/TopRated/Final Fantasy X.jpg",
                color: const Color(0xff365c6e),
                genres: ["RPG", "Fantasy", "Adventure"],
              ),
              ProductBox(
                name: "Call of Duty 4: Modern Warfare",
                description:
                    "Elite soldiers fight in a high-stakes modern military conflict.",
                detail:
                    "The year is 2011, and civil war has broken out in Russia between the Russian government and Russian ultranationalists under the command of Imran Zakhaev who seek to restore Russia back to its former Soviet-style leadership. A revolution has toppled a regime in an unnamed Arabic country which has ties to the Russian ultranationalists, with Khaled al-Asad coming to power. These two simultaneous events are causing fear that al-Asad and Zakhaev might form an alliance and use nuclear weapons against the West. In response to these concerns, the United States and the United Kingdom conduct joint operations to put down both uprisings, without putting their own nations' security at risk. Will they succeed? ",
                price: 899,
                images: "assets/images/TopRated/COD 4 MW.jpg",
                color: const Color(0xff3e5838),
                genres: ["Shooter", "Action", "Military"],
              ),
              ProductBox(
                name: "Grand Theft Auto IV",
                description:
                    "Niko Bellic struggles for the American Dream in Liberty City.",
                detail:
                    "Niko Bellic, an Eastern European war veteran, migrates to Liberty City to forget the horrific and graphic memories of his past and for a better life, things don't come out as planned as he has to wipe out mobsters and loan sharks that are preventing his cousin, Roman from making money freely.",
                price: 799,
                images: "assets/images/TopRated/GTA 4.jpg",
                color: const Color(0xff707d8d),
                genres: ["Action", "Open-World", "Crime"],
              ),
              ProductBox(
                name: "Max Payne",
                description:
                    "A noir action shooter about Max Payne’s gritty revenge story.",
                detail:
                    "Max Payne, a cop in the NYPD, returns home one day to find his wife and baby daughter murdered at the hands of drug addicts, high on a designer drug called Valkyr. After 3 years of working on the case, Max and his best friend Alex go undercover to bust a V-deal. However, things go wrong: Alex is suddenly killed, and Max is framed for his murder. Hunted by the cops and driven by determination to avenge his family, Max Payne sets out to uncover the truths behind his family's murder. ",
                price: 499,
                images: "assets/images/TopRated/Max Payne.jpg",
                color: const Color(0xff701a1a),
                genres: ["Shooter", "Noir", "Action"],
              ),
              ProductBox(
                name: "The Elder Scrolls IV: Oblivion",
                description:
                    "Epic fantasy adventure to save the world from Oblivion.",
                detail:
                    "The Player is in the Imperial Prison when the Emperor and his bodyguards need to go through his cell to escape from the Imperial City. The Emperors sons are asassinated. The Player goes to Kvatch where he finds the last heir of the Septim Bloodline. The emperor has been killed while escaping from the City. The Player must help the heir Martin Septim to save the world from the Oblivion Crisis. And joining the Blades, Save Kvatch from Oblivion, Save Bruma, and be the Champion Of Cyrodiil.",
                price: 499,
                images:
                    "assets/images/TopRated/The Elder Scroll 4 Oblivion.jpg",
                color: const Color(0xff5c5a51),
                genres: ["RPG", "Fantasy", "Open-World"],
              ),
              ProductBox(
                name: "Fallout 3",
                description:
                    "Post-apocalyptic adventure through the ruins of Washington D.C.",
                detail:
                    "In the far future where Earth has become a devastated wasteland, you're the child of the noted scientist James in the underground Vault 101 that's in the Washington DC area. Upon reaching adulthood, your father has mysteriously disappeared into the outside for some unknown purpose. Soon, you're forced to flee outside yourself from the murderous tyranny of the Vault Overseer who'll not tolerate such dissent. Now, you'll begin the search for your father as your adventures begin that'll either bring hope to that dismal world or destroy it.",
                price: 499,
                images: "assets/images/TopRated/Fallout 3.jpg",
                color: const Color(0xff0e0202),
                genres: ["RPG", "Post-Apocalyptic", "Open-World"],
              ),
              ProductBox(
                name: "Silent Hill 2",
                description: "Psychological horror in a fog-covered town.",
                detail:
                    "After receiving a mysterious letter from his late wife, James Sunderland takes a terrifying trip to the small, lakeside town of Silent Hill. Now the question is not what brought him there, the question is will he get out alive?",
                price: 499,
                images: "assets/images/TopRated/Silent Hill 2.jpg",
                color: const Color(0xff757373),
                genres: ["Horror", "Psychological"],
              ),
              ProductBox(
                name: "Mass Effect",
                description:
                    "A space-faring RPG with epic storylines and moral choices.",
                detail:
                    "The future is here: take control of Commander Shepard as the Galaxy's ultimate protector, who must save everything from the Universe's greatest threat: The Reapers. Mass Effect is a new frontier for gaming; it boldly goes where few have dared to go before.",
                price: 499,
                images: "assets/images/TopRated/Mass Effect.jpg",
                color: const Color(0xff3a95e0),
                genres: ["RPG", "Sci-Fi", "Adventure"],
              ),
              ProductBox(
                name: "Grand Theft Auto III",
                description:
                    "Open-world crime saga in the gritty streets of Liberty City.",
                detail:
                    "After a Young Criminal's Girlfriend betrays him in a Bank Robbery. He is arrested the Police but manages to escape from Custody, He must now get revenge on his Girlfriend but in order to do so he must work his way up in the Criminal Underworld by any means necessary in Liberty City.",
                price: 499,
                images: "assets/images/TopRated/GTA 3.jpg",
                color: const Color(0xff701a1a),
                genres: ["Action", "Open-World", "Crime"],
              ),
              ProductBox(
                name: "Halo: Combat Evolved",
                description:
                    "Sci-fi shooter where humanity's fate hangs in the balance.",
                detail:
                    "You Play the mysterious John, known as Spartan-117 and The Master Chief, a Master Cheif Petty Officer in the United Nations Space Corp of the 26th Century. You are the last of a genetically enhanced group of super-soldiers of the Spartan II project. As the last of these super soldiers you alone wear The Mjolnir enhanced suit that increases your physical prowess through motor assistance. You are hastily removed from a Cryogenic freezer one day to find that the ship you have been traveling through space on, the Pillar of Autumn, is under attack from the Covenant (A conglomerate of several species of extra-terrestrials who have declared war on the Human race after their first inter-galactic settlement was formed) and you have been summoned by the Captain. Upon reaching the office you accept a pistol and an AI program, and are tasked with the protection of the AI because it knows the location of Earth. After battling through the ship and leaving in an escape pod you land on a mysterious ring world. After many days on the ring world you find that the planet is infested with another species of alien and must set upon a mammoth task to destroy the planet to protect the galaxy. ",
                price: 499,
                images: "assets/images/TopRated/Halo Combat Evolved.jpg",
                color: const Color(0xff48701a),
                genres: ["Shooter", "Sci-Fi", "Action"],
              ),
            ],
          )),
    );
  }
}

class MostPopularPage extends StatelessWidget {
  const MostPopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Most Popular Video Games")),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          child: Column(
            children: <Widget>[
              ProductBox(
                name: "Grand Theft Auto: San Andreas",
                description:
                    "Open-world action game following CJ returning to his hometown and family.",
                detail:
                    "After five years on the east coast, Carl Johnson returns to the city of Los Santos, San Andreas to find numerous fellow gang-members dead and enemy gangs having dominance of the city. Carl must take over the city and get his old gang back on top before the city destroys itself.",
                price: 1099,
                images: "assets/images/MostPopular/GTA SA.jpg",
                color: const Color(0xff4edce7),
                genres: ["Action", "Open-World", "Crime"],
              ),
              ProductBox(
                name: "Half-Life 2",
                description:
                    "Follows scientist Gordon Freeman battling alien forces to save humanity.",
                detail:
                    "After previously causing portals to open between worlds, Gordon released a race of aliens from enslavement on Xen and was placed into stasis by a mysterious figure known only as the G-Man. Meanwhile a race of aliens known as the combine enslaved Earth and is devouring its resources. Freeman awakens on a train heading for a massive city known only as City 17. The alien Combine empire watches over its human minions from a massive fortress called the Citadel, within which the human governor is none other than Gordon Freeman's old administrator, Dr. Wallace Breen. Uniting with the resistance fighters which contain some of his old acquaintances from the Black Mesa research facility (such as Barney Calhoun from Half-Life: Blue Shift), Gordon leads the resistance to free mankind with the help of the creatures he liberated from Xen, and the Antlion controlled with pheromones. After the fall of the first fortress G-Man places Gordon back into stasis.",
                price: 499,
                images: "assets/images/MostPopular/Half Life 2.jpg",
                color: const Color(0xff567a6f),
                genres: ["First-Person Shooter", "Sci-Fi", "Action"],
              ),
              ProductBox(
                name: "World of Warcraft",
                description:
                    "A vast MMORPG where players embark on epic quests in Azeroth.",
                detail:
                    "Four years have passed since the mortal races stood together against the might of the Burning Legion. The tenuous peace forged in a time of desperation is fading. Arthas, the mad deathknight, has assumed the mantle of the Lich King, becoming nearly invincible in his fortress in Northrend. However, the great will of the Lich King has failed, and the undead legions have splintered. The Forsaken, those creatures that have managed to throw off the control of the undead lord under the guidance of Sylvanas Windrunner, the former high elf, have control of the lands of Lordaeron, under constant attack from the mindless creations of the Arthas. South of Lordaeron, in the land of Azeroth, the humans have reclaimed their stronghold of Stormwind, building it into their new capital city. But the king has mysteriously vanished, and the Defias Brotherhood, a group of thieves and murderers, have gained considerable power. With the Stormwind army away from the capital, the task falls on the shoulder of adventurers to protect the human lands, under the rule of their child king. To the north of Stormwind, in Khaz Modan, the dwarves and gnomes work together, trying to reclaim the gnomish city of Gnomeregan from the troggs, while attempting to secure their own borders and protect their human allies. In Darnassus, the island stronghold of the Night Elves, nature and balance have been restored, but the mainland of Kalimdor has been lost to the Horde. In Ogrimmar, to the south of Darnassus, the orcs and trolls attempt to carve out their own place in a world that does not seem to want them, under the wise leadership of the shaman Thrall. In Southern Kalimdor, the Tauren try to protect their great city of Thunder Bluff from the ravages of those who would attempt to defile their lands. Eight races, all vying for control of Azeroth. Four years have passed since the races banded together to protect the Well of Eternity from the power of the Burning Legion. The tenuous peace that once held all the hatred of the races at bay, has shattered. The lands of the world of Azeroth have once again become host to a World of Warcraft.",
                price: 1099,
                images: "assets/images/MostPopular/World of Warcraft.jpg",
                color: const Color(0xff3676d7),
                genres: ["MMORPG", "Fantasy", "Adventure"],
              ),
              ProductBox(
                name: "Resident Evil 4",
                description:
                    "Action-packed rescue mission, following Leon Kennedy.",
                detail:
                    "Raccoon City is now a distant memory for ex-cop Leon S. Kennedy. Tasked by the US Government with saving The President's Daughter, Leon is sent to rural Spain where a maniacal cult not only has the hostage, but also a super-bacteria that could hold the world for ransom. Only Leon can make it out of this place alive and only he can cure himself: of the 'gift' he's been given.",
                price: 100,
                images: "assets/images/MostPopular/Resident Evil 4.jpg",
                color: const Color(0xffc87b76),
                genres: ["Survival Horror", "Third-Person Shooter", "Action"],
              ),
              ProductBox(
                name: "The Elder Scrolls IV: Oblivion",
                description:
                    "An open-world RPG where a hero must stop a demonic invasion.",
                detail:
                    "The Player is in the Imperial Prison when the Emperor and his bodyguards need to go through his cell to escape from the Imperial City. The Emperors sons are asassinated. The Player goes to Kvatch where he finds the last heir of the Septim Bloodline. The emperor has been killed while escaping from the City. The Player must help the heir Martin Septim to save the world from the Oblivion Crisis. And joining the Blades, Save Kvatch from Oblivion, Save Bruma, and be the Champion Of Cyrodiil.",
                price: 1664,
                images:
                    "assets/images/MostPopular/The Elder Scroll 4 Oblivion.jpg",
                color: const Color(0xffae6623),
                genres: ["RPG", "Open-World", "Fantasy"],
              ),
              ProductBox(
                name: "Halo 2",
                description:
                    "A sci-fi shooter following Master Chief in humanity’s war against the Covenant.",
                detail:
                    "The Master Chief must protect the Earth from the Covenant: an alien super-army capable of wiping humanity out without help from Spartan-117. Can The Chief save the galaxy from the Covenant's super-soldier The Arbiter, or are the two's fates intertwined with one another? The Halo Saga continues in the sequel to 2001's mega-hit Xbox game!",
                price: 1299,
                images: "assets/images/MostPopular/Halo 2.jpg",
                color: const Color(0xff6fab34),
                genres: ["First-Person Shooter", "Sci-Fi", "Multiplayer"],
              ),
              ProductBox(
                name: "Half-Life: Counter-Strike",
                description:
                    "A tactical first-person shooter focused on counter-terrorist warfare.",
                detail:
                    "The game of Counter-Strike deals with two sides, the Counter Terrorists and the Terrorists, consisting of a Team Deathmatch style game play in 2 game modes. In Defuse game play, the Terrorists can either kill the opposing team (Same for the Counter-Terrorists), or plant the bomb at point A & B, and then guard the bomb until it explodes - the Counter Terrorists can win by defusing the bomb. In the the CS game mode the Counter Terrorists must rescue 4 hostages. The Terrorists can win by defending the hostages.",
                price: 1299,
                images:
                    "assets/images/MostPopular/Half-Life Counter-Strike.jpg",
                color: const Color(0xff346bab),
                genres: ["First-Person Shooter", "Tactical", "Multiplayer"],
              ),
              ProductBox(
                name: "Call of Duty 4: Modern Warfare",
                description:
                    "A modern military shooter following elite soldiers in global conflicts.",
                detail:
                    "The year is 2011, and civil war has broken out in Russia between the Russian government and Russian ultranationalists under the command of Imran Zakhaev who seek to restore Russia back to its former Soviet-style leadership. A revolution has toppled a regime in an unnamed Arabic country which has ties to the Russian ultranationalists, with Khaled al-Asad coming to power. These two simultaneous events are causing fear that al-Asad and Zakhaev might form an alliance and use nuclear weapons against the West. In response to these concerns, the United States and the United Kingdom conduct joint operations to put down both uprisings, without putting their own nations' security at risk. Will they succeed?",
                price: 1299,
                images: "assets/images/MostPopular/COD 4 MW.jpg",
                color: const Color(0xff978d57),
                genres: ["First-Person Shooter", "Military", "Action"],
              ),
              ProductBox(
                name: "Metal Gear Solid 3: Snake Eater",
                description:
                    "Stealth game following ‘Snake’ on a Cold War mission to prevent a nuclear crisis.",
                detail:
                    "In 1963 Naked Snake, soon to be Big Boss and father of Solid Snake, infiltrates the Russian jungle to extract a Russian weapons specialist. The mission turns into a catastrophic failure when Snake's former mentor, The Boss, defects to Russia and sets a nuke. Now alone and defenseless Snake must stop The Boss and her squad of crack special ops from unleashing nuclear war.",
                price: 1299,
                images: "assets/images/MostPopular/MGS 3 Snake Eater.jpg",
                color: const Color(0xff6b5415),
                genres: ["Action", "Stealth", "Espionage"],
              ),
              ProductBox(
                name: "Bioshock",
                description:
                    "A thought-provoking first-person shooter set in the underwater city of Rapture.",
                detail:
                    "The year is 1960, while flying over the Atlantic ocean, average citizen Jack blacks out and awakens to discover that he is the sole survivor of a plane crash. Amidst the wreckage of his plane Jack spots and swims to a lighthouse and boards a Bathysphere that takes him deep within the ocean and into Rapture. Originally conceived as a utopia where a man would be entitled to all that he made without the interference of 'parasites' by idealistic billionaire mogul Andrew Ryan. Rapture has since decayed and festered from the infectious effects of civil war and anarchy, brought about by the very ideals it citizens and it's leader embrace. Aided by a sympathetic smuggler and a rogue geneticist, Jack salvages gene altering chemicals transforming himself into a superhuman, and uses his newfound powers and abilities as well as an arsenal of weapons to fend off the vicious hordes of psychotic mutants, security robots and armored supersoldiers that resulted from Rapture's unrest while given the choice to either rescue or lethally harvest the genetic material from Rapture's only citizens with a chance: the 10 year old 'Little Sisters'. As Jack wanders through the condemning atmosphere of rapture, he treads towards a secret that could shatter all that he has known forever.",
                price: 899,
                images: "assets/images/MostPopular/Bioshock.jpg",
                color: const Color(0xffd7bdb6),
                genres: ["First-Person Shooter", "Horror", "Sci-Fi"],
              ),
              ProductBox(
                name: "Super Smash Bros. Melee",
                description:
                    "A fast-paced fighting game featuring Nintendo’s iconic characters.",
                detail:
                    "Smash Bros. installment for the GameCube with fast-paced, highly competitive and technical gameplay of realtime chess and hype using various Nintendo characters, with simple controls yet deep mechanics.",
                price: 1499,
                images: "assets/images/MostPopular/Super Smash Bros. Melee.jpg",
                color: const Color(0xffecbfbf),
                genres: ["Fighting", "Multiplayer", "Party"],
              ),
              ProductBox(
                name: "Super Mario Galaxy",
                description:
                    "A gravity-defying adventure where Mario explores cosmic worlds to save Princess Peach.",
                detail:
                    "When Princess Peach is abducted as part of Bowser's galaxy creation scheme, stalwart plumber Mario must leap to her rescue, with the help of new celestial friends and powers.",
                price: 599,
                images: "assets/images/MostPopular/Super Mario Galaxy.jpg",
                color: const Color(0xffb26547),
                genres: ["Platformer", "Adventure", "Fantasy"],
              ),
              ProductBox(
                name: "The Sims 2",
                description:
                    "A life simulation game where players control virtual people and shape their lives.",
                detail:
                    "The sequel to one of the most successful PC games of all-time: The Sims (2000). In The Sims 2, players have a wide range of new options, socials, objects and lots more. The game is more realistic than the first as in The Sims 2 you can experience different life stages and even own a car (Nightlife expansion pack). As well as having babies (and twins), inheriting family genes, going to uni (University expansion pack), creating towns, having a more close-up experience, having wants and fears and creating extreme mansions - there are hundreds more things to do.",
                price: 399,
                images: "assets/images/MostPopular/The Sims 2.jpg",
                color: const Color(0xff365c6e),
                genres: ["Simulation", "Life Simulation", "Casual"],
              ),
              ProductBox(
                name: "Guitar Hero II",
                description:
                    "A rhythm-based game where players rock out to classic and modern songs.",
                detail:
                    "Sequel to Guitar Hero (2005), featuring more than 40 popular licensed songs which you play on a guitar controller.",
                price: 399,
                images: "assets/images/MostPopular/Guitar Hero II.jpg",
                color: const Color(0xff365c6e),
                genres: ["Rhythm", "Music", "Party"],
              ),
              ProductBox(
                name: "Diablo II",
                description:
                    "A dark action RPG where heroes battle demonic forces to stop the Lord of Terror.",
                detail:
                    "Evil has survived. Diablo, the Lord of Terror, now seeks to free his demonic brothers. The armies of the High Heavens are forbidden to interfere with Diablo's plan. Again, it is up to a single mortal to stand in Diablo's path, to prevent the Three Prime Evils from reuniting. If that mortal fails, the world of Sanctuary will become a permanent outpost of the Burning Hells.",
                price: 899,
                images: "assets/images/MostPopular/Diablo II.jpg",
                color: const Color(0xff3e5838),
                genres: ["Action RPG", "Hack and Slash", "Fantasy"],
              ),
              ProductBox(
                name: "Minecraft",
                description:
                    "A sandbox game where players build, explore, and survive in an endless blocky world.",
                detail:
                    "An open world, sandbox game that is randomly generated. Players mine for minerals, build shelters, and fight off monsters that come at night in Survival Mode. The game also features a Creative Mode, where the player is invincible, has an unlimited supply of everything, can fly, and break blocks easily.",
                price: 499,
                images: "assets/images/MostPopular/Minecraft.jpg",
                color: const Color(0xff701a1a),
                genres: ["Sandbox", "Survival", "Creative"],
              ),
              ProductBox(
                name: "The Witcher 3: Wild Hunt",
                description:
                    "An epic RPG following Geralt of Rivia on a quest to find Ciri.",
                detail:
                    "The witcher Geralt of Rivia reunites the sorceress Yennefer of Vengerberg, his former lover, and sets out to find his adoptive daughter and former apprentice Ciri, who he learns is being pursued by the Wild Hunt. They must find a way to defeat the Wild Hunt and stop the arrival of the White Frost, an unending snowfall that will bring about the end of the world.",
                price: 499,
                images: "assets/images/MostPopular/The Witcher 3 Wild Hunt.jpg",
                color: const Color(0xffb7b49f),
                genres: ["RPG", "Open-World", "Fantasy"],
              ),
              ProductBox(
                name: "Grand Theft Auto V",
                description:
                    "An open-world crime saga following three criminals in Los Santos.",
                detail:
                    "Los Santos: a sprawling sun-soaked metropolis full of self-help gurus, starlets, and fading celebrities, once the envy of the Western world, now struggling to stay afloat in an era of economic uncertainty and cheap reality TV. Amidst the turmoil, three very different criminals plot their own chances of survival and success: Franklin, a former street gangster, now looking for real opportunities and serious money; Michael, a professional ex-con whose retirement is a lot less rosy than he hoped it would be; and Trevor, a violent maniac driven by the chance of a cheap high and the next big score. Running out of options, the crew risks everything in a series of daring and dangerous heists that could set them up for life.",
                price: 499,
                images: "assets/images/MostPopular/GTA V.jpg",
                color: const Color(0xff0e0202),
                genres: ["Action", "Open-World", "Crime"],
              ),
              ProductBox(
                name: "The Elder Scrolls V: Skyrim",
                description:
                    "A fantasy RPG where the Dragonborn must save the world from Alduin.",
                detail:
                    "The Empire of Tamriel is on the edge. The High King of Skyrim has been murdered. Alliances form as claims to the throne are made. In the midst of this conflict, a far more dangerous, ancient evil is awakened. Dragons, long lost to the passages of the Elder Scrolls, have returned to Tamriel. The future of Skyrim, even the Empire itself, hangs in the balance as they wait for the prophesized Dragonborn to come; a hero born with the power of The Voice, and the only one who can stand amongst the dragons.",
                price: 499,
                images:
                    "assets/images/MostPopular/The Elder Scroll V Skyrim.jpg",
                color: const Color(0xffedeaea),
                genres: ["RPG", "Open-World", "Fantasy"],
              ),
              ProductBox(
                name: "Dark Souls",
                description:
                    "A brutal action RPG where players face relentless challenges in a cursed land.",
                detail:
                    "After narrowly escaping a doomed fate in an asylum, an undead warrior fights his way through the desolate remains of Lordran, once a sprawling utopia lead by the gods, to seek his purpose and fulfill a centuries old prophecy.",
                price: 499,
                images: "assets/images/MostPopular/Dark Souls.jpg",
                color: const Color(0xff3a95e0),
                genres: ["Action RPG", "Fantasy", "Hardcore"],
              ),
              ProductBox(
                name: "Red Dead Redemption 2",
                description:
                    "A Western adventure following Arthur Morgan in the dying days of the outlaw era.",
                detail:
                    "In 1899. The era of the Wild West is coming to an end as the federal government asserts its control over the lawless territories. Realizing that their fortunes are fading, Dutch Van der Linde's notorious gang plots one last major bank robbery that could set them for life. However, the heist goes awry with several gang members dead or captured; the gang is forced to flee across the country with the law pursuing them. Undeterred, Dutch hopes to pull off one last heist and flee the country. ç, each scheme w in failure. Dutch's most-trusted lieutenant, Arthur Morgan, sees ehis loyalty to the gang put to the test as he is forced to come to terms with the changing times.",
                price: 499,
                images: "assets/images/MostPopular/Red Dead Redemption 2.jpg",
                color: const Color(0xff701a1a),
                genres: ["Action", "Open-World", "Western"],
              ),
              ProductBox(
                name: "Fortnite",
                description:
                    "A battle royale phenomenon where players fight to be the last one standing.",
                detail:
                    "A mysterious island that holds the Origin of the universe itself is being abused by a mysterious organisation. A mysterious figure emerges from an escape pod housed in the remnants of a meteor in the crater of the island. From there on, everything slowly unfolds into chaos.",
                price: 499,
                images: "assets/images/MostPopular/Fortnite.jpg",
                color: const Color(0xff48701a),
                genres: ["Battle Royale", "Shooter", "Multiplayer"],
              ),
              ProductBox(
                name: "League of Legends",
                description:
                    "A competitive MOBA where teams battle for dominance in strategic warfare.",
                detail:
                    "Assume the role of an unseen 'summoner' that controls a 'champion' with unique abilities and battle against a team of other players or computer-controlled champions in the immensely popular multiplayer online battle arena League of Legends.",
                price: 799,
                images: "assets/images/MostPopular/League of Legends.jpg",
                color: const Color(0xff707d8d),
                genres: ["MOBA", "Multiplayer", "Strategy"],
              ),
              ProductBox(
                name: "Overwatch",
                description:
                    "A team-based hero shooter where players use unique abilities in objective-based combat.",
                detail:
                    "After a devastating war against a combat-ready team of intelligent machines known as Omnics, the former agents of the heroic team known as Overwatch must join forces once more to fight a new threat.",
                price: 1999,
                images: "assets/images/MostPopular/Overwatch.jpg",
                color: const Color(0xff441010),
                genres: ["First-Person Shooter", "Hero Shooter", "Multiplayer"],
              ),
              ProductBox(
                name: "Persona 5",
                description:
                    "A stylish RPG where high school students lead double lives as Phantom Thieves.",
                detail:
                    "A boy robbed of his future must fight to clear his name. With help from a mysterious cat and like-minded outcast teenagers and the cerebral world of Mementos connecting everyone's subconscious, this boy will take on the mantle of Joker and start the vigilante movement of a lifetime: The Phantom Thieves.",
                price: 999,
                images: "assets/images/MostPopular/Persona 5.jpg",
                color: const Color(0xff6de4e8),
                genres: ["JRPG", "Turn-Based", "Social Simulation"],
              ),
            ],
          )),
    );
  }
}

class CultClassicsPage extends StatelessWidget {
  const CultClassicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Most Popular Video Games")),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          child: Column(
            children: <Widget>[
              ProductBox(
                name: "The Thing",
                description:
                    "Survival horror following a team battling an alien parasite in Antarctica.",
                detail:
                    "After the enigmatic deaths of an American scientific expedition in uncharted and frozen wastelands of the Antarctic at the U.S. Outpost 31, a military rescue team lead by Captain Blake is sent to investigate their deaths. Within these inhospitable surroundings the team encounters a strange shape-shifting alien life-form that assumes the appearance of people that it kills.",
                price: 1099,
                images: "assets/images/CultClassics/The Thing.jpg",
                color: const Color(0xff4edce7),
                genres: ["Survival Horror", "Third-Person Shooter", "Sci-Fi"],
              ),
              ProductBox(
                name: "Gun",
                description:
                    "A Western action-adventure following Colton White seeking vengeance in the Wild West.",
                detail:
                    "Ned White and his son Colton White venture onto the Morningstar, a steamboat on the Montana River. The steamboat is attacked by barbaric men lead by a corrupt preacher, Josiah Reed. After Ned tells Colton he really isn't his father, the two become separated and Ned dies. Now alone and craving vengeance and answers, Colton sets out to the west where he will join a rebellious group of outlaws to battle Indians, stop a corrupt mayor, kill Josiah Reed and stop an evil Civil War Major named Thomas Magruder who has the answers Colton needs as well as a plot of his own to find the Cross of Coronado- the key to the gateway of the lost golden city.",
                price: 499,
                images: "assets/images/CultClassics/Gun.jpg",
                color: const Color(0xff567a6f),
                genres: ["Action", "Open-World", "Western"],
              ),
              ProductBox(
                name: "Vagrant Story",
                description:
                    "A dark fantasy RPG where Ashley Riot uncovers conspiracies in Leá Monde.",
                detail:
                    "Valendia is a land that had undergone civil war, the end of which had birthed the parliament and several organizations to control the balance of power. Ashley Riot is a Riskbreaker, an elite agent for the Valendia Knights of Peace (VKP) who is investigating some strange occurrences. A cult of religious fanatics known as Müllenkamp and their leader Sydney Losstarot have seized the manor of Duke Bardorba of Valendia Kingdom. The events at the manor have sent Ashley on a quest to get to the bottom of events, and travel into the catacombs that lead to the destroyed, yet magical city of Leá Monde. However Ashley is not the only person interested in the city, and other factions of the government, including parliament assigned Knights of the Crimson Blade and other VKP agents are pursuing their own agenda.",
                price: 1099,
                images: "assets/images/CultClassics/Vagrant Story.jpg",
                color: const Color(0xff3676d7),
                genres: ["Action RPG", "Fantasy", "Turn-Based Combat"],
              ),
              ProductBox(
                name: "XIII",
                description:
                    "A stylish first-person shooter following an amnesiac uncovering a government conspiracy.",
                detail:
                    "A man is rescued by a lifeguard on Brighton Beach. He has suffered a head wound and has no memory of who he is. His only clues to his identity are a tattoo of a roman numeral, 'XIII', and a key to a bank deposit box. He is ambushed by hitmen but escapes, and is eventually captured by the FBI. Colonel Amos of the FBI has photographic evidence of the man, now identified as Steve Roland. With the help of a young woman named Major Jones, the man sets out to search for the missing General Carrington. Carrington went missing while conducting his own investigation into the president's murder and may be the man's only hope of uncovering the truth behind his identity. Can the enigmatic Agent XIII discover the evidence needed to expose the truth or will the shadowy conspiracy continue its plans for America.",
                price: 100,
                images: "assets/images/CultClassics/XIII.jpg",
                color: const Color(0xffc87b76),
                genres: ["First-Person Shooter", "Comic Book", "Spy"],
              ),
              ProductBox(
                name: "F.E.A.R.",
                description:
                    "A tactical horror shooter following a special forces operative facing supernatural threats.",
                detail:
                    "You play a new member of the secret First Encounter Assault Recon, a secret commando unit specializing in paranormal threats. For your first mission, you must find the mysterious and murderously insane Paxton Fettel who has escaped from prison and seized control of a prototype army of clones. As you hunt for Fettel, you must battle his clone soldiers who become increasingly advanced and dangerous. If that is not bad enough, you also encounter strange and bizarre sights as you uncover clues suggesting a greater crisis than even Fettel holds.",
                price: 1664,
                images: "assets/images/CultClassics/FEAR.jpg",
                color: const Color(0xffae6623),
                genres: ["First-Person Shooter", "Horror", "Sci-Fi"],
              ),
              ProductBox(
                name: "Deus Ex",
                description:
                    "A cyberpunk RPG following JC Denton uncovering global conspiracies.",
                detail:
                    "In the near future, cybernetic upgrades are becoming available, armed bots are used for peacekeeping, a new plague is spreading around the world and riots and terrorism are rampant. Special agent J.C. Denton uncovers a worldwide conspiracy.",
                price: 1299,
                images: "assets/images/CultClassics/Deus Ex.jpg",
                color: const Color(0xff6fab34),
                genres: ["RPG", "Cyberpunk", "First-Person Shooter"],
              ),
              ProductBox(
                name: "Killer7",
                description:
                    "A surreal action game where an assassin with multiple personalities hunts a deadly cult.",
                detail:
                    "After Global Peace has been completed, a new terrorist threat called Heaven Smile scares the world. With the help of his past targets and kills, it is up to Harman Smith and his 7 split personalities to destroy each and every one of the Heaven Smile, and make his way to Kun Lan; the man with the God-Hand.",
                price: 1999,
                images: "assets/images/CultClassics/Killer7.jpg",
                color: const Color(0xff441010),
                genres: ["Action", "Adventure", "Surreal"],
              ),
              ProductBox(
                name: "Alpha Protocol",
                description:
                    "A spy RPG where Michael Thorton navigates espionage and betrayals.",
                detail:
                    "Loyalty carries a price and no one knows this more than agent Michael Thorton. A talented young agent cast out by his government, Thorton is the only one with the information needed to stop an impending international catastrophe. To do so means he must cut himself off from the very people he is sworn to protect. As players determine how to accomplish different objectives, the decisions made and actions taken in each mission will ultimately transform the type of secret agent Michael Thorton will become. Every choice the player makes as Michael Thorton will carry consequences for his future and the fate of the world. After a mission goes awry, Michael is cut off from all of his contacts and betrayed by his superiors and is being hunted by the United States government. In response, Michael uses the eponymous 'Alpha Protocol', though it is normally reserved for more senior agents, and begins to operate under cover, to uncover the conspiracy.",
                price: 1299,
                images: "assets/images/CultClassics/Alpha Protocol.jpg",
                color: const Color(0xff346bab),
                genres: ["RPG", "Spy", "Action"],
              ),
              ProductBox(
                name: "Call of Cthulhu: Dark Corners of the Earth",
                description:
                    "Dark Corners of the Earth** – A psychological horror game set in Lovecraft’s eerie world.",
                detail:
                    "Detective Jack Walters is called to a standoff between the Police and a strange cult. After exploring the house of the encounter and being subject to a strange phenomenon, Jack reawakens 6 years later, not remembering a thing that happened. He is then called to investigate the disappearance of a person in the town of Innsmouth.",
                price: 1299,
                images:
                    "assets/images/CultClassics/Call of Cthulhu Dark Corners of the Earth.jpg",
                color: const Color(0xff978d57),
                genres: ["Survival Horror", "Psychological Horror", "Mystery"],
              ),
              ProductBox(
                name: "Return to Castle Wolfenstein ",
                description:
                    "A supernatural WWII shooter following B.J. Blazkowicz against Nazi experiments.",
                detail:
                    "You play B.J. Blazkowicz, an World War II American secret agent, who is sent to investigate reports of bizarre experiments being conducted by Nazi Germany's special weapons research facilities involving the occult. What you find is more frightening than can be imagined and much harder to stop as you must battle not only the Nazi hordes, but also the stuff of nightmares, not including the monstrosities that twisted Nazi scientists have created.",
                price: 1299,
                images:
                    "assets/images/CultClassics/Return to Castle Wolfenstein.jpg",
                color: const Color(0xff6b5415),
                genres: ["First-Person Shooter", "Action", "WWII"],
              ),
              ProductBox(
                name: "Persona 4",
                description:
                    "A supernatural mystery RPG where students investigate bizarre murders.",
                detail:
                    "Persona 4 Golden takes place in a fictional Japanese countryside and is indirectly related to both Shin Megami Tensei: Persona 3 and the Persona 2 games. The player-named main protagonist is a high-school student who moved into the countryside from the city for a year. During his year-long stay, he becomes involved in investigating mysterious murders while harnessing the power of summoning Persona.",
                price: 899,
                images: "assets/images/CultClassics/Persona 4.jpg",
                color: const Color(0xffd7bdb6),
                genres: ["JRPG", "Turn-Based", "Social Simulation"],
              ),
              ProductBox(
                name: "System Shock 2",
                description:
                    "A sci-fi horror RPG where a lone soldier battles a rogue AI.",
                detail:
                    "An agent is deployed on a mission to explore a distant planet, but instead wakes up from his cryosleep five months later only to discover that the ship's artificial intelligence has been corrupted and the humans infected by an alien race.",
                price: 999,
                images: "assets/images/CultClassics/System Shock 2.jpg",
                color: const Color(0xff6de4e8),
                genres: ["RPG", "Sci-Fi", "Horror"],
              ),
              ProductBox(
                name: "S.T.A.L.K.E.R.: Shadow of Chernobyl",
                description:
                    "A post-apocalyptic survival shooter in the radioactive Zone.",
                detail:
                    "It is the year 2012, 6 years after the Chernobyl Nuclear Power Plant suffers a second meltdown. It caused an environmental disaster that created bizarre anomalies, mutants and created valuable artifacts. You are a 'stalker' a man who comes to 'The Zone' to make money from the artifact trade, but you lose your memory in a crash on the way to the Zone, and when you wake up you find one message on your PDA - 'Kill Strelok'.",
                price: 1499,
                images:
                    "assets/images/CultClassics/S.T.A.L.K.E.R. Shadow of Chernobyl.jpg",
                color: const Color(0xffecbfbf),
                genres: ["FPS", "Survival", "Post-Apocalyptic"],
              ),
              ProductBox(
                name: "Eternal Darkness: Sanity's Requiem",
                description:
                    "A psychological horror game spanning different eras and realities.",
                detail:
                    "In the year 2000, college student Alex Roivas is called back to her grandfather's mansion when she discovers he has been horribly murdered. During her search for answers, she comes across the Tome of Eternal Darkness, a demonic book that describes the fate of all those who came across it. The tale begins in 33 B.C., when Roman General Pious Augustus sold his soul to an elder god. Each subsequent tale explores how 11 others, including a Cambodian dancing girl from the A.D. 1100s, an Inquisition era monk, a World War I journalist, previous members of the Roivas line and even Alex herself come to encounter and take part in the maddening fight against the eternal darkness.",
                price: 599,
                images:
                    "assets/images/CultClassics/Eternal Darkness Sanity's Requiem.jpg",
                color: const Color(0xffb26547),
                genres: ["Survival Horror", "Psychological Horror", "Fantasy"],
              ),
              ProductBox(
                name: "Okami",
                description:
                    "A visually stunning adventure where Amaterasu restores life to a cursed land.",
                detail:
                    "A cel-shaded action game set in feudal Japan, in which the wolf deity Amaterasu defends the land from evil forces.",
                price: 399,
                images: "assets/images/CultClassics/Okami.jpg",
                color: const Color(0xff365c6e),
                genres: ["Action-Adventure", "Mythology", "Fantasy"],
              ),
              ProductBox(
                name: "Vampire: The Masquerade – Bloodlines",
                description:
                    "A dark RPG where a fledgling vampire navigates supernatural politics.",
                detail:
                    "After having been turned into a vampire without the permission of the local vampire prince, you and your sire are brought to trial before the Los Angeles Camarilla, an organization of vampires dedicated to enforcing the Masquerade, the code of laws keeping the existance of vampires secret from the mortal world. Although Prince Sebastian LaCroix executes your sire, an outburst from Anarch leader Nines Roderiguez convinces him to spare your life. After initially sending you on a successful mission to destroy a Sabbat warehouse in Santa Monica, LaCroix begins to see your worth and enlists your aid in finding the Ankaran sarcophagus, which may hold the remains of an ancient vampire and give power to the one who possesses it.",
                price: 399,
                images:
                    "assets/images/CultClassics/Vampire The Masquerade - Bloodlines.jpg",
                color: const Color(0xff365c6e),
                genres: ["RPG", "Horror", "Vampires"],
              ),
              ProductBox(
                name: "Psychonauts",
                description:
                    "A quirky platformer where Raz explores minds to uncover a sinister plot.",
                detail:
                    "Against his father's wishes, a young psychic prodigy named Razputin ('Raz' for short) leaves his life in the circus and sneaks into Whispering Rock, a summer camp where young psychics like him can learn to use their powers, and maybe someday become 'Psychonauts', psychic secret agents who battle the forces of evil. Raz manages to impress the camp's head counselor, Morceau Oleander, as well as visiting Psychonauts Sasha Nein and Milla Vodello, who agree to let him stay... but only until his father comes to pick him up. But something's amiss at Whispering Rock: a sinister force is stealing the brains from Raz's fellow campers, leaving them mindless, TV-obsessed zombies. Raz decides to put his growing arsenal of psychic powers to good use and investigate the strange goings-on. Along the way, he'll journey into the minds of those around him, and face perils ranging from mad scientists to giant monsters to the psychotic mental constructs lurking within the deranged minds of insane asylum inmates, and thwart an evil plot for world domination.",
                price: 899,
                images: "assets/images/CultClassics/Psychonauts.jpg",
                color: const Color(0xff3e5838),
                genres: ["Platformer", "Adventure", "Comedy"],
              ),
              ProductBox(
                name: "Beyond Good & Evil",
                description:
                    "A sci-fi adventure where Jade exposes a vast government conspiracy.",
                detail:
                    "On the small island civilization of Hillys, the DomZ creatures are a ruthless alien race which have invaded the Hillyan people. The government has set up the Alpha Section, which is a society 'devoted to the safety of Hillys', or at least that's what they want you to think. The Alpha Sections are always late to the scene when an invasion occurs, and they're shields are always 'broken'. The Alpha Sections also work for and are controlled by the DomZ themselves!! Your job as Jade, the photojournalist, is to uncover the conspiracy your government puts before you an expose the real horrors the Alpha Sections corrupt, and show Hillys the truth to the Iris network, the group devoted to good. As you play through the levels, you're required to take photos of DomZ activity to show Hillyans the truth, with many twists, turns, and obstacles, with a bit of heartbreak, on the way.",
                price: 799,
                images: "assets/images/CultClassics/Beyond Good & Evil.jpg",
                color: const Color(0xff707d8d),
                genres: ["Action-Adventure", "Sci-Fi", "Stealth"],
              ),
              ProductBox(
                name: "No One Lives Forever",
                description:
                    "A stylish spy adventure following Cate Archer against global threats.",
                detail:
                    "A 1960's female spy must battle an eccentric terrorist organization in this classic first person shooter, a stylish and tongue-in-cheek spoof of Cold War era James Bond.",
                price: 499,
                images: "assets/images/CultClassics/No One Lives Forever.jpg",
                color: const Color(0xff701a1a),
                genres: ["First-Person Shooter", "Spy", "Comedy"],
              ),
              ProductBox(
                name: "Ico",
                description:
                    "A touching puzzle-adventure where a boy helps a mysterious girl escape a castle.",
                detail:
                    "On a distant island village, there is a legend that anyone born with horns will bring about calamity. Such a boy was born named Ico. To ensure the safety of their village, Ico is offered as a sacrifice at a nearby castle. However, he escapes and finds a young girl named Yorda imprisoned there as well. While trying to escort her out, they are attacked by the angered spirits of the castle and Yorda's mother, the queen of the castle. Together, Ico and Yorda must work to flee from the castle before they can be claimed by the spirits.",
                price: 499,
                images: "assets/images/CultClassics/Ico.jpg",
                color: const Color(0xffb7b49f),
                genres: ["Puzzle", "Adventure", "Fantasy"],
              ),
              ProductBox(
                name: "Nier",
                description:
                    "A tragic action RPG where a warrior seeks a cure for his ailing daughter.",
                detail:
                    "Set in a post apocalyptic world, the protagonist, Nier, sets out to cure his daughters illness called The Black Scrawl. He roams the world with two allies completing mercenary work and fighting mysterious monsters known as Shades.",
                price: 499,
                images: "assets/images/CultClassics/Nier.jpg",
                color: const Color(0xff0e0202),
                genres: ["Action RPG", "Fantasy", "Sci-Fi"],
              ),
              ProductBox(
                name: "Lost Odyssey",
                description:
                    "A heartfelt RPG following an immortal warrior rediscovering his past.",
                detail:
                    "After a meteor wipes out the majority of forces from the nations of Uhra and Khent, Kaim joins Seth and Jansen to investigate the Grand Staff at the behest of the council of Uhra. At the Staff, the three are captured by hostile scouts who take them to Numara, where they meet with Queen Ming, another immortal who has lost her memory. The queen allows the group to go free in Numara, where Kaim meets Cooke and Mack, his grandchildren, who join the group after the death of their mother. News eventually arrives in Numara that Gongora has encouraged Tolten to reestablish the monarchy in Uhra and prepare for war. The general of Numara, Kakanas, uses the opportunity to usurp control of the country from Ming, forcing her to flee with Kaim and others as enemies of the state. The group travels towards the nation of Gohtza, hoping to seek help from its King. On the way, Sarah Sisulart, Kaim's wife, joins the party after she is recovered from the Old Sorceress Mansion.",
                price: 499,
                images: "assets/images/CultClassics/Lost Odyssey.jpg",
                color: const Color(0xffedeaea),
                genres: ["JRPG", "Fantasy", "Turn-Based Combat"],
              ),
              ProductBox(
                name: "Alan Wake",
                description:
                    "A psychological thriller where a writer battles darkness to find his wife.",
                detail:
                    "While on vacation in the small town of Bright Falls, a struggling writer must investigate the mysterious disappearance of his wife while events from his latest manuscript, which he can't remember writing, begin to come true.",
                price: 499,
                images: "assets/images/CultClassics/Alan Wake.jpg",
                color: const Color(0xff3a95e0),
                genres: ["Action-Adventure", "Psychological Horror", "Mystery"],
              ),
              ProductBox(
                name: "Enslaved: Odyssey to the West",
                description:
                    "A post-apocalyptic adventure where Monkey protects Trip on a perilous journey.",
                detail:
                    "Loosely based on the classic Chinese novel 'Journey to the West', players are cast as Monkey; a strong, brutish loner who is forced to partner with the tech-savvy yet physically weak Trip on a journey to freedom.",
                price: 499,
                images:
                    "assets/images/CultClassics/Enslaved Odyssey to the West.jpg",
                color: const Color(0xff701a1a),
                genres: ["Action-Adventure", "Sci-Fi", "Platformer"],
              ),
              ProductBox(
                name: "Condemned: Criminal Origins",
                description:
                    "A gritty psychological horror where a detective hunts a serial killer.",
                detail:
                    "FBI Agent Ethan Thomas is framed for the murder of a detective and officer. In order to uncover who murdered the two officers with his gun, he has to do whatever it takes and fight his way through violent, psychotic individuals.",
                price: 499,
                images:
                    "assets/images/CultClassics/Condemned Criminal Origins.jpg",
                color: const Color(0xff48701a),
                genres: ["Survival Horror", "First-Person", "Melee Combat"],
              ),
            ],
          )),
    );
  }
}

class IndiePage extends StatelessWidget {
  const IndiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Most Popular Video Games")),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          child: Column(
            children: <Widget>[
              ProductBox(
                name: "Cave Story",
                description:
                    "A retro-inspired action-platformer following a silent hero uncovering a dark secret.",
                detail:
                    "An amnesiac robot must fight to protect a peaceful race of rabbit-like creatures called Mimiga from being weaponized by the evil, power-hungry Doctor.",
                price: 1099,
                images: "assets/images/Indie/Cave Story.jpg",
                color: const Color(0xff4edce7),
                genres: ["Platformer", "Metroidvania", "Adventure"],
              ),
              ProductBox(
                name: "VVVVVV",
                description:
                    "A gravity-defying platformer where Captain Viridian must rescue his lost crew.",
                detail:
                    "VVVVVV follows Captain Viridian, the captain of the DSS Souleye. After a malfunction on their ship, Viridian is separated from his 5 crew members and must find them again, while collecting Trinkets and discovering new dimensions along the way.",
                price: 499,
                images: "assets/images/Indie/VVVVVV.jpg",
                color: const Color(0xff567a6f),
                genres: ["Platformer", "Puzzle", "Retro"],
              ),
              ProductBox(
                name: "Braid",
                description:
                    "A time-bending puzzle-platformer following Tim on a quest to save a princess.",
                detail:
                    "A man, Tim, goes on a quest to save a princess from an evil monster.",
                price: 1099,
                images: "assets/images/Indie/Braid.jpg",
                color: const Color(0xff3676d7),
                genres: ["Puzzle", "Physics-Based", "Indie"],
              ),
              ProductBox(
                name: "World of Goo",
                description:
                    "A physics-based puzzle game where players build structures using living goo balls.",
                detail:
                    "World of Goo is a physics based puzzle / construction game. You must explore 5 islands and construct jiggly architecture, bridges, straightaways, makeshift high-rises, and transport all of the goo balls to the World of Goo Corporation.",
                price: 100,
                images: "assets/images/Indie/World of Goo.jpg",
                color: const Color(0xffc87b76),
                genres: ["Puzzle", "Physics-Based", "Indie"],
              ),
              ProductBox(
                name: "Undertale",
                description:
                    "A unique RPG where choices determine the fate of monsters and the world.",
                detail:
                    "Enter the Underground, a massive subterranean cave where monsters who once lived harmoniously with humans on the surface have been banished after losing a war with humanity.",
                price: 1664,
                images: "assets/images/Indie/Undertale.jpg",
                color: const Color(0xffae6623),
                genres: ["RPG", "Bullet Hell", "Narrative-Driven"],
              ),
              ProductBox(
                name: "Hollow Knight",
                description:
                    "A haunting metroidvania following a tiny warrior exploring the ruins of Hallownest.",
                detail:
                    "In the ancient kingdom of Hallownest, an infection created by the dream goddess The Radiance is tuning the kingdom's citizens into mindless husks. The Pale King, a higher being who gave the bugs in the kingdom a will and a voice, decided to fight back against the infection by creating the vessels, creatures who are filled with void and, from birth, have no will to break, no mind to think, and no voice to cry suffering. The Pale King made millions of vessels in order to find a pure one. But now the pure vessel is failing, infection is leaking across the kingdom, and the radiance controls almost all of the bugs of Hallownest. Now a lone vessel must journey into the ruins of the kingdom and discover its past, as well as claim responsibility for it's future. It must replace the failed vessel, contain the radiance, and take up the mantle of the Hollow Knight.",
                price: 1299,
                images: "assets/images/Indie/Hollow Knight.jpg",
                color: const Color(0xff6fab34),
                genres: ["Metroidvania", "Action-Adventure", "Dark Fantasy"],
              ),
              ProductBox(
                name: "Celeste",
                description:
                    "A heartfelt platformer following Madeline’s climb up a treacherous mountain.",
                detail:
                    "A young woman undertakes the challenge of climbing a mountain with dangerous perils and mysterious powers. Throughout her journey, she is confronted by Part Of Her, her bad side doppelgänger, given a body by the power of the mountain, who is everything she needed to leave behind.",
                price: 1999,
                images: "assets/images/Indie/Celeste.jpg",
                color: const Color(0xff441010),
                genres: ["Platformer", "Precision Platformer", "Adventure"],
              ),
              ProductBox(
                name: "The Stanley Parable",
                description:
                    "A mind-bending narrative game where a simple office worker’s choices shape reality.",
                detail:
                    "The Stanley Parable is a story-based video game designed and written by developers Davey Wreden and William Pugh. The game carries themes such as choice in video games, the relationship between a game creator and player, and predestination/fate. In the game, the player guides a silent protagonist named Stanley alongside narration by British actor Kevan Brighting. As the story progresses, the player is confronted with diverging pathways. The player may contradict the narrator's directions, which if disobeyed will then be incorporated into the story. Depending on the choices made, the player will encounter different endings before the game restarts to the beginning.",
                price: 1299,
                images: "assets/images/Indie/The Stanley Parable.jpg",
                color: const Color(0xff346bab),
                genres: ["Narrative", "Walking Simulator", "Satire"],
              ),
              ProductBox(
                name: "Papers, Please",
                description:
                    "A dystopian puzzle game where an immigration officer must balance duty and morality.",
                detail:
                    "The communist state of Arstotzka has just ended a 6-year war with neighboring Kolechia and reclaimed its rightful half of the border town, Grestin. Your job as immigration inspector is to control the flow of people entering the Arstotzkan side of Grestin from Kolechia. Among the throngs of immigrants and visitors looking for work are hidden smugglers, spies, and terrorists, Using only the documents provided by travelers and the Ministry of Admission's primitive inspect, search, and fingerprint systems you must decide who can enter Arstotzka and who will be turned away or arrested, Glory to Arstotzka.",
                price: 1299,
                images: "assets/images/Indie/Papers, Please.jpg",
                color: const Color(0xff978d57),
                genres: ["Simulation", "Puzzle", "Dystopian"],
              ),
              ProductBox(
                name: "Return of the Obra Dinn",
                description:
                    "A detective adventure where players unravel the fate of a ghost ship’s crew.",
                detail:
                    "Return of the Obra Dinn is set aboard a fictional East India Company ghost ship whose crew and passengers have all mysteriously died, with the game's objective being to discover how.",
                price: 1299,
                images: "assets/images/Indie/Return of the Obra Dinn.jpg",
                color: const Color(0xff6b5415),
                genres: ["Mystery", "Puzzle", "Adventure"],
              ),
              ProductBox(
                name: "Outer Wilds",
                description:
                    "A time-looping space exploration game uncovering the mysteries of a dying solar system.",
                detail:
                    "Outer Wilds is an exploration game about curiosity, roasting marshmallows, and unraveling the mysteries of the cosmos.",
                price: 899,
                images: "assets/images/Indie/Outer Wilds.jpg",
                color: const Color(0xffd7bdb6),
                genres: ["Exploration", "Mystery", "Sci-Fi"],
              ),
              ProductBox(
                name: "Disco Elysium",
                description:
                    "A deep RPG where a detective investigates a murder while battling his own psyche.",
                detail:
                    "You're a detective tasked with solving a murder in the strange world of Elysium. Utilize a new and innovative skill system to be the detective you want to be. Become a hero or an absolute disaster of a human being.",
                price: 999,
                images: "assets/images/Indie/Disco Elysium.jpg",
                color: const Color(0xff6de4e8),
                genres: ["RPG", "Narrative-Driven", "Detective"],
              ),
              ProductBox(
                name: "Katana Zero",
                description:
                    "A neon-drenched action game where a time-manipulating assassin uncovers a dark conspiracy.",
                detail:
                    "Katana zero takes place in the dystopic, neo-noir metropolis of New Mecca. The games plot is heavily affected by an invasion of an unnamed Asiatic nation, referred to as the 'Cromag War', launched by either New Mecca or whatever controlling government rules it. New Mecca's faction is implied to have lost the ensuing conflict. The player controls a katana-wielding assassin called Subject Zero, nicknamed 'The Dragon', as he completes various assassinations given to him by his psychiatrist, who also supplies him with 'Chronos', a drug that allows him to slow down time and predict the future.",
                price: 1499,
                images: "assets/images/Indie/Katana Zero.jpg",
                color: const Color(0xffecbfbf),
                genres: ["Action", "Cyberpunk", "Hack and Slash"],
              ),
              ProductBox(
                name: "A Short Hike",
                description:
                    "A relaxing exploration game following Claire’s journey to the mountain’s peak.",
                detail:
                    "Hike, climb, and soar through the peaceful mountainside landscapes of Hawk Peak Provincial Park. Follow the marked trails or explore the backcountry as you make your way to the summit. Along the way, meet other hikers, discover hidden treasures, and take in the world around you.",
                price: 599,
                images: "assets/images/Indie/A Short Hike.jpg",
                color: const Color(0xffb26547),
                genres: ["Exploration", "Relaxing", "Adventure"],
              ),
              ProductBox(
                name: "Subnautica",
                description:
                    "A survival game where players explore and uncover secrets in a vast alien ocean.",
                detail:
                    "Riley Robinson is the only survivor of the crash landing ship 'The Aurora', a ship assigned with the task of rescuing The Degasi on planet 4546B: An ocean planet filled with marine life. However things are not as they seem on this planet, and The Degasi were not the first intelligent life forms to set foot on this planet.",
                price: 399,
                images: "assets/images/Indie/Subnautica.jpg",
                color: const Color(0xff365c6e),
                genres: ["Survival", "Open-World", "Exploration"],
              ),
              ProductBox(
                name: "Spiritfarer",
                description:
                    "A cozy management sim where Stella helps lost souls find peace in the afterlife.",
                detail:
                    "As ferry master to the deceased, build a boat to explore the world, care for your spirit friends, and guide them across mystical seas to finally release them into the afterlife. What will you leave behind?",
                price: 399,
                images: "assets/images/Indie/Spiritfarer.jpg",
                color: const Color(0xff365c6e),
                genres: ["Management", "Adventure", "Emotional"],
              ),
              ProductBox(
                name: "Limbo",
                description:
                    "A dark puzzle-platformer following a boy’s eerie journey through a shadowy world.",
                detail:
                    "A boy wakes up in a forest and sets off to find his sister.",
                price: 899,
                images: "assets/images/Indie/Limbo.jpg",
                color: const Color(0xff3e5838),
                genres: ["Puzzle-Platformer", "Horror", "Adventure"],
              ),
              ProductBox(
                name: "What Remains of Edith Finch",
                description:
                    "A narrative-driven exploration game uncovering a tragic family history.",
                detail:
                    "Edith Finch travels back to the Finch family home in Washington to explore her ancestral history after recent family events drive her to learn more about herself and the Finches.",
                price: 799,
                images: "assets/images/Indie/What Remains of Edith Finch.jpg",
                color: const Color(0xff707d8d),
                genres: ["Narrative", "Adventure", "Walking Simulator"],
              ),
              ProductBox(
                name: "Oxenfree",
                description:
                    "A supernatural thriller where a group of friends unwittingly open a ghostly rift.",
                detail:
                    "A supernatural teen thriller about a group of friends who unwittingly open a ghostly rift. Players control Alex, who brings her new stepbrother Jonas to an overnight party gone wrong off the coast of their hometown.",
                price: 499,
                images: "assets/images/Indie/Oxenfree.jpg",
                color: const Color(0xff701a1a),
                genres: ["Supernatural", "Adventure", "Thriller"],
              ),
              ProductBox(
                name: "Tunic",
                description:
                    "An isometric action-adventure where a small fox uncovers ancient mysteries.",
                detail:
                    "Explore a land filled with lost legends, ancient powers, and ferocious monsters in TUNIC, an isometric action game about a small fox on a big adventure. Stranded on a mysterious beach, armed with only your own curiosity, you will confront colossal beasts, collect strange and powerful items, and unravel long-lost secrets.",
                price: 499,
                images: "assets/images/Indie/Tunic.jpg",
                color: const Color(0xffb7b49f),
                genres: ["Action-Adventure", "Puzzle", "Fantasy"],
              ),
              ProductBox(
                name: "Moonlighter",
                description:
                    "An action-RPG following a shopkeeper balancing dungeon crawling and commerce.",
                detail:
                    "Will is an adventurous shopkeeper who secretly dreams of becoming a hero. By day, he runs a shop that sells curiosities from the ancient ruins outside town, and by night, he explores those same ruins.",
                price: 499,
                images: "assets/images/Indie/Moonlighter.jpg",
                color: const Color(0xff0e0202),
                genres: ["RPG", "Roguelike", "Simulation"],
              ),
              ProductBox(
                name: "The Messenger",
                description:
                    "A time-twisting action-platformer where a ninja battles demons across generations.",
                detail:
                    "As a demon army besieges his village, a young ninja ventures through a cursed world, to deliver a scroll paramount to his clan's survival. What begins as a classic action platformer soon unravels into an expansive time-traveling adventure full of thrills, surprises, and humor.",
                price: 499,
                images: "assets/images/Indie/The Messenger.jpg",
                color: const Color(0xffedeaea),
                genres: ["Action-Platformer", "Metroidvania", "Retro"],
              ),
              ProductBox(
                name: "Transistor",
                description:
                    "A stylish sci-fi action RPG where a singer wields a mysterious talking weapon.",
                detail:
                    "Transistor is a sci-fi themed action RPG that invites players to wield an extraordinary weapon of unknown origin as they fight through a stunning futuristic city.",
                price: 499,
                images: "assets/images/Indie/Transistor.jpg",
                color: const Color(0xff3a95e0),
                genres: ["Action RPG", "Sci-Fi", "Tactical"],
              ),
              ProductBox(
                name: "Toem",
                description:
                    "A charming photography adventure where players explore a hand-drawn world capturing special moments.",
                detail:
                    "Set off on a delightful expedition and use your photographic eye to uncover the mysteries of the magical TOEM in this hand-drawn adventure game.",
                price: 499,
                images: "assets/images/Indie/Toem.jpg",
                color: const Color(0xff701a1a),
                genres: ["Adventure", "Photography", "Puzzle"],
              ),
              ProductBox(
                name: "Hyper Light Drifter",
                description:
                    "A stylish action RPG following a drifter battling through a mysterious, ruined world.",
                detail:
                    "Hyper Light Drifter is an action adventure RPG in the vein of the best 16-bit classics, with modernized mechanics and designs on a much grander scale.",
                price: 499,
                images: "assets/images/Indie/Hyper Light Drifter.jpg",
                color: const Color(0xff48701a),
                genres: ["Action RPG", "Indie", "Hack and Slash"],
              ),
            ],
          )),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.detail,
    required this.price,
    required this.images,
    required this.color,
    required this.genres,
  }) : super(key: key);

  final String name;
  final String description;
  final String detail;
  final int price;
  final String images;
  final Color color;
  final List<String> genres;

  Future<String> _downloadImage(String assetPath) async {
    // Get the application documents directory
    final directory = await getApplicationDocumentsDirectory();
    final fileName =
        assetPath.split('/').last; // Extract file name from the asset path
    final filePath = '${directory.path}/$fileName';

    // Check if the image is already downloaded
    final file = File(filePath);
    if (await file.exists()) {
      return filePath; // If the image is already in local storage, return its path
    }

    // Load the image from assets
    final ByteData data = await rootBundle.load(assetPath);
    final buffer = data.buffer.asUint8List();

    // Save the image to local storage
    await file.writeAsBytes(buffer);

    return filePath; // Return the local path where the image is stored
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 160,
      color: color,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              images,
              height: 80,
              width: 80,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(description,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                    Text("Price: ₹$price"),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              name: name,
                              description: description,
                              detail: detail,
                              price: price,
                              image: images,
                              color: color,
                              genres: genres,
                            ),
                          ),
                        );
                      },
                      child: const Text("View Details"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String detail;
  final int price;
  final String image;
  final Color color;
  final List<String> genres;

  const DetailsPage({
    Key? key,
    required this.name,
    required this.description,
    required this.detail,
    required this.price,
    required this.image,
    required this.color,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: color,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(image, height: 200),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(description, style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 16),
                  Text(
                    "Genres:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    children: genres
                        .map((genre) => Chip(label: Text(genre)))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    detail,
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Price: ₹${price.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
