totem = AnimalTotem.find_by(name: "Armadillo")
trait = Trait.find_by(name: "Defensive Advantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Bat")
trait = Trait.find_by(name: "Day Sight Disadvantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Night Sight Advantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Flight")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Bear")
trait = Trait.find_by(name: "Enhanced Strength")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Beetle")
trait = Trait.find_by(name: "Move Unseen")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Cheetah")
trait = Trait.find_by(name: "Increased Agility")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Eagle")
trait = Trait.find_by(name: "Flight")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Sight Advantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Fox")
trait = Trait.find_by(name: "Increased Agility")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Gorilla")
trait = Trait.find_by(name: "Enhanced Strength")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Enhanced Climbing")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Lion")
trait = Trait.find_by(name: "Roar")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Lizard")
trait = Trait.find_by(name: "Move Unseen")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Venomous Bite")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Mollusk")
trait = Trait.find_by(name: "Enhanced Climbing")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
traits = Trait.find_by(name: "Defensive Advantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

totem = AnimalTotem.find_by(name: "Wolf")
trait = Trait.find_by(name: "Increased Agility")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)
trait = Trait.find_by(name: "Night Sight Advantage")
AnimalTotemTrait.create!(animal_totem_id: totem.id, trait_id: trait.id)

p "=== Animal Totem Traits Linked ==="
