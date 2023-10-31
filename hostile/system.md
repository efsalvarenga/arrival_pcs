# Base system: Stars Without Number
***Link to [View-only PDF](https://drive.google.com/file/d/1s9ThcGpnoimZm49370hdDDsfdPMftj-n/view?usp=drivesdk) or get for [free](https://www.drivethrurpg.com/product/230009/Stars-Without-Number-Revised-Edition-Free-Version)***

Stars Without Numbers (SWN) is an OSR system, which allows me to easily reskin a lot published materials since the 80s. Different than old school D&D, SWN has a much simpler class system, with most of the customisation done through background, foci (i.e. feats) and a robust skill system (based on classic Traveler - which is the skill system of the Hostile game too). For SWN I can easily convert any D&D adventure (any version, easier with up to 2e), and Call of Cthulhu (d100 systems) with some small work. Additional flavour from other games are always welcomed (OSR compatible preferred, but anything can be discussed): Any rule, class, foci, etc from any OSR game can be considered. [Sine Nomine](https://preview.drivethrurpg.com/en/publisher/3482/Sine-Nomine-Publishing) books are very easy to integrate with each other. I have a few of them if someone is interested.

## Character creation guidance

- Character creation on the SWN book, pages 3 to 25. Pre-built characters are available on page 26.
- Classes available: warrior, expert or mix/adventurer (i.e. no magic or psionic powers)
- Everyone starts at level 1 with max HP (reduces hp jump at first level).
- Character sheet: [fillable pdf](https://drive.google.com/file/d/1bM8pMgGjMKao6s-12BjnkQ9MzXhFJ8i2/view?usp=drivesdk), [Google sheets](https://docs.google.com/spreadsheets/d/19vw6EHrl_2-8BcHob2_bxvcpLnVbAHbW3StjrNEFoKg/edit#gid=1671565117) or [freebooter app](https://www.swnfreebooter.net/)
- Replacements will join the crew at level 1.

# Hazards

Hazard effects from Hostile Rules (65-87) used, which are significantly more detailed.

| Hazard                       | Damage                    | Save             | Details                                        |
| ---------------------------- | ------------------------- | ---------------- | ---------------------------------------------- |
| Vacuum                       | 3d6/round                 | Physical halves  |                                                |
| Falling                      | 1d6/2m per 1g             | Physical halves  |                                                |
| Temperature                  | 1d6/round per 50C off 10C | Physical halves  |                                                |
| Poisonous air                | 1d6/min                   | Physical negates |                                                |
| Radiation Low (danger zone)  | 1 CON/day                 | Physical negates | Hostile environment suit negates.              |
| Radiation High (white dwarf) | 1 CON/hour                | Physical negates | Lead spacecraft hull reduces to low exposure.  |
| Radiation Extreme            | 1 CON/min                 | Physical negates | Lead spacecraft hull reduces to high exposure. |
| Radiation Nuclear Blast      | 1 CON/round               | Physical negates |                                                |

[Grip](_published/system.md#Grip)
# Character advancement

Required XP will use a higher inclination curve (without impact in progress pace), akin traditional OSR. This allows new characters to progress rather quickly to catch up with veterans. XP awarded will be scaled to the dangers the PCs faced on each session.

![|180](https://i.imgur.com/DauwZK5.png)

## Character replacements

Replacements will start at level 1.

# Equipment lists

- Equipment from the SWN book is considered the standard most common equipment available.
	- We are in year 2225, which means the maximum available technology is TL4 (SWN 63)
- More specific items, such as those from Hostile books, will cost their $ value in credits, sometimes being significantly more expensive than common equipment.
	- [Hostile Setting](https://drive.google.com/open?id=1fJPqFVlO9pqcjg7lMVgE9lAy4_vml6pW&usp=drive_fs) for generic equipment
	- [Hostile Toolkits](https://drive.google.com/open?id=1fL8DRXAaHosQ6aXeTCiIC1YKSVjhVCgk&usp=drive_fs) for specific equipment (includes explosives)
	- [Hostile Gun Locker](https://drive.google.com/open?id=1fKPO19H1ZY4RAQoknhycMyO8sL4MN02V&usp=drive_fs) for weapons

# Space travel time

| Destination            | Travel time    |
| ---------------------- | -------------- |
| Within a region        | 6 hours/drive  |
| Between regions        | 48 hours/drive |
| Between hexes (prep)   | 30 min         |
| Between hexes (travel) | 6 days/drive   | 

# Mining 

All below assumes a 24h (2 12h shift) operations. Each shift must make it roll once for the entire job.

- Locate suitable ice chunk: Int/programme DC 8, takes 1d6 days
- Scan the topology for mapping surface area and composition of the entire chunk: Int/Programme or Int/Know DC 8, takes 1d6 days
- Travel to the rock (150 - Int/Pilot check), then a new rock in the same chunk takes 1d6 x 5h. **Each rock has a 1-in-6 chance of having a sky tomb.**
- Each shift a crew member is appointed as mining supervisor. GM rolls Cha or Wis /Fix 2d6 and checks for a mining problem.
- Geology and sampling (1d6 + 3 are required in different rocks, at least two different chunks)
	- Drill with logging tool (EVA or drone): Dex if EVA, Int if drone, Programme or Pilot DC 8, takes 1d6h per drill.
	- Evaluate logs, Int/Know DC 7, takes 1d6h - roll asteroid yield once per chunk. If the rock has a sky tomb, the RNA is found in the ice.
	- Set explosives and net (EVA or drone): Dex/Programme or Dex/Pilot DC 10, takes 1d3 hours.
	- Extract (drones): Int/Programme or Int/Pilot DC 8, takes 1d6 hours

![|500](https://i.imgur.com/b5dYCI4.png)

![|500](https://i.imgur.com/c3BZ7ty.png)

![|500](https://i.imgur.com/yWc1wwW.png)

# Factions sub-system
***Based on Godbound (gb134) and (S/W/C)WN assets***

| Power | Action Die | Size (Stars resolution) | Size (Worlds resolution) |
| ----- | ---------- | ----------------------- | ------------------------ |
| 1     | 1d6        | Settlement              | Village                  |
| 2     | 1d8        | Worlds                  | City                     |
| 3     | 1d10       | System neighbourhood    | Region (40k $miˆ2$)      |
| 4     | 1d12       | Entire sector           | Multi-region             |
| 5     | 1d20       | Multi-sector and more   | Realm and more           |

Features costs are based on (S/W/C)WN asset costs. Each feature has a number of points equal to its type level (1 to 8) divided by 2.

Restore cohesion: $cost = 2^{power}$
