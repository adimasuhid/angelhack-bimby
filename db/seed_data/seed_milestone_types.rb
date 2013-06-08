MilestoneType.destroy_all

milestone_types =[
  {
    name: "Palmar Grasp",
    month_num: 1
  },
  {
    name: "Palmar Grasp",
    month_num: 1
  },
  {
    name: "Social Smile",
    month_num: 2
  },
  {
    name: "Cooling Sound",
    month_num: 2
  },
  {
    name: "Lifts Head Up to 90 Degrees",
    month_num: 2
  },
  {
    name: "Differential Cry",
    month_num: 2
  },
  {
    name: "Laughs loud",
    month_num: 3
  },
  {
    name: "3 Visions",
    month_num: 3
  },
  {
    name: "Tears",
    month_num: 3
  },
  {
    name: "Babbling Sound (consonants)",
    month_num: 4
  },
  {
    name: "Head Rotation",
    month_num: 4
  },
  {
    name: "Neck Control",
    month_num: 4
  },
  {
    name: "Absence of Head Lag",
    month_num: 4
  },
  {
    name: "Rolls Over",
    month_num: 5
  },
  {
    name: "1st Temporary Teeth",
    month_num: 6
  },
  {
    name: "2 Lower Central Incisor",
    month_num: 6
  },
  {
    name: "Sit with Support",
    month_num: 6
  },
  {
    name: "Holds Cup Using Two Hands",
    month_num: 6
  },
  {
    name: "Oh-oh",
    month_num: 6
  },
  {
    name: "Transfers Objects From One Hand To Another",
    month_num: 7
  },
  {
    name: "Sit Alone/or with Support",
    month_num: 8
  },
  {
    name: "Peek of Stranger Anxiety",
    month_num: 8
  },
  {
    name: "Crawling",
    month_num: 9
  },
  {
    name: "Creeping",
    month_num: 9
  },
  {
    name: "First Word - Dada",
    month_num: 9
  },
  {
    name: "Stands with Support",
    month_num: 10
  },
  {
    name: "Bye Bye",
    month_num: 10
  },
  {
    name: "Peek-a-Boo",
    month_num: 10
  },
  {
    name: "Pat a Cake",
    month_num: 10
  },
  {
    name: "Clapping Game",
    month_num: 10
  },
  {
    name: "Pincer Grasping",
    month_num: 10
  },
  {
    name: "Walking with Support",
    month_num: 11
  },
  {
    name: "Cruising",
    month_num: 11
  },
  {
    name: "Stands Alone",
    month_num: 12
  },
  {
    name: "1st Step",
    month_num: 12
  },
  {
    name: "Walks Well Alone",
    month_num: 15
  },
  {
    name: "Throws Toys with Two Hands",
    month_num: 15
  },
  {
    name: "Creeps Upstairs",
    month_num: 15
  },
  {
    name: "Uses Spoon and Fork Well",
    month_num: 18
  },
  {
    name: "Jumps in Place",
    month_num: 18
  },
  {
    name: "Climbs Stair with Support",
    month_num: 18
  }
]

milestone_types.each do |milestone_type|
  MilestoneType.create milestone_type
end
