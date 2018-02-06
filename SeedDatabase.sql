DELETE FROM Team
DELETE FROM Decks
DELETE FROM Users
DELETE FROM WheelPositionsSkills
DELETE FROM WheelPositionsStats
DELETE FROM Skills
DELETE FROM CharacterTable
DELETE FROM BaseStat


SET IDENTITY_INSERT BaseStat ON
INSERT INTO BaseStat (StatID, StatName)
VALUES
(1, 'Speed')
,(2, 'Attack')
,(3, 'Defense')
,(4, 'Damage')
;
SET IDENTITY_INSERT BaseStat OFF



SET IDENTITY_INSERT CharacterTable ON
INSERT INTO CharacterTable (CharacterID, Name, PointValue, Movement, Size, Indomitable, Range, Targets)
VALUES
(1, 'BlackWidow #003', 114, 0, 1, 'Yes', 4, 1)
,(2, 'Hawkeye #009', 75, 0, 1, 'No', 7, 1)
,(3, 'Thor #004', 200, 1, 1, 'No', 8, 1)
,(4, 'Iron Man #006', 160, 1, 1, 'No', 7, 2)
,(5, 'Captain America #001', 75, 0, 1, 'No', 6, 1)
,(6, 'Hulk #014', 140, 0, 2, 'No', 0, 1)
,(7, 'Loki #015', 125, 0, 1, 'No', 7, 1)
,(8, 'Nick Fury #203', 70, 0, 1, 'No', 5, 1)
,(9, 'Frost Giant #005', 80, 0, 1, 'No', 0, 1)
,(10, 'Agent Coulson #206', 50, 0, 1, 'No', 6, 1)
;
SET IDENTITY_INSERT CharacterTable OFF


