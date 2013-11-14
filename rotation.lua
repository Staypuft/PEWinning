-- SPEC ID 259
ProbablyEngine.rotation.register(259, "PEWinning",{

  -- Buffs
  { "Deadly Poison", "!player.buff(Deadly Poison)" },

  -- Interrupts
  { "Kick", "modifier.interrupts" },
  { "Blind", { "modifier.interrupts", "player.spell.cooldown(Kick)" }},

  -- Cooldowns
  { "Shadow Blades", "modifier.cooldowns" },
  { "Vendetta", "modifier.cooldowns" },

  -- Lifesavers
  { "Fade", "player.health < 90" },
  { "Evasion", "player.health < 80" },
  { "Feint", "player.health < 79" },
  { "Vanish", "player.health < 15" },
  { "Cloak of Shadows", "player.health < 60" },

  -- Rotation
  { "Slice and Dice", {
    "!player.buff(Slice and Dice)",
    "player.combopoints >= 2"
  }},
  { "Envenom", {
    "player.buff(Slice and Dice).duration <=3",
    "player.combopoints > 0"
  }},
  { "Rupture", {
    "target.debuff(Rupture).duration <= 8",
    "player.combopoints = 5"
  }},
  { "Envenom", "player.combopoints = 5" },
  { "Dispatch", "player.buff(Blindside)" },
  { "Fan of Knives", "modifier.multitarget" },
  { "Mutilate", "target.health > 35" },
  { "Dispatch", "target.health < 35" },
  { "Expose Armor", "!target.debuff(113746).any" },
  --Ranged
  { "Throw",
    {
    "target.range > 5",
    "target.range <= 50",
    "!player.moving"
    }},
})