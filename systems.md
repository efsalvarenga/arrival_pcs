# Resolution rules

## Skill checks
> **Reference**: [SWN](https://drive.google.com/file/d/1s9ThcGpnoimZm49370hdDDsfdPMftj-n/view?usp=drivesdk) pp. 47 and [Nightmares Underneath 1e](https://drive.google.com/open?id=1cJ6nqUM3P4F5mKRKNeBSXQUwyODcfB2L&usp=drive_fs) pp. 50

- **Opposed checks** should be used for most situations involving PCs vs. NPCs - i.e. NPCs' roll define DC. The GM might define that the minimum DC for some social situations is the NPC's morale score.
- **Unopposed checks** are used when a NPC is not the source of the DC for the ckeck. In this case, use the table below (which includes some conversion between Cepheus Engine and 5e to SWN.

| SWN DC | CE DM               | 5e DC |
| ------ | ------------------- | ----- |
| N/A    |                     |       |
| 6      | Routine (+2)        | 10    |
| 8      | Average (0)         | 15    |
| 10     | Difficult (-2)      | 20    |
| 12     | Very difficult (-4) | 25    |
| 14     | Formidable (-6)     | 30    |

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

Very simple SWN rule adaptation for Grip:
- Roll a mental save, if succeeded nothing happens
- If failed, add a system strain
- If no system strain is available, get a Nightmare

- A system strain point can always be carved with Torching (swn.31)

# NPCs

## Statblocks

NPCs are defined mainly by their **Concepts** and **Attributes**. **Concepts** can be used as role play cues for the GM and as a theme for the NPC powers (if they have any). **Attributes** define mechanical prowess in three interaction dimensions: **Brawl**, **Wit** and **Will**.

NPCs do not need to be balanced with characters, but the process below can help define relative balanced power levels for NPCs based on their attributes, which define their relative Level to other NPCs.

With **Concepts** and **Attributes**, augmented with **Calculated Stats** which are based on **Attributes** only, an NPC statblock is mostly ready for play. If the GM is inclined to put more work on it, choosing special abilities (preferably related to the **Concepts**) can add flavour to the NPC.

### Concepts
***Inspired by Godbound and Forge of Foes*** 

NPCs defined with concepts are richer. Concepts might be related to the theme of their stance and abilities and their behaviours. In general, two or three concept words are enough. Good comprehensive lists are available as Words of Creation in Godbound or Power Themes in Forge of Foes.

### Attributes and Level
***Inspired by Best Left Buried***

NPCs are defined by three attributes: **Brawl**, **Wit** and **Will**. Attributes are abstraction of abilities, skills, characteristics and powers. They are the main driver of further derived stats for social and combat mechanics. Attributes are added (or subtracted, when negative) as modifiers to any checks where they are relevant.

- **Brawl**: represents the NPC's physical prowess and toughness.
- **Wit**: represents the NPC's gut brain: physical, mental and social agility.
- **Will**: represents the NPC's analytical brain: intellect and power of the mind.

An NPC level, also reflected on its Hit Dice (**HD**) encoding, is defined as
$$\text{Level} = \sum{(\text{Brawl, Wit, Will})}$$
### Calculated Stats
***Inspired by 5e's DMG, Forge of Foes, AD&D, and the Without Number games***

Armour class **(AC)**: It is perfectly valid that an NPC has a suit of armour to increase its **AC** - in that case, ignore **Brawl** and **Wit**, and use the specified **AC** for the piece . If not wearing an armour, **AC** is defined as
$$\text{AC} = 11 + \text{max(Brawl, Wit)}$$
Hit points (**HP**): with hit die defined by **Brawl** as below. For values in between, use the position on the left. Edge cases.
$$\text{HP} = \text{Level} \cdot \mathscr{L}(d\theta | 4 + \dfrac{\text{Brawl}}{2})$$
Attack modifiers (**Atk mod**) are defined by the attribute appropriate for the execution of the attack, such as **Brawl** for a heavy manoeuvres, **Wit** for finesse or **Will** for a spellcasting.
$$\text{Atk mod} = \text{max} (-1, 2 \cdot (\text{(Brawl|Wit|Wis)} - 1)))$$
The number of attacks (**# Atks**) an NPC can execute per round depends on their Wit. Multiple attacks are only available to **Brawl** and **Wit** attacks.
$$\text{Atks} = \sqrt{\text{Wit}}$$
Attack damage (**Atk Dmg**) is defined by the weapon used. However, some NPCs would use brute force or spellcasting attacks, which are defined by the attributes **Brawl** or **Will**. 
$$\text{Atk Dmg (Brawl)} = (\text{Weapon Damage}+\text{Brawl}) | (\text{max}(1d4, \mathscr{L}(\theta d6 + \alpha | \text{Brawl} \cdot 3))))$$
$$\text{Atk Dmg (Wit)} = (\text{Weapon Damage}+\text{Wit}) | (\text{Atk Dmg (Brawl)}-\text{Brawl}+\text{Wit})$$
$$\text{Atk Dmg (Will)} = \text{max}(1d4, \mathscr{L}(\theta d6 + \alpha | \text{Will} \cdot \text{Level} / 2))$$

**Move** is defined by the **Wit** attribute. 
$$\text{Move} = 25 + 5 \cdot \text{Wit}$$
**Effort** is used to power special abilities NPCs *might* have. Effort is used as a modified [usage dice rule](https://nothingventured.obsidianportal.com/wikis/usage-dice). Instead of decreasing the die, once a 1 or 2 is rolled, no more effort is available to the NPC.  Defined by **Will** as below.
$$\text{Effort} = \mathscr{L}(d\theta | \text{Will}), \text{ for Will} \in \mathbb{N}$$
The Save target is defined as
$$\text{Save} = 16.25 - \dfrac{Level}{6} $$

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

During creation, consider choosing a number of special abilities. One or two are sufficient for more generic NPCs, whereas a powerful Spellcaster can have many, to reflect their magical prowess. **Most special abilities require Effort to be used**.

Books like Godbound, Best Left Buried, D&D MMs (all versions), Nightmares Underneath, etc. have many examples of special abilities, sometimes linked to concepts.

### Conversions

#### From AD&D and D&D 5e

- **Brawl**: $\text{max(STR, CON) modifier}$, taking into consideration attack modifiers and damage.
- **Wit**: $\text{max(DEX, INT) modifier}$ , taking into consideration non-combat skills and AC.
- **Will**: $\text{max(WIS, CHA) modifier}$ taking into consideration non-combat skills and, for Spellcasters, if INT modifiers should be taken into **Will** as opposed to **Wit**. 
- Check if **Level** is acceptable ($\text{Level} \approx \text{CR} \cdot 2$), and modify attributes above if required.
- The **calculated stats** can be left as is from 5e (when available), or recalculated.
- (5e-only) Bring one special power per CR from the 5e statblock.

#### From Without Number games

- **Brawl** is `[WN's attack modifier] / 2`, taking into consideration WN's HP and damage.
- **Wit** is, reasonably, `[WN'skill]`, taking into consideration WN's Instinct, Speed and number of attacks stat.
- **Will** is, reasonably, `[WN's morale] - 7`, taking into consideration effort's requirements.
- **Save** is ignored and recalculated based on Level.
- **HP** is recalculated based on the hit die defined by **Brawl** (this can be flexible and standardised to d8s).

#### From Shadowdark and Nightmares 