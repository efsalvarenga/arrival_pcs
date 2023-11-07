# Resolution rules

## Skill checks
> **Reference**: [SWN](https://drive.google.com/file/d/1s9ThcGpnoimZm49370hdDDsfdPMftj-n/view?usp=drivesdk) pp. 47 and [Nightmares Underneath 1e](https://drive.google.com/open?id=1cJ6nqUM3P4F5mKRKNeBSXQUwyODcfB2L&usp=drive_fs) pp. 50

- **Opposed checks** should be used for most situations involving PCs vs. NPCs - i.e. NPCs' roll define DC. The GM might define that the minimum DC for some social situations is the NPC's morale score.
- **Unopposed checks** are used when a NPC is not the source of the DC for the ckeck. In this case, use the table below (which includes some conversion between Cepheus Engine and 5e to SWN.

| SWN DC | Description                                                                   | CE DM               | 5e DC |
| ------ | ----------------------------------------------------------------------------- | ------------------- | ----- |
| N/A    | The task is one the PC would normally perform as part of their background.    |                     |       |
| 6      | A simple challenge that's still enough to challenge a competent practitioner. | Routine (+2)        | 10    |
| 8      | A significant challenge to a competent professional.                          | Average (0)         | 15    |
| 10     | A challenge even a skilled expert might not manage to overcome.               | Difficult (-2)      | 20    |
| 12     | Only a true master could expect to overcome this challenge.                   | Very difficult (-4) | 25    |
| 14     | Only a true master has any chance of doing this at all.                       | Formidable (-6)     | 30    |

# Harm and violence

- Two types of a character's vitality: Physical and Mental
- **Physical vitality** is measured with HP (as disposition) and system strain.
- **Mental vitality** is measured with Grip and delirium.

## HP
***Disposition***

*HP can be thought of as a character's disposition to overcame harm - a combination of grit, luck, stamina, awareness of danger, energy and reflexes, and a generalised (and possibly desperate) determination to not be murdered.*

- Characters have their level in hit dice, as per SWN rules.
- Characters have their Constitution in system strain maximum.
- When a character rest for a full night, they recover their level in HP and one system strain

## Grip
***Humanity, Sanity and Willpower, simplified from [Silent Legion's Madness](https://drive.google.com/open?id=1CexCpDNKNSMNnkGgDNrVne1gG-03L5dm&usp=drive_fs)***

*Bloodshed, exposure to horror and pushing oneself to accomplish inhuman acts can break havoc in the minds of mundane creatures, consuming their **Grip**. The best that most sufferers can do is to accept a **Delirium,** creating a zone of scorched reason to serve as a buffer against the awareness of the cruel and impossible.*

The initial and maximum **Grip** score for a PC is defined as
$$\text{Init/Max Grip} = 10 \le \text{max(INT, WIS)} \le 18$$
If the current **Grip** score reaches zero the character is hopelessly lost in their own tormented perceptions and can no longer function as a PC.

Once per scene, the GM might require PCs to make a **Grip** check: a d20 roll under the current **Grip** score. On a failure the PC looses *one* **Grip** as per table below. Major supernatural events might cost *two* **Grip** instead.

**Players might choose to accept a Delirium** for their characters to recover **Grip**. The player can choose what delirium they get (see material below) or roll randomly in a chosen table. It is easier to choose the new Delirium in-between sessions, and discuss the role play and mechanical results with the GM.

**Deliria examples and references (non comprehensive)**
- Madness from Nightmares Underneath 
- 5e's long term of indefinite madness [tables](http://dnd5e.wikidot.com/madness)
- 3.5e SRD variant indefinite insanity [table 6-11](https://www.d20srd.org/srd/variant/campaigns/sanity.htm)
- Call of Cthulhu's [phobias and manias](https://cthulhuwiki.chaosium.com/rules/sanity.html#sample-phobias-and-manias)
- Silent Legions' [sample deliria](https://i.imgur.com/pHGjaC1.png)
- Best Left Buried's [afflictions](https://drive.google.com/file/d/1gMvMcuhIFXWkvjqnP8e-XpcMVObmRVrY/view) (zine 5)

After taking the Delirum the player **rolls 1d20; if the roll is equal or greater than their total number of Deliria** then the newfound structure and rationalisation soothes their mind, **recovering 2 Grip**. If the roll is less than their total number of Deliria, then the fresh insanity just makes everything worse, and 2 points of sanity are lost. Once accrued, Deliria can never be lost.

Some Deliria come with phobias and compulsions. A PC can resist the phobia or compulsion by making a successful **Grip** Check. On a failure, he or she must obey the Delirium unless they are willing to lose 1d6 **Grip** for defying the structure they have fashioned.

# NPCs

## Statblocks

NPCs do not need to be balanced with characters, but the process below can help define relative balanced power levels for NPCs based on their attributes, which define their relative Level, or Hit Dice (**HD**).

### Attributes and Hit Dice
***Inspired by Best Left Buried and Black Hack***

NPCs are defined by three attributes: **Brawl**, **Wit** and **Will**. Attributes are abstraction of abilities, skills, characteristics and powers. They are the main driver of further derived stats for social and combat mechanics. Attributes are added (or subtracted, when negative) as modifiers to any checks where they are relevant.

- **Brawl**: represents the NPC's physical prowess and toughness.
- **Wit**: represents the NPC's gut brain: physical, mental and social agility.
- **Will**: represents the NPC's analytical brain: intellect and power of the mind.

An NPC level, or its Hit Dice (**HD**), is defined as
$$\text{HD} = \sum{(\text{Brawl, Wit, Will})} - 1$$
### Derived Stats
***Inspired by 5e's DMG, Forge of Foes, AD&D, and the Without Number games***

Armour class **(AC)**: It is perfectly valid that an NPC has a suit of armour to increase its AC. If not wearing an armour, AC is defined as
$$\text{AC} = 11 + \text{max(Brawl, Wit)}$$
Hit points (**HP**): with hit die defined by **Brawl** as below. For values in between, use the position on the left. Edge cases.
$$\text{HP} = \text{HD} \cdot \mathscr{L}(d\theta | 4 + \dfrac{\text{Brawl}}{2})$$
Attack modifiers (**Atk mod**) are defined by any attribute appropriate to the execution of the attack, such as **Brawl** for a heavy melee weapon, **Wit** for finesse attacks or **Will** for a spellcasting attack.
$$\text{Atk mod} = 1 + 2 \cdot \text{appropriate attribute}$$
The number of attacks (**# Atks**) an NPC can execute per round depends on their Wit.
$$\text{Atks} = \sqrt{\text{Wit}}$$
Attack damage (**Atk Dmg**) is defined by the weapon used. However, some NPCs would use brute force or spellcasting attacks, which are defined by the attributes **Brawl** or **Will**. 
$$\text{Atk Dmg} = \text{max}(1d4, \text{(Brawl|Will)} \cdot d6)$$
**Move** is defined by the **Wit** attribute. 
$$\text{Move} = 25 + 5 \cdot \text{Wit}$$
**Effort** is used to power special abilities NPCs *might* have. Effort is used as a modified [usage dice rule](https://nothingventured.obsidianportal.com/wikis/usage-dice) from Black Hack. Instead of decreasing the die, once a 1 or 2 is rolled, no more effort is available to the NPC.  Defined by **Will** as below.
$$\text{Effort} = \mathscr{L}(d\theta | \text{Will}), \text{ for Will} \in \mathbb{N}$$
The Save target is defined as
$$\text{Save} = 16 - \dfrac{\sum{(\text{Brawl, Wit, Will})}}{5} $$
The table below summarises pre-calculated derived stats for different attribute values.

| Stat        | AC      | Hit die | Atk mod | # Atks | Atk Dmg | Shock   | Move  | Effort |
| ----------- | ------- | ------- | ------- | ------ | ------- | ------- | ----- | ------ |
| *Attribute* | *!Will* | *Brawl* | *Any*   | *Wit*  | *!Wit*  | *Brawl* | *Wit* | *Will* |
| -3          | 8       | d4      | -2      | 1      | 1d4     | -       | 10    | 0      |
| -2          | 9       | d4      | -1      | 1      | 1d4     | -       | 15    | 0      |
| -1          | 10      | d6      | 0       | 1      | 1d4     | 2/13    | 20    | 0      |
| 0           | 11      | d6      | 1       | 1      | 1d4     | 2/13    | 25    | 0      |
| +1          | 12      | d8      | 3       | 1      | 1d6     | 2/15    | 30    | 1      |
| +2          | 13      | d8      | 5       | 1      | 2d6     | 2/18    | 35    | 1d4    |
| +3          | 14      | d10     | 7       | 2      | 3d6     | 4/15    | 40    | 1d6    |
| +4          | 15      | d10     | 9       | 2      | 4d6     | 4/18    | 45    | 1d8    |
| +5          | 16      | d12     | 11      | 2      | 5d6     | 7/15    | 50    | 1d10   |
| +6          | 17      | d12     | 13      | 2      | 6d6     | 4/-     | 55    | 1d12   |
| +7          | 18      | d12     | 15      | 3      | 7d6     | 6/18    | 60    | 1d12   |
| +8          | 19      | d20     | 17      | 3      | 8d6     | 5/-     | 65    | 1d20   |

The table below depicts generic quick builds, from HD 0 to 20.

| HD  | HP  | Effort | AC  | Save | Atk mod | Atk Dmg | # Atks | Shock | Σ stats |
| --- | --- | ------ | --- | ---- | ------- | ------- | ------ | ----- | ------- |
| 0   | 1   | 0      | 11  | 16   | 0       | 2       | 1      | -     | 0       |
| 1   | 4   | 1      | 12  | 16   | 2       | 2       | 1      | 2/13  | 2       |
| 2   | 9   | 1      | 12  | 16   | 3       | 4       | 1      | 2/15  | 3       |
| 3   | 14  | 1      | 12  | 15   | 4       | 5       | 1      | 2/18  | 4       |
| 4   | 19  | 1d4    | 13  | 15   | 4       | 6       | 1      | 4/15  | 5       |
| 5   | 25  | 1d4    | 13  | 15   | 5       | 7       | 1      | 5/15  | 6       |
| 6   | 31  | 1d4    | 13  | 15   | 6       | 8       | 2      | 4/18  | 7       |
| 7   | 37  | 1d6    | 14  | 15   | 6       | 9       | 2      | 7/15  | 8       |
| 8   | 44  | 1d6    | 14  | 14   | 7       | 11      | 2      | 4/-   | 9       |
| 9   | 51  | 1d6    | 14  | 14   | 8       | 12      | 2      | 6/18  | 10      |
| 10  | 58  | 1d8    | 15  | 14   | 8       | 13      | 2      | 5/-   | 11      |
| 11  | 66  | 1d8    | 15  | 14   | 9       | 14      | 2      | 7/18  | 12      |
| 12  | 74  | 1d8    | 15  | 14   | 10      | 15      | 2      | 6/-   | 13      |
| 13  | 82  | 1d10   | 16  | 13   | 10      | 16      | 2      | 6/-   | 14      |
| 14  | 91  | 1d10   | 16  | 13   | 11      | 18      | 2      | 7/-   | 15      |
| 15  | 100 | 1d10   | 16  | 13   | 12      | 19      | 2      | 7/-   | 16      |
| 16  | 109 | 1d12   | 17  | 13   | 12      | 20      | 2      | 8/-   | 17      |
| 17  | 119 | 1d12   | 17  | 13   | 13      | 21      | 2      | 8/-   | 18      |
| 18  | 129 | 1d12   | 17  | 12   | 14      | 22      | 3      | 6/-   | 19      |
| 19  | 139 | 1d12   | 18  | 12   | 14      | 23      | 3      | 6/-   | 20      |
| 20  | 150 | 1d12   | 18  | 12   | 15      | 25      | 3      | 7/-   | 21      |

### NPC resolution rules
***Inspired by Nightmares Underneath, and the Without Number games***

**Saving throws** are rolled with a d20, applying the **appropriate attribute** as modifier, against the target defined as **Save** on the statblock. Sometimes, the offensive actor can apply penalties to the roll.

**Skill checks**, opposed or not, are rolled with the **appropriate attribute** as modifier in **2d6** systems, or **twice the attribute** in **d20** systems. DC target are defined as per the original system. This modifier is only used when the NPC is expected to be skilled in the action. 

**Morale** in an unilateral check done when situations like the below arise. It is run with **Will** as modifier on a 2d6 roll.

- After a round during which one or more allied creatures have been reduced to zero HP.
- After a round during which a creature lost half its HP or more. 
- After reinforcements arrive on the enemy side.

| Roll | Result                                                            |
| ---- | ----------------------------------------------------------------- |
| 0-3  | Will is broken, they flee immediately                             |
| 4-6  | They retreat strategically                                        |
| 7-9  | They continue to fight, but consider improved strategic positions |
| 10+  | They continue, undeterred                                         |

### Powers & Concepts

In less gritty games, powers and concepts might be relevant. Other times, technology (such as cybernetics) might be the reason for NPCs to possess powers. During creation, attribute points can be spent to add powers (that can be defined by concepts/words) to a statblock - sometimes a power would cost more than one attribute point. This approach helps maintain internal balance between NPCs of similar HD. Games like Godbound, Best Left Buried, D&D, Nightmares Underneath, etc. have many examples of them. Simple things like improved AC (e.g.: +2 AC per attribute point spent) can also be done with a cost.

(Define better - up to how many? what about spellcasters?)

### Conversions

From 5e
- **Brawl** is `best(STR|CON) modifier`, taking into consideration attack modifiers and damage.
- **Wit** is `best(DEX|INT) modifier`, taking into consideration non-combat skills and AC.
- **Will** is `best(WIS|CHA) modifier`, taking into consideration non-combat skills.

From Without Number games
- **Brawl** is `[WN's attack modifier] / 2`, taking into consideration WN's HP and damage.
- **Wit** is, reasonably, `[WN'skill]`, taking into consideration WN's Instinct, Speed and number of attacks stat.
- **Will** is, reasonably, `[WN's morale] - 7`, taking into consideration effort's requirements.
- **Save** is ignored and recalculated based on HD.
- **HP** is recalculated based on the hit die defined by **Brawl** (this can be flexible and standardised to d8s).

