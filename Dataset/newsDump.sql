-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: f1_db
-- ------------------------------------------------------
-- Server version	8.0.45
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--
DROP TABLE IF EXISTS `news`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `news` (
    `id` int NOT NULL AUTO_INCREMENT,
    `title` varchar(255) CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
      `date` date NOT NULL,
      `content` text CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
      `image_url` varchar(512) CHARACTER
    SET
      utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
      PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--
LOCK TABLES `news` WRITE;

/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO
  `news`
VALUES
  (
    4,
    'Hamilton admits he thought Ferrari ‘would be stronger’ in Miami Sprint Qualifying as Leclerc details issues',
    '2026-05-02',
    'Lewis Hamilton has admitted that he thought Ferrari “would be stronger” in Sprint Qualifying at the Miami Grand Prix, with the Briton ending the session in P7 while team mate Charles Leclerc had to settle for P5 despite earlier setting the pace.\n\nThings had initially appeared promising for the Scuderia – one of several teams to bring significant upgrade packages this weekend – as the action got underway in Miami, Leclerc having topped the timesheets in Friday’s sole practice session.\n\nThe Monegasque again went quickest during the SQ2 segment of Sprint Qualifying, but both Ferraris were outpaced in the top 10 shootout by rivals including McLaren, with Lando Norris claiming pole position for Saturday’s Sprint.\n\nReflecting on whether he had felt that the SF-26 was performing as expected during the session, Hamilton said afterwards: “We didn’t really know what to expect. I had hoped that we would be better, but the car didn’t feel particularly great.”\n\nThe seven-time World Champion went on to say that he had “no idea” if the team’s new package would perform better at other tracks, adding: “I thought we would be stronger than we were today.\n\n“We’ve got to do some work overnight to try and figure out why we’re not that quick. I was hopeful coming in, positive that we could be much higher, but not meant to be.”\n\nLeclerc also conceded that Ferrari have progress to make when it comes to Qualifying form, with the eight-time race winner explaining the areas where the team have been struggling.\n\n“The upgrades are fine, it’s just that everybody brought upgrades,” said Leclerc. “We kind of expected that situation where Mercedes is probably still the car to beat. McLaren did a very big step forward, but I felt like they didn’t optimise their first races of the season, so they were always there but they didn’t put everything together.\n\n“On our side, today particularly we’ve struggled with tyres – medium were working very well, on the soft it wasn’t a nice feeling, so on that we’ve got to look at it. We know that in the race pace we are stronger, but in terms of Qualifying there is still some work to be done.”\n\nQuizzed on how he sees the rest of the weekend unfolding based on what the squad learned during Friday’s running, Leclerc sounded an optimistic note about the possibilities in race form.\n\n“I think in Qualifying tomorrow we can try and fine-tune a little bit and find a bit of performance, but I hope that in the race we can come back in the front,” he explained. “We’ve got the pace to do that, let’s just see if we are able to overtake.”',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20double%20split.webp'
  ),
  (
    8,
    'Albon drops to P19 for Miami Sprint after track limit violation',
    '2026-04-26',
    'Alex Albon has been demoted down to P19 for the Miami Sprint after the stewards deemed the Williams driver exceeded track limits during Sprint Qualifying.\n\nAlbon progressed through to SQ2 and had initially taken 14th on Friday but, following the session, it was deemed he exceeded track limits at Turn 6 with his final effort in the previous segment.\n\nThe decision to strip Albon of his best lap in SQ1 and all subsequent laps in SQ2 means he will start Saturday\'s Sprint at the Miami International Autodrome from P19.\n\nAlbon had squeezed into SQ2 with his final effort, a 1m 30.988s, leaving him P16 and demoting Racing Bulls\' Liam Lawson by less than one-tenth.\n\nThe Kiwi driver noticeably stayed in his car until just after the start of SQ2, before it was subsequently confirmed after Sprint Qualifying that Albon\'s effort had exceeded track limits.\n\nThe stewards\' document read: \"During SQ1, Car 23 clearly exceeded track limits in Turn 6. However this was not reported to the Stewards until SQ2 had commenced.\n\n\"Car 23’s time recorded on the lap that track limits were exceeded was sufficient to place it in SQ2. Hence at the time the Stewards were informed that Car 23 had left the track and that its lap should have been potentially deleted, it was already on track in SQ2.\n\n\"As this was an unusual situation, the Stewards have decided to settle the matter by exercising their authority under Article 11.7.1.a of the International Sporting Code by deleting the lap time of the lap in question in SQ1.\n\n\"As Car 23 should not have proceeded into SQ2, all lap times from SQ2 will consequently be deleted.\"',
    'https://media.formula1.com/image/upload/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20single%20image%20-%202026-05-02T004621.095.webp'
  ),
  (
    9,
    '\'Looking strong compared to the midfield cars\' – Alpine duo optimistic after reaching SQ3 for Miami Sprint',
    '2026-04-28',
    'Franco Colapinto believes that Alpine are \"looking strong compared to the midfield cars\" this weekend ahead of the Miami Grand Prix, with the Argentinian and team mate Pierre Gasly both set to start in the top 10 for the Miami Sprint.\n\nColapinto will start P8 for Saturday\'s Sprint at the Miami International Autodrome, equalling his best-ever Qualifying performance in any format and marking the first time both Alpine cars have reached the top 10 ahead of a Grand Prix or Sprint this season.\n\nColapinto was left thrilled having overcome a problem with his A526 in Friday\'s sole practice session as Alpine brought new upgrades this weekend.\n\n\"I\'m happy because we turned around something that was quite tough and it took us a while to understand and I think we are finally getting in the the rhythm and understanding some of the pace that we lacked,\" he said after Sprint Qualifying.\n\n\"Doing good laps all day on a track that I know, on a Sprint weekend which is more difficult. Just all very positive today.\n\n\"I think it\'s been a good break for us to kind of reset and go again, understand where we need to work and we worked I think really well in the right direction. I\'m pleased with the performance today but of course it\'s just the start of the weekend.\n\n\"I think the pace is looking strong, compared to the midfield cars we are looking good.\"\n\nAlpine have only claimed one double-points finish this season, in the Chinese Grand Prix, but the squad sits joint fifth in the Teams\' standings, largely courtesy of Gasly scoring points in all three Grands Prix.\n\nThe Frenchman will start the Miami Sprint from P10 but was left unhappy with the performance, believing there is far more potential to come if the team can overcome excessive wheelspin.\n\n\"Not really good because it has been very difficult since this morning. We\'ve seen something is not quite working on my side and I\'m having a lot of wheelspin,\" he said.\n\n\"Unfortunately we didn\'t really have enough time to get to the bottom of it but it hasn\'t felt good so we\'ll have to work hard to improve it for tomorrow because I think I\'m going to struggle in the race as it stands.\n\n\"Still, [we] managed to get the two cars in the top 10 which is good but we just have a lot more potential to unlock.\"',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miscellaneous/GettyImages-2268535429.webp'
  ),
  (
    10,
    'Russell explains struggles in Miami Sprint Qualifying as he admits being ‘surprised’ by progress of rivals',
    '2026-04-30',
    'George Russell has explained the issues that led to him “struggling” during Sprint Qualifying at the Miami Grand Prix, with the Briton – who ended the session in sixth – admitting to being “surprised” by how Mercedes’ rivals have progressed.\n\nAfter some issues for the Silver Arrows in Friday’s sole practice session, the championship leaders were somewhat on the back foot when SQ1 got underway a few hours later.\n\nIt would prove to be McLaren and Ferrari – both teams that have brought upgrade packages this weekend – who set the pace through Sprint Qualifying, with Lando Norris ultimately coming out on top to seal pole position for Saturday’s Sprint.\n\nWhile Kimi Antonelli slotted into P2 during the closing moments of SQ3, his Mercedes team mate Russell had to settle for P6 and later reflected on the challenges of the day as he spoke to the media afterwards.\n\n“It’s pretty surprising how big a jump McLaren and Ferrari have made, so that’s pretty damn impressive,” the 28-year-old said. “We knew they’d probably close the gap, but all day they’ve been quicker than us.\n\n“On my side I’ve been struggling today – Miami’s not a track that I love, to be honest, especially in these hotter conditions. But it’s only Sprint Qualifying, so let’s see what tomorrow brings.”\n\nPushed on the key areas that were causing those struggles, Russell explained: “It was just overheating the tyres a lot in that twisty section in the middle – I was struggling to get the right balance with the car so, yeah, not much more to say than that really.\n\n“As I said, I’ve just been quite surprised by the progress of the others, but another day tomorrow.”\n\nWhen asked if he felt that it would take a lot to bring the fight to those ahead of him on Saturday, the British driver conceded: “I don’t know. I’m not in a great starting position.\n\n“Sprint races generally don’t offer that much, but obviously China was a bit more interesting this year, which gives an opportunity to have a bit of a race. So I want to get off the line – hopefully don’t lose any more positions – and see what we can do.”',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_of_Miami___Previews/2273922620.webp'
  ),
  (
    12,
    'McLaren drivers reflect on ‘kick back down to reality’ in Miami Qualifying hours after Sprint success',
    '2026-05-01',
    'Lando Norris and Oscar Piastri have given their take on the change in fortunes that saw McLaren face a trickier Qualifying in Miami hours after winning the Sprint, with Piastri calling it a “kick back down to reality”.\n\nThe weekend got off to a strong start for the Woking-based squad – one of many outfits to bring an upgrade package to the event – as Norris sealed pole position in Friday’s Sprint Qualifying, which he then converted into a win in the Sprint earlier on Saturday.\n\nHowever, McLaren experienced a tougher outing in Qualifying later in the day amid a competitive session that saw Mercedes, Ferrari and Red Bull all seemingly in contention. Kimi Antonelli ultimately claimed pole, while Norris placed in fourth and Piastri wound up in seventh place.\n\nAsked after the session about where he felt the car had not been as strong relative to earlier in the weekend, Norris explained: “I’ve not looked at comparing to the others just yet, but a bit everywhere, honestly. I feel like I was doing a better job, but just we were slower.\n\n“I think today was probably a little bit more where we should be. I know it was close, so you can probably say we could have been third. I think the weird thing is how much pace we lost from yesterday to today really, so we need to understand that first of all.\n\n“Some of that is kind of conditions – it’s still a lot hotter than it was at this point yesterday, and the wind was a little bit different. But all in all, it was just a lot trickier – a much more messy session from our side as a team, myself included.\n\n“Some things to understand, but I think it wasn’t like we did a bad job, it was just yesterday I think everyone else did do a bad job! We capitalised, and today we are more where we deserve to be.”\n\nWhile Norris acknowledged that “some little tweaks” had been made to the MCL40 between the Sprint and Qualifying, he joked that this was “nothing that should make us slower”.\n\nOn the other side of the garage, there was a tense end to Q1 for Piastri as the Australian only just made it through to Q2. After progressing from there to the top-10 shootout, Piastri did not have the pace to be in the final battle for pole but suggested that he had expected the margins to be fine.\n\n“We knew it was going to be tight,” the nine-time race winner said. “I think Antonelli’s lap is more what we expected from Mercedes, to be honest. Obviously Lando was pretty close to P2 or P3.',
    'https://media.formula1.com/image/upload/t_16by9Centre/c_lfill,w_3392/q_auto/v1740000001/fom-website/2026/Miami/16x9%20double%20split%20(1).webp'
  ),
  (
    13,
    'OFFICIAL GRID: Who starts where in Miami after Hadjar\'s Qualifying DSQ',
    '2026-04-29',
    'For the third Grand Prix in a row it’s Mercedes’ Kimi Antonelli on pole after the Italian teenager proved uncatchable around the Miami International Autodrome – despite the best efforts of a resurgent Max Verstappen, who put his much-improved Red Bull on the front row.\n\nCharles Leclerc is the lead Ferrari in third, after Lando Norris and McLaren failed to repeat their spectacular Sprint form, the reigning World Champion qualifying fourth with team mate Oscar Piastri seventh. Between the papaya cars lie Mercedes’ George Russell and Ferrari’s Lewis Hamilton.\n\nA superb session from Franco Colapinto means he is the lead Alpine in eighth, with team mate Pierre Gasly ninth – the spot originally due to be filled by Isack Hadjar before the Red Bull driver was disqualified from Qualifying for a technical infringement.\n\nHadjar will start from the pit lane after Red Bull opted to change power unit elements on the Frenchman\'s car, so Audi’s Nico Hulkenberg completes the top 10 on the grid.',
    'https://media.formula1.com/image/upload/t_16by9North/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_Of_Australia/2265348788.webp'
  ),
  (
    14,
    'What the teams said – Sprint day and Qualifying in Miami',
    '2026-04-26',
    'Antonelli started the Sprint second, but had another bad getaway, which the team indicated was due to a glitch in the system. That sent him backwards into the clutches of his team mate, but while Russell initially got past, the teenager was able to fight back. Those two then engaged in lap after lap of cat and mouse action for P4, with Russell finally making a move midway through the Sprint only for Antonelli to retake the place later on. The Italian finished fourth to Russell’s fifth, but was handed a five-second time penalty for exceeding track limits too many times, which dropped him to sixth.\n\nBut the youngster more than made up for that slightly messy session by nailing his Qualifying, grabbing pole with his first lap in Q3. He locked up into Turn 1 on his second run, but his first was more than good enough for his third straight pole. Russell still cannot match him here, having to settle for P5.\n\nGeorge Russell, Sprint: 4th, Qualifying: 5th, 1:28.197\n\n\"P5 is a disappointing result. Kimi did a great job to get pole but, on my side, I think we could have been P3 if we’d have maximised everything. Sadly, given how close the front of the field is, a few small mistakes added up to dropping us a few positions further down the grid. It’s not been my best weekend of the season so far, and I’ve struggled to get along with this track, but I’m hopeful tomorrow will be better.\n\n\"The expected rain tomorrow will likely play a role in how the Grand Prix goes. We’ve not raced these cars in the wet so that’s an unknown. I’m confident we’ve got good underlying pace though and hopefully that helps us achieve a better result on Sunday.\"',
    'https://media.formula1.com/image/upload/t_16by9South/c_lfill,w_3392/q_auto/v1740000001/trackside-images/2026/F1_Grand_Prix_of_Miami___Sprint__Qualifying/2274170117.webp'
  );

/*!40000 ALTER TABLE `news` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 23:05:52