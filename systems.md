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
- **Physical vitality** is measured with HP and system strain.
- **Mental vitality** is measured with Grip and delirium.

## Hit points (HP)

*HP can be thought of as a character's **disposition** to overcame harm - a combination of grit, luck, stamina, awareness of danger, energy and reflexes, and a generalised (and possibly desperate) determination to not be murdered.*

## Grip
***Humanity, Sanity and Willpower, simplified from [Silent Legion's Madness](https://drive.google.com/open?id=1CexCpDNKNSMNnkGgDNrVne1gG-03L5dm&usp=drive_fs)***

*Bloodshed, exposure to horror and pushing oneself to accomplish inhuman acts can break havoc in the minds of mundane creatures, consuming their **Grip**. The best that most sufferers can do is to accept a **Delirium,** creating a zone of scorched reason to serve as a buffer against the awareness of the cruel and impossible.*

The maximum **Grip** score for a PC is defined as
$$\text{Max Grip} = 10 \le \text{max(INT, WIS)} \le 18$$
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

Some Deliria come with phobias and compulsions. A PC can resist the phobia or compulsion by expending 1 **Grip** for defying the structure they have fashioned.

(Look at Mothership and Nightmares Madness rules)

# NPCs

## Statblocks

NPCs are defined mainly by their **Concepts** and **Attributes**. **Concepts** can be used as role play cues for the GM and as a theme for the NPC powers (if they have any). **Attributes** define mechanical prowess in three interaction dimension: **Brawl**, **Wit** and **Will**.

NPCs do not need to be balanced with characters, but the process below can help define relative balanced power levels for NPCs based on their attributes, which define their relative Level, or Hit Dice (**HD**).

With **Concepts** and **Attributes**, plus the **Calculated Stats** based on **Attributes**, an NPC statblock is mostly ready for play. If the GM is inclined to put more work on it, choosing powers (preferably related to the **Concepts**) can add flavour to the statblock.

### Concepts
***Inspired by Godbound and Forge of Foes*** 

NPCs defined with concepts are richer. Concepts might be related to the theme of their powers and their behaviours. Using one or two words for each concept, and up to three concepts is sufficient. Good comprehensive lists are available as Words of Creation in Godbound or Power Themes in Forge of Foes.

### Attributes and Hit Dice
***Inspired by Best Left Buried***

NPCs are defined by three attributes: **Brawl**, **Wit** and **Will**. Attributes are abstraction of abilities, skills, characteristics and powers. They are the main driver of further derived stats for social and combat mechanics. Attributes are added (or subtracted, when negative) as modifiers to any checks where they are relevant.

- **Brawl**: represents the NPC's physical prowess and toughness.
- **Wit**: represents the NPC's gut brain: physical, mental and social agility.
- **Will**: represents the NPC's analytical brain: intellect and power of the mind.

An NPC level, or its Hit Dice (**HD**), is defined as
$$\text{HD} = \sum{(\text{Brawl, Wit, Will})} - 1$$
### Calculated Stats
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
**Effort** is used to power special abilities NPCs *might* have. Effort is used as a modified [usage dice rule](https://nothingventured.obsidianportal.com/wikis/usage-dice). Instead of decreasing the die, once a 1 or 2 is rolled, no more effort is available to the NPC.  Defined by **Will** as below.
$$\text{Effort} = \mathscr{L}(d\theta | \text{Will}), \text{ for Will} \in \mathbb{N}$$
The Save target is defined as
$$\text{Save} = 16 - \dfrac{\sum{(\text{Brawl, Wit, Will})}}{5} $$
The table below summarises pre-calculated derived stats for different attribute values.

| Stat        | AC      | Hit die | Move  | Effort | Atk mod | # Atks | Atk Dmg | Shock   |
| ----------- | ------- | ------- | ----- | ------ | ------- | ------ | ------- | ------- |
| *Attribute* | *!Will* | *Brawl* | *Wit* | *Will* | *Any*   | *Wit*  | *!Wit*  | *Brawl* |
| -3          | 8       | d4      | 10    | 0      | -2      | 1      | 1d4     | -       |
| -2          | 9       | d4      | 15    | 0      | -1      | 1      | 1d4     | -       |
| -1          | 10      | d6      | 20    | 0      | 0       | 1      | 1d4     | 2/13    |
| 0           | 11      | d6      | 25    | 0      | 1       | 1      | 1d4     | 2/13    |
| +1          | 12      | d8      | 30    | 1      | 3       | 1      | 1d6     | 2/15    |
| +2          | 13      | d8      | 35    | 1d4    | 5       | 1      | 2d6     | 2/18    |
| +3          | 14      | d10     | 40    | 1d6    | 7       | 2      | 3d6     | 4/15    |
| +4          | 15      | d10     | 45    | 1d8    | 9       | 2      | 4d6     | 4/18    |
| +5          | 16      | d12     | 50    | 1d10   | 11      | 2      | 5d6     | 7/15    |
| +6          | 17      | d12     | 55    | 1d12   | 13      | 2      | 6d6     | 4/-     |
| +7          | 18      | d12     | 60    | 1d12   | 15      | 3      | 7d6     | 6/18    |
| +8          | 19      | d20     | 65    | 1d20   | 17      | 3      | 8d6     | 5/-     |

The table below depicts generic quick builds, from HD 0 to 20.

| HD  | HP  | AC  | E (stats) | Save | Effort | Atk mod | # Atks | Atk Dmg | Shock |
| --- | --- | --- | --------- | ---- | ------ | ------- | ------ | ------- | ----- |
| 0   | 1   | 11  | 0         | 16   | 0      | 0       | 1      | 2       | -     |
| 1   | 4   | 12  | 1         | 16   | 1      | 2       | 1      | 2       | 2/13  |
| 2   | 9   | 12  | 1         | 16   | 1      | 3       | 1      | 4       | 2/15  |
| 3   | 14  | 12  | 1         | 15   | 1      | 4       | 1      | 5       | 2/18  |
| 4   | 19  | 13  | 2         | 15   | 1d4    | 4       | 1      | 6       | 4/15  |
| 5   | 25  | 13  | 2         | 15   | 1d4    | 5       | 1      | 7       | 5/15  |
| 6   | 31  | 13  | 2         | 15   | 1d4    | 6       | 2      | 8       | 4/18  |
| 7   | 37  | 14  | 3         | 15   | 1d6    | 6       | 2      | 9       | 7/15  |
| 8   | 44  | 14  | 3         | 14   | 1d6    | 7       | 2      | 11      | 4/-   |
| 9   | 51  | 14  | 3         | 14   | 1d6    | 8       | 2      | 12      | 6/18  |
| 10  | 58  | 15  | 4         | 14   | 1d8    | 8       | 2      | 13      | 5/-   |
| 11  | 66  | 15  | 4         | 14   | 1d8    | 9       | 2      | 14      | 7/18  |
| 12  | 74  | 15  | 4         | 14   | 1d8    | 10      | 2      | 15      | 6/-   |
| 13  | 82  | 16  | 5         | 13   | 1d10   | 10      | 2      | 16      | 6/-   |
| 14  | 91  | 16  | 5         | 13   | 1d10   | 11      | 2      | 18      | 7/-   |
| 15  | 100 | 16  | 5         | 13   | 1d10   | 12      | 2      | 19      | 7/-   |
| 16  | 109 | 17  | 6         | 13   | 1d12   | 12      | 2      | 20      | 8/-   |
| 17  | 119 | 17  | 6         | 13   | 1d12   | 13      | 2      | 21      | 8/-   |
| 18  | 129 | 17  | 6         | 12   | 1d12   | 14      | 3      | 22      | 6/-   |
| 19  | 139 | 18  | 7         | 12   | 1d12   | 14      | 3      | 23      | 6/-   |
| 20  | 150 | 18  | 7         | 12   | 1d12   | 15      | 3      | 25      | 7/-   |

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

### Special Abilities

During creation, consider choosing a number of powers based on the NPC's **HD**.
$$\text{Powers} = \dfrac{\text{HD}}{2}$$
Books like Godbound, Best Left Buried, D&D MMs (all versions), Nightmares Underneath, etc. have many examples of special abilities. Simple things like improved AC (e.g.: +2 AC) can also be used as a power.

### Conversions

From 5e
- **Brawl** is `best(STR|CON) modifier`, taking into consideration attack modifiers and damage.
- **Wit** is `best(DEX|INT) modifier`, taking into consideration non-combat skills and AC.
- **Will** is `best(WIS|CHA) modifier`, taking into consideration non-combat skills.
- Check if **HD** is acceptable ($\text{HD} \approx \text{CR} \cdot 2$), and modify attributes above if required.
- The **calculated stats** can be left as is from 5e, or recalculated.
- Bring one special power per CR of the 5e statblock ()

From Without Number games
- **Brawl** is `[WN's attack modifier] / 2`, taking into consideration WN's HP and damage.
- **Wit** is, reasonably, `[WN'skill]`, taking into consideration WN's Instinct, Speed and number of attacks stat.
- **Will** is, reasonably, `[WN's morale] - 7`, taking into consideration effort's requirements.
- **Save** is ignored and recalculated based on HD.
- **HP** is recalculated based on the hit die defined by **Brawl** (this can be flexible and standardised to d8s).