SET IDENTITY_INSERT Skills ON
INSERT INTO Skills (SkillID, SkillName, SkillDescription)
VALUES
(1, 'Flurry', 'Give this character a close combat action. After the close combat
attack resolves, it may make a second close combat attack as a free action. The
first attack doesn’t activate the Damage Depletion Modifier')

,(2, 'Leap/Climb','Give this character a move action and move it up to its speed value; during this movement, this character adds 2 to its d6 roll when breaking
away. When you give this character a close combat action, it may target a character regardless of the target’s elevation.')

,(3, 'Phasing/Teleport','Give this character a move action and move it
up to its speed value.')

,(4, 'Earthbound/Neutralized','This character cannot leave the ground.')

,(5, 'Charge','Give this character a power action; halve its speed value for the action. Move this character up to its speed value and then it may be given a close combat
action as a free action. This character ignores knock back. ')

,(6, 'Mind Control', 'Give this character a close or ranged combat action (minimum range value 4) that deals no damage. A successfully hit target becomes friendly to
your force. Each target hit may be assigned one action as a free action, immediately
after which the target becomes an opposing character again. Deal this character 1
unavoidable damage if the successfully hit targets’ combined point value is 150 points
or more.')

,(7, 'Plasticity','This character adds 2 to its d6 roll when breaking away. Opposing characters can’t automatically break away from this character and subtract 2 from
their d6 roll when breaking away from this character. Opposing characters entering a
square adjacent to this character must end their movement, even if they would not
have to do so normally.')

,(8, 'Force Blast','Give this character a power action and roll a d6; a single adjacent opposing character is knocked back from this character a number of squares equal to
the result. When this character hits with an attack, you may choose that it generates
knock back if it doesn’t already.')

,(9, 'Sidestep','Give this character a free action; it can move with a locked speed value of 2.')

,(10, 'Hypersonic Speed', 'Give this character a power action and move it up to its speed value; it adds 2 to its d6 roll when breaking away. During this move, this character may, as a free action, make one close combat or ranged
combat attack with its range value halved for the attack. This character must be in a
square where it could legally end its move in order to make the attack.')

,(11, 'Stealth','When it is not your turn, hindered lines of fire drawn to this character are blocked.')

,(12, 'Running Shot','Give this character a power action; halve its speed value for the action. Move this character up to its speed value and it may be given a ranged
combat action as a free action.')


,(14, 'Blades/Claws/Fangs','When this character is given a close combat action, you may roll a d6 after making a successful attack')

,(15, 'Energy Explosion','When this character is given a ranged combat action and deals damage, an area of effect may include all untargeted characters that are
adjacent to one or more hit targets assigned at least 1 damage. Hit targets are
dealt damage normally, other hit characters are dealt 1 damage for each range target printed on this character’s base.')

,(16, 'Pulse Wave','Give this character a ranged combat action even if it is adjacent to an opposing character; the area of effect for this attack is half the
character’s range value. Draw lines of fire to all other characters within the area
of effect, including at least one opposing character; these lines of fire ignore
all game effects except for walls, blocking and elevated terrain. Game effects
possessed or used by characters with a line of fire drawn to them are ignored
until the action has been resolved. If a line of fire is drawn to more than 1
character, this character’s damage value becomes 1 and is locked. Each character
hit is dealt damage.')

,(17, 'Quake','Give this character a close combat action; this character’s damage value becomes 2 and is locked. Make a close combat attack that targets all opposing
characters this character can attack with a close combat attack. Each hit character is
knocked back 2 squares.')

,(18, 'Super Strength','When this character moves due to its own action, it may either pick up an object or place an object it is holding. The object must be picked
up from or placed in either a square the character occupies or an adjacent square. If
this power is lost or countered while this character is holding an object, immediately
place the object in the square this character occupies.')

,(19, 'Incapacitate','Give this character a close combat or ranged combat action to make an attack that deals no damage. If the attack hits, give the target an action
token; if the target already has 2 action tokens, deal the target 1 penetrating damage.')

,(20, 'Penatrating/Psychic Blast','Give this character a ranged combat action. Damage from the attack is penetrating damage.')

,(21, 'Smoke Cloud','Give this character a power action; place up to 6 hindering terrain markers in distinct, adjacent squares that are all within this character’s range (minimum range
value 4). At least one of the terrain markers must be within line of fire when it is placed. The
terrain markers remain until the beginning of your next turn. Characters that occupy these
terrain markers modify their attack value by -1 unless they can use Smoke Cloud or ignore
hindering terrain for line of fire purposes.')

,(22, 'Precision Strike','When this character makes an attack, it can’t be evaded, and the
damage dealt can’t be reduced below 1 or transferred.')

,(23, 'Posion','At the beginning of your turn, give this character a free action and deal 1 damage to each adjacent opposing character.')

,(24, 'Steal Energy','Each time an opposing character takes damage from a close combat attack made by this character, heal this character of 1 damage.')

,(25, 'Telekinesis','Give this character a power action and designate another target character or object (A) and a destination square (B). This character, A, and
B must all be within 8 squares and line of fire of each other. Place A in B. If A is
a character, it must be a single base character. If A is an opposing character, make a close or ranged combat attack that deals
no damage against A, and only place the character in B if the target is hit. If A is
an object and B is occupied by an opposing character, this character may make a
ranged combat attack targeting the character occupying B, dealing object damage
and destroying the object. A character that has been placed by Telekinesis this
turn can’t use Telekinesis this turn. ')



,(27, 'Super Senses','When this character is hit by an attack, you may roll a d6 before damage is dealt. On a result of 5 or 6 , this character evades the attack.')

,(28, 'Toughness','Damage dealt to this character is reduced by 1')

,(29, 'Defend','Any adjacent friendly character may replace its defense value with this character’s unmodified defense value.')

,(30, 'Combat Reflexes','Modify this character’s defense value by +2 against close combat attacks. This character ignores knock back.')

,(31, 'Energy Shield/Deflection','Modify this character’s defense value by +2 against ranged combat attacks.')

,(32, 'Barrier','Give this character a power action; place up to 4 blocking terrain markers in distinct, adjacent squares of clear terrain that are all within this character’s
range (minimum range value 4). At least one of the terrain markers must be within
line of fire when it is placed. The terrain markers remain until the beginning of your
next turn.')

,(33, 'Mastermind','When this character would be dealt damage, you may instead choose to transfer all the damage to be dealt to a single adjacent friendly character
with a point value less than this character’s. Any additional effects of the damage dealt
(knock back, penetrating damage, etc.) are applied to the character taking the damage.
Damage dealt by this power is not an attack.')

,(34, 'Willpower','This character may ignore pushing damage.')

,(35, 'Invincible','Half of damage dealt to this character is ignored.')

,(36, 'Impervious',' When this character is dealt damage, roll a d6. On a result of 5 or 6, the damage dealt is reduced to 0. On a result of 1–4 , the damage dealt is reduced by 2.')

,(37, 'Regeneration','Give this character a power action; roll a d6 and subtract 2 from the result, minimum result 0. Heal this character of damage equal to the result. ')

,(38, 'Invulnerability','Damage dealt to this character is reduced by 2.')



,(40, 'Ranged Combat Expert','Give this character a power action. It makes a ranged combat attack against a single target character; before making the attack, you
may modify its attack value by +2, its damage value by +2, or both combat values by
+1.')

,(41, 'Battle Fury','This character ignores Shape Change, can’t make ranged combat attacks, can’t be carried, and can’t be targeted by Incapacitate or Mind Control.')

,(42, 'Support','Give this character a power action and target an adjacent friendly character; neither this character nor the target can be adjacent to an opposing
character. Roll 2d6 and add the result to this character’s unmodified attack value. If
the result is equal to or higher than the target character’s unmodified defense value,
roll a d6 and subtract 2 from the result, minimum result 1. The target is healed of
damage equal to the result. ')

,(43, 'Exploit Weakness','Give this character a close combat action. Damage from the attack is penetrating damage.')

,(44, 'Enhancement','When an adjacent friendly character makes a ranged combat attack, this character modifies that adjacent friendly character’s damage value by +1.')

,(45, 'Probability Control','Once during your turn, this character allows you to reroll one of your rolls, ignoring the original roll. A character using this power must be within
range (minimum range 6) and line of fire to the character for which the original roll was
made. Using the same rules, once per round during an opponent’s turn, this character allows
you to force that opponent to reroll one of their rolls, ignoring the original roll.')

,(46, 'Shape Change','When this character is chosen as the target of an attack, you may roll a d6. On a result of 5 or 6, the attacker can’t target this character with an attack this turn and the attacker may choose another target character instead. The
attacker then makes the attack unless there are no targets, in which case the action
resolves without an attack.')

,(47, 'Close Combat Expert','Give this character a power action. It makes a close combat attack against a single opposing target character; before making the attack you may
modify its attack value by +2, its damage value by + 2, or both combat values by +1.')

,(48, 'Empower','When an adjacent friendly character makes a close combat attack, this character modifies that adjacent friendly character’s damage value by +1.')

,(49, 'Perplex','Give this character a free action to modify by +1 or –1 any combat value of a target character until the beginning of your next turn. A character using this power must
be within range (minimum range 6) and line of fire to the target. If a target character is
damaged or healed, the effect of Perplex on that character ends immediately.')

,(50, 'Outwit','Give this character a free action to counter a power or a combat ability possessed by a single target opposing character until the beginning of your next turn.
Any game effects with a duration specified by the countered power or combat ability
are removed. A character using this power must be within range (minimum range 6)
and line of fire to the target.')

,(51, 'Leadership',' At the beginning of your turn, give this character a free action and roll a d6. On a result of 5 or 6, add one action to your action total for that turn and this character may remove an action token from an adjacent friendly character
with a lower point value.')



,(53, 'Espionage','When Black Widow is part of a themed team and she uses Probability Control as a result, you may reduce the number of times your opponent can use Probability Control from being a themed team, instead of you. When she uses Probability Control as a result of being part of a themed team, she is not given an action token.')

,(54, 'Found the weak spot','When making a ranged combat attack, if Hawkeyes attack roll is 10 or higher, he deals penetrating damage.')

,(55, 'Mighty Mjolnir','Give Thor a power action and make a ranged combat attack. This attack generates knock back, but this knock back path is not stopped by walls or squares of blocking terrain. Instead, destroy that terrain and knock back damage from this attack equals 1 damage plus 1 for each wall or squares of blocking terrain the character moved through.')

,(56, 'Arc Reactor Chest Beam','Give Iron Man a free action and make a ranged combat attack, modifying his attack value by -1. After this action resolves roll a d6. On a result 1-4; deal Iron Man 1 unavoidable damage.')

,(57, 'First Into the Fray','If Captain America is the first character to make an attack on your turn, modify his attack value by +1.')

,(58, 'Two Fists of Destruction','Hulk can use Flurry.')

,(59, 'Convince You To Do Something Rash','Loki can use Mind Control. He is not dealt unavoidable damage when using this Mind Control to target characters of 250 points or less. When he uses it, if an opposing character takes damage from an attack during that action, you may heal Loki of 1 damage after actions resolve.')

,(60, 'You Better Save Me, Im The Boss','Nick Fury can use either Toughness or Invulnerability is an adjacent friendly character that he shares a keyword with can use that power.')

,(61, 'Laufeys Icy Realm','When a friendly character named Laufey is within 8 squares, Frost Giant can use Poison.')

,(62, 'I Need all of this Confiscated, Now','Give Agent Coulson a power action. You may place adjacent to him up to two other friendly characters with the S.H.I.E.L.D. keyword that are 50 points or less and within 8 squares. Those characters can not be given an action later this turn.')

,(63, 'Im Not Intimidated by Any Super Heros','Characters 100 points or more can not target Agent Coulson with an attack unless Agent Coulson is the only character on your force.')

;

SET IDENTITY_INSERT Skills OFF



SET IDENTITY_INSERT WheelPositionsStats ON
INSERT INTO WheelPositionsStats (PID, OrdinalPosition, CharacterID, StatID, Value)
VALUES
/* Black widow */
(1, 1, 1, 1, 9)
,(2, 1, 1, 2, 10)
,(3, 1, 1, 3, 17)
,(4, 1, 1, 4, 3)
,(5, 2, 1, 1, 8)
,(6, 2, 1, 2, 10)
,(7, 2, 1, 3, 17)
,(8, 2, 1, 4, 3)
,(9, 3, 1, 1, 8)
,(10, 3, 1, 2, 9)
,(11, 3, 1, 3, 17)
,(12, 3, 1, 4, 3)
,(13, 4, 1, 1, 8)
,(14, 4, 1, 2, 10)
,(15, 4, 1, 3, 16)
,(16, 4, 1, 4, 2)
,(17, 5, 1, 1, 7)
,(18, 5, 1, 2, 9)
,(19, 5, 1, 3, 16)
,(20, 5, 1, 4, 1)
,(21, 6, 1, 1, 6)
,(22, 6, 1, 2, 8)
,(23, 6, 1, 3, 16)
,(24, 6, 1, 4, 1)

/* Hawkeye */
,(25, 1, 2, 1, 8)
,(26, 1, 2, 2, 11)
,(27, 1, 2, 3, 16)
,(28, 1, 2, 4, 3)
,(29, 2, 2, 1, 7)
,(30, 2, 2, 2, 10)
,(31, 2, 2, 3, 16)
,(32, 2, 2, 4, 2)
,(33, 3, 2, 1, 7)
,(34, 3, 2, 2, 10)
,(35, 3, 2, 3, 16)
,(36, 3, 2, 4, 2)
,(37, 4, 2, 1, 6)
,(38, 4, 2, 2, 10)
,(39, 4, 2, 3, 15)
,(40, 4, 2, 4, 2)
,(41, 5, 2, 1, 6)
,(42, 5, 2, 2, 9)
,(43, 5, 2, 3, 15)
,(44, 5, 2, 4, 2)
,(45, 6, 2, 1, 6)
,(46, 6, 2, 2, 9)
,(47, 6, 2, 3, 15)
,(48, 6, 2, 4, 2)

/* Thor */
,(49, 1, 3, 1, 11)
,(50, 1, 3, 2, 11)
,(51, 1, 3, 3, 18)
,(52, 1, 3, 4, 5)
,(53, 2, 3, 1, 10)
,(54, 2, 3, 2, 10)
,(55, 2, 3, 3, 18)
,(56, 2, 3, 4, 4)
,(57, 3, 3, 1, 10)
,(58, 3, 3, 2, 9)
,(59, 3, 3, 3, 17)
,(60, 3, 3, 4, 3)
,(61, 4, 3, 1, 9)
,(62, 4, 3, 2, 11)
,(63, 4, 3, 3, 17)
,(64, 4, 3, 4, 3)
,(65, 5, 3, 1, 9)
,(66, 5, 3, 2, 10)
,(67, 5, 3, 3, 17)
,(68, 5, 3, 4, 3)
,(69, 6, 3, 1, 9)
,(70, 6, 3, 2, 9)
,(71, 6, 3, 3, 16)
,(72, 6, 3, 4, 3)
,(73, 7, 3, 1, 9)
,(74, 7, 3, 2, 8)
,(75, 7, 3, 3, 16)
,(76, 7, 3, 4, 3)
,(77, 8, 3, 1, 8)
,(78, 8, 3, 2, 9)
,(79, 8, 3, 3, 16)
,(80, 8, 3, 4, 3)
,(81, 9, 3, 1, 8)
,(82, 9, 3, 2, 10)
,(83, 9, 3, 3, 17)
,(84, 9, 3, 4, 4)

/* Iron Man */
,(85, 1, 4, 1, 9)
,(86, 1, 4, 2, 10)
,(87, 1, 4, 3, 17)
,(88, 1, 4, 4, 4)
,(89, 2, 4, 1, 9)
,(90, 2, 4, 2, 10)
,(91, 2, 4, 3, 17)
,(92, 2, 4, 4, 4)
,(93, 3, 4, 1, 8)
,(94, 3, 4, 2, 10)
,(95, 3, 4, 3, 17)
,(96, 3, 4, 4, 3)
,(97, 4, 4, 1, 8)
,(98, 4, 4, 2, 10)
,(99, 4, 4, 3, 16)
,(100, 4, 4, 4, 3)
,(101, 5, 4, 1, 7)
,(102, 5, 4, 2, 10)
,(103, 5, 4, 3, 17)
,(104, 5, 4, 4, 3)
,(105, 6, 4, 1, 7)
,(106, 6, 4, 2, 9)
,(107, 6, 4, 3, 16)
,(108, 6, 4, 4, 3)
,(109, 7, 4, 1, 7)
,(110, 7, 4, 2, 9)
,(111, 7, 4, 3, 16)
,(112, 7, 4, 4, 3)
,(113, 8, 4, 1, 7)
,(114, 8, 4, 2, 8)
,(115, 8, 4, 3, 16)
,(116, 8, 4, 4, 2)

/* Captain America */
,(117, 1, 5, 1, 7)
,(118, 1, 5, 2, 10)
,(119, 1, 5, 3, 17)
,(120, 1, 5, 4, 3)
,(121, 2, 5, 1, 7)
,(122, 2, 5, 2, 10)
,(123, 2, 5, 3, 17)
,(124, 2, 5, 4, 2)
,(125, 3, 5, 1, 7)
,(126, 3, 5, 2, 9)
,(127, 3, 5, 3, 16)
,(128, 3, 5, 4, 2)
,(129, 4, 5, 1, 6)
,(130, 4, 5, 2, 9)
,(131, 4, 5, 3, 16)
,(132, 4, 5, 4, 2)
,(133, 5, 5, 1, 6)
,(134, 5, 5, 2, 9)
,(135, 5, 5, 3, 16)
,(136, 5, 5, 4, 2)
,(137, 6, 5, 1, 6)
,(138, 6, 5, 2, 9)
,(139, 6, 5, 3, 16)
,(140, 6, 5, 4, 1)
,(141, 7, 5, 1, 5)
,(142, 7, 5, 2, 9)
,(143, 7, 5, 3, 15)
,(144, 7, 5, 4, 2)

/* Hulk */
,(250, 1, 6, 1, 8)
,(251, 1, 6, 2, 9)
,(252, 1, 6, 3, 17)
,(253, 1, 6, 4, 3)
,(254, 2, 6, 1, 8)
,(255, 2, 6, 2, 9)
,(256, 2, 6, 3, 17)
,(257, 2, 6, 4, 3)
,(258, 3, 6, 1, 9)
,(259, 3, 6, 2, 10)
,(260, 3, 6, 3, 17)
,(261, 3, 6, 4, 3)
,(262, 4, 6, 1, 10)
,(263, 4, 6, 2, 10)
,(264, 4, 6, 3, 17)
,(265, 4, 6, 4, 4)
,(266, 5, 6, 1, 10)
,(267, 5, 6, 2, 10)
,(268, 5, 6, 3, 18)
,(269, 5, 6, 4, 5)
,(270, 6, 6, 1, 11)
,(271, 6, 6, 2, 11)
,(272, 6, 6, 3, 17)
,(273, 6, 6, 4, 4)
,(274, 7, 6, 1, 10)
,(275, 7, 6, 2, 10)
,(276, 7, 6, 3, 17)
,(277, 7, 6, 4, 3)
,(278, 8, 6, 1, 9)
,(279, 8, 6, 2, 9)
,(280, 8, 6, 3, 17)
,(281, 8, 6, 4, 3)
,(282, 9, 6, 1, 8)
,(283, 9, 6, 2, 8)
,(284, 9, 6, 3, 16)
,(285, 9, 6, 4, 4)

/* Loki */
,(300, 1, 7, 1, 10)
,(301, 1, 7, 2, 10)
,(302, 1, 7, 3, 17)
,(303, 1, 7, 4, 3)
,(304, 2, 7, 1, 10)
,(305, 2, 7, 2, 10)
,(306, 2, 7, 3, 17)
,(307, 2, 7, 4, 3)
,(308, 3, 7, 1, 8)
,(309, 3, 7, 2, 10)
,(310, 3, 7, 3, 18)
,(311, 3, 7, 4, 3)
,(312, 4, 7, 1, 8)
,(313, 4, 7, 2, 10)
,(314, 4, 7, 3, 17)
,(315, 4, 7, 4, 3)
,(316, 5, 7, 1, 8)
,(317, 5, 7, 2, 9)
,(318, 5, 7, 3, 16)
,(319, 5, 7, 4, 2)
,(320, 6, 7, 1, 9)
,(321, 6, 7, 2, 9)
,(322, 6, 7, 3, 16)
,(323, 6, 7, 4, 2)
,(324, 7, 7, 1, 9)
,(325, 7, 7, 2, 9)
,(326, 7, 7, 3, 15)
,(327, 7, 7, 4, 2)

/* Nick Fury */
,(350, 1, 8, 1, 7)
,(351, 1, 8, 2, 10)
,(352, 1, 8, 3, 17)
,(353, 1, 8, 4, 3)
,(354, 2, 8, 1, 7)
,(355, 2, 8, 2, 9)
,(356, 2, 8, 3, 16)
,(357, 2, 8, 4, 2)
,(358, 3, 8, 1, 7)
,(359, 3, 8, 2, 9)
,(360, 3, 8, 3, 16)
,(361, 3, 8, 4, 2)
,(362, 4, 8, 1, 6)
,(363, 4, 8, 2, 9)
,(364, 4, 8, 3, 16)
,(365, 4, 8, 4, 2)
,(366, 5, 8, 1, 6)
,(367, 5, 8, 2, 9)
,(368, 5, 8, 3, 17)
,(369, 5, 8, 4, 2)
,(370, 6, 8, 1, 5)
,(371, 6, 8, 2, 8)
,(372, 6, 8, 3, 16)
,(373, 6, 8, 4, 1)

/* Frost Giant */
,(400, 1, 9, 1, 9)
,(401, 1, 9, 2, 10)
,(402, 1, 9, 3, 17)
,(403, 1, 9, 4, 4)
,(404, 2, 9, 1, 8)
,(405, 2, 9, 2, 10)
,(406, 2, 9, 3, 16)
,(407, 2, 9, 4, 3)
,(408, 3, 9, 1, 7)
,(409, 3, 9, 2, 10)
,(410, 3, 9, 3, 16)
,(411, 3, 9, 4, 3)
,(412, 4, 9, 1, 7)
,(413, 4, 9, 2, 9)
,(414, 4, 9, 3, 16)
,(415, 4, 9, 4, 2)
,(416, 5, 9, 1, 7)
,(417, 5, 9, 2, 9)
,(418, 5, 9, 3, 15)
,(419, 5, 9, 4, 3)
,(420, 6, 9, 1, 6)
,(421, 6, 9, 2, 9)
,(422, 6, 9, 3, 15)
,(423, 6, 9, 4, 3)
,(424, 7, 9, 1, 6)
,(425, 7, 9, 2, 9)
,(426, 7, 9, 3, 15)
,(427, 7, 9, 4, 3)

/* Agent Coulson */
,(450, 1, 10, 1, 8)
,(451, 1, 10, 2, 9)
,(452, 1, 10, 3, 16)
,(453, 1, 10, 4, 2)
,(454, 2, 10, 1, 7)
,(455, 2, 10, 2, 9)
,(456, 2, 10, 3, 16)
,(457, 2, 10, 4, 1)
,(458, 3, 10, 1, 7)
,(459, 3, 10, 2, 9)
,(460, 3, 10, 3, 16)
,(461, 3, 10, 4, 1)
,(462, 4, 10, 1, 6)
,(463, 4, 10, 2, 9)
,(464, 4, 10, 3, 15)
,(465, 4, 10, 4, 1)
;



SET IDENTITY_INSERT WheelPositionsStats OFF

SET IDENTITY_INSERT WheelPositionsSkills ON
INSERT INTO WheelPositionsSkills (PID, OrdinalPosition, CharacterID, SkillID)
VALUES
/* Black Widow */
(1, 1, 1, 53)
,(5, 2, 1, 53)
,(9, 3, 1, 53)
,(13, 4, 1, 9)
,(17, 5, 1, 9)
,(21, 6, 1, 9)
,(2, 1, 1, 9)
,(6, 2, 1, 9)
,(10, 3, 1, 9)
,(14, 4, 1, 53)
,(18, 5, 1, 53)
,(22, 6, 1, 53)
,(3, 1, 1, 30)
,(7, 2, 1, 30)
,(11, 3, 1, 30)
,(15, 4, 1, 28)
,(19, 5, 1, 28)
,(23, 6, 1, 28)
,(4, 1, 1, 46)
,(8, 2, 1, 46)
,(16, 4, 1, 47)
,(20, 5, 1, 47)
,(24, 6, 1, 47)

/* Hawkeye */
,(25, 1, 2, 12)
,(26, 1, 2, 54)
,(27, 1, 2, 31)
,(29, 2, 2, 2)
,(30, 2, 2, 54)
,(31, 2, 2, 31)
,(33, 3, 2, 12)
,(34, 3, 2, 54)
,(35, 3, 2, 31)
,(37, 4, 2, 2)
,(38, 4, 2, 54)
,(39, 4, 2, 31)
,(41, 5, 2, 2)
,(43, 5, 2, 31)
,(44, 5, 2, 40)
,(45, 6, 2, 2)
,(47, 6, 2, 31)
,(48, 6, 2, 40)

/* Thor */
,(49, 1, 3, 12)
,(50, 1, 3, 55)
,(53, 2, 3, 12)
,(54, 2, 3, 55)
,(55, 2, 3, 38)
,(56, 2, 3, 40)
,(57, 3, 3, 12)
,(58, 3, 3, 55)
,(59, 3, 3, 38)
,(60, 3, 3, 40)
,(61, 4, 3, 3)
,(62, 4, 3, 16)
,(63, 4, 3, 36)
,(65, 5, 3, 3)
,(66, 5, 3, 16)
,(67, 5, 3, 36)
,(69, 6, 3, 3)
,(70, 6, 3, 16)
,(71, 6, 3, 38)
,(73, 7, 3, 5)
,(75, 7, 3, 28)
,(76, 7, 3, 47)
,(77, 8, 3, 5)
,(79, 8, 3, 28)
,(80, 8, 3, 47)
,(81, 9, 3, 5)
,(83, 9, 3, 38)
,(84, 9, 3, 47)

/* Iron Man*/
,(85, 1, 4, 12)
,(86, 1, 4, 15)
,(87, 1, 4, 36)
,(89, 2, 4, 12)
,(90, 2, 4, 15)
,(91, 2, 4, 38)
,(92, 2, 4, 50)
,(93, 3, 4, 12)
,(94, 3, 4, 15)
,(95, 3, 4, 38)
,(96, 3, 4, 50)
,(97, 4, 4, 8)
,(98, 4, 4, 56)
,(99, 4, 4, 38)
,(101, 5, 4, 8)
,(102, 5, 4, 56)
,(103, 5, 4, 28)
,(105, 6, 4, 8)
,(106, 6, 4, 56)
,(107, 6, 4, 28)
,(110, 7, 4, 20)
,(111, 7, 4, 28)
,(114, 8, 4, 20)
,(115, 8, 4, 28)

/* Captain America */
,(117, 1, 5, 12)
,(118, 1, 5, 57)
,(119, 1, 5, 28)
,(120, 1, 5, 51)
,(121, 2, 5, 12)
,(122, 2, 5, 57)
,(123, 2, 5, 34)
,(124, 2, 5, 51)
,(125, 3, 5, 5)
,(126, 3, 5, 57)
,(127, 3, 5, 30)
,(128, 3, 5, 51)
,(129, 4, 5, 5)
,(130, 4, 5, 57)
,(131, 4, 5, 30)
,(132, 4, 5, 47)
,(134, 5, 5, 57)
,(135, 5, 5, 34)
,(136, 5, 5, 47)
,(139, 6, 5, 34)
,(140, 6, 5, 47)
,(143, 7, 5, 34)
,(144, 7, 5, 51)

/* Hulk */
,(250, 1, 6, 5)
,(251, 1, 6, 18)
,(252, 1, 6, 28)
,(253, 1, 6, 58)
,(254, 2, 6, 2)
,(255, 2, 6, 18)
,(256, 2, 6, 38)
,(257, 2, 6, 58)
,(258, 3, 6, 5)
,(259, 3, 6, 18)
,(260, 3, 6, 38)
,(261, 3, 6, 58)
,(262, 4, 6, 2)
,(263, 4, 6, 17)
,(264, 4, 6, 36)
,(266, 5, 6, 5)
,(267, 5, 6, 17)
,(268, 5, 6, 36)
,(270, 6, 6, 5)
,(271, 6, 6, 17)
,(272, 6, 6, 36)
,(274, 7, 6, 2)
,(275, 7, 6, 17)
,(276, 7, 6, 38)
,(278, 8, 6, 5)
,(279, 8, 6, 18)
,(280, 8, 6, 28)
,(282, 9, 6, 2)
,(283, 9, 6, 18)
,(284, 9, 6, 28)

/* Loki */
,(300, 1, 7, 3)
,(301, 1, 7, 25)
,(302, 1, 7, 38)
,(303, 1, 7, 50)
,(304, 2, 7, 3)
,(305, 2, 7, 59)
,(306, 2, 7, 28)
,(307, 2, 7, 50)
,(308, 3, 7, 11)
,(309, 3, 7, 59)
,(310, 3, 7, 28)
,(311, 3, 7, 50)
,(312, 4, 7, 11)
,(313, 4, 7, 59)
,(314, 4, 7, 28)
,(315, 4, 7, 49)
,(316, 5, 7, 11)
,(317, 5, 7, 20)
,(318, 5, 7, 28)
,(319, 5, 7, 49)
,(320, 6, 7, 3)
,(321, 6, 7, 20)
,(322, 6, 7, 33)
,(323, 6, 7, 49)
,(324, 7, 7, 3)
,(325, 7, 7, 20)
,(326, 7, 7, 33)
,(327, 7, 7, 45)

/* Nick Fury */
,(350, 1, 8, 11)
,(352, 1, 8, 60)
,(353, 1, 8, 51)
,(354, 2, 8, 11)
,(356, 2, 8, 60)
,(357, 2, 8, 45)
,(358, 3, 8, 11)
,(359, 3, 8, 20)
,(360, 3, 8, 60)
,(361, 3, 8, 44)
,(363, 4, 8, 20)
,(364, 4, 8, 60)
,(365, 4, 8, 44)
,(367, 5, 8, 15)
,(368, 5, 8, 34)
,(369, 5, 8, 50)
,(371, 6, 8, 15)
,(372, 6, 8, 34)
,(373, 6, 8, 50)

/* Frost Giant */
,(400, 1, 9, 5)
,(401, 1, 9, 61)
,(402, 1, 9, 28)
,(404, 2, 9, 5)
,(405, 2, 9, 61)
,(406, 2, 9, 28)
,(408, 3, 9, 5)
,(409, 3, 9, 14)
,(410, 3, 9, 28)
,(413, 4, 9, 14)
,(414, 4, 9, 28)
,(417, 5, 9, 61)
,(418, 5, 9, 28)
,(421, 6, 9, 61)
,(422, 6, 9, 28)
,(424, 7, 9, 5)
,(426, 7, 9, 28)

/* Agent Coulson */
,(450, 1, 10, 62)
,(451, 1, 10, 63)
,(452, 1, 10, 31)
,(453, 1, 10, 49)
,(454, 2, 10, 62)
,(455, 2, 10, 63)
,(456, 2, 10, 31)
,(457, 2, 10, 49)
,(458, 3, 10, 11)
,(459, 3, 10, 20)
,(460, 3, 10, 34)
,(462, 4, 10, 11)
,(463, 4, 10, 20)
,(464, 4, 10, 34)
;
SET IDENTITY_INSERT WheelPositionsSkills OFF