MilestoneType.destroy_all

milestone_types =[
  {
    name: "Palmar Grasp",
    month: 1
  },
  {
    name: "Palmar Grasp",
    month: 1
  },
  {
    name: "Social Smile",
    month: 2
  },
  {
    name: "Cooling Sound",
    month: 2
  },
  {
    name: "Lifts Head Up to 90 Degrees",
    month: 2
  },
  {
    name: "Differential Cry",
    month: 2
  },
  {
    name: "Laughs loud",
    month: 3
  },
  {
    name: "3 Visions",
    month: 3
  },
  {
    name: "Tears",
    month: 3
  },
  {
    name: "Babbling Sound (consonants)",
    month: 4
  },
  {
    name: "Head Rotation",
    month: 4
  },
  {
    name: "Neck Control",
    month: 4
  },
  {
    name: "Absence of Head Lag",
    month: 4
  },
  {
    name: "Rolls Over",
    month: 5
  },
  {
    name: "1st Temporary Teeth",
    month: 6
  },
  {
    name: "2 Lower Central Incisor",
    month: 6
  },
  {
    name: "Sit with Support",
    month: 6
  },
  {
    name: "Holds Cup Using Two Hands",
    month: 6
  },
  {
    name: "Oh-oh",
    month: 6
  },
  {
    name: "Transfers Objects From One Hand To Another",
    month: 7
  },
  {
    name: "Sit Alone/or with Support",
    month: 8
  },
  {
    name: "Peek of Stranger Anxiety",
    month: 8
  },
  {
    name: "Crawling",
    month: 9
  },
  {
    name: "Creeping",
    month: 9
  },
  {
    name: "First Word - Dada",
    month: 9
  },
  {
    name: "Stands with Support",
    month: 10
  },
  {
    name: "Bye Bye",
    month: 10
  },
  {
    name: "Peek-a-Boo",
    month: 10
  },
  {
    name: "Pat a Cake",
    month: 10
  },
  {
    name: "Clapping Game",
    month: 10
  },
  {
    name: "Pincer Grasping",
    month: 10
  },
  {
    name: "Walking with Support",
    month: 11
  },
  {
    name: "Cruising",
    month: 11
  },
  {
    name: "Stands Alone",
    month: 12
  },
  {
    name: "1st Step",
    month: 12
  },
  {
    name: "Walks Well Alone",
    month: 15
  },
  {
    name: "Throws Toys with Two Hands",
    month: 15
  },
  {
    name: "Creeps Upstairs",
    month: 15
  },
  {
    name: "Uses Spoon and Fork Well",
    month: 18
  },
  {
    name: "Jumps in Place",
    month: 18
  },
  {
    name: "Climbs Stair with Support",
    month: 18
  }
]

milestone_types.each do |milestone_type|
  MilestoneType.create milestone_type
end
