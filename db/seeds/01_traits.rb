Trait.create!([
  { name: "Defensive Advantage",
    description: "When in combat, your opponent must draw 2 cards." +
                 " The lowest valued card your opponent draws is used as the drawn card.",
    effect_type: "card", metric: 2, affected_party: "opponent"
  },
  { name: "Day Sight Disadvantage",
    description: "When attacking in daylight, you must draw 2 cards." +
                 " The lowest valued card you draw is used as the drawn card.",
    effect_type: "card", metric: 2, affected_party: "self"
  },
  {
    name: "Night Sight Advantage",
    description: "When attacking at night, you must draw 2 cards." +
                 "The highest valued card you draw is used as the drawn card.",
    effect_type: "card", metric: 2, affected_party: "self"
  },
  {
    name: "Flight",
    description: "When flying, your opponent must draw 2 cards." +
                 " The lowest valued card your opponent draws is used as the drawn card." +
                 "\nHowever if you are successfully attacked while flying you" +
                 " will be grounded and unable to transform again until after a short rest.",
    effect_type: "card", metric: 2, affected_party: "self"
  },
  {
    name: "Enhanced Strength",
    description: "You are able to successfully move heavy objects without" +
                 " needing to draw any cards.",
    effect_type: "environment", metric: 0, affected_party: nil
  },
  {
    name: "Move Unseen",
    description: "Become unnoticeable by enemies.",
    effect_type: "environment", metric: 0, affected_party: nil
  },
  {
    name: "Sight Advantage",
    description: "When attacking at night, you must draw 2 cards." +
                 "The highest valued card you draw is used as the drawn card.",
    effect_type: "card", metric: 2, affected_party: "self"
  },
  {
    name: "Increased Agility",
    description: "When in combat, your opponent must draw 2 cards." +
                 " The lowest valued card your opponent draws is used as the drawn card.",
    effect_type: "card", metric: 2, affected_party: "opponent"
  },
  {
    name: "Enhanced Climbing",
    description: "You are able to successfully climb any vertical terrain",
    effect_type: "environment", metric: 0, affected_party: nil
  },
  {
    name: "Roar",
    description: "Roaring loudly will cause all opponents in the area to cower in fear." +
                 " This causes all opponents to miss their next turn.",
    effect_type: "environment", metric: 0, affected_party: "opponent"
  },
  {
    name: "Venomous Bite",
    description: "If your attack on an opponent is successful," +
                 " your opponent will lose 1 health point every turn.",
    effect_type: "effect", metric: 1, affected_party: "opponent"
  }
])

p "=== Traits Generated ==="
