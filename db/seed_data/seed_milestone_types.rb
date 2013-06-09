MilestoneType.destroy_all

milestone_types =[
  {
    name: "Palmar Grasp",
    month_num: 1,
    description:""
  },
  {
    name: "Central Vision",
    month_num: 1,
    description:"Your baby may be interested in watching a mobile over their crib or playpen."
  },
  {
    name: "Social Smile",
    month_num: 2,
    description:""
  },
  {
    name: "Cooing Sound",
    month_num: 2,
    description:""
  },
  {
    name: "Lifts Head Up to 90 Degrees",
    month_num: 2,
    description:""
  },
  {
    name: "Differential Cry",
    month_num: 2,
    description:"Great parenting! This is a milestone for you and your baby. Learning infant cues will help you cater to your baby's specific needs."
  },
  {
    name: "Laughs loud",
    month_num: 3,
    description:""
  },
  {
    name: "Eyes don't cross",
    month_num: 3,
    description:""
  },
  {
    name: "Landau Reflex",
    month_num: 3,
    description:""
  },
  {
    name: "Babbling Sound (consonants)",
    month_num: 4,
    description:""
  },
  {
    name: "Head Rotation",
    month_num: 4,
    description:""
  },
  {
    name: "Eats Solid Food",
    month_num: 4,
    description:"Your baby is now ready for solid food! Becareful though, your baby has loss a lifesaving reflex. Beware of aspiration."
  },
  {
    name: "Rolls Over",
    month_num: 5,
    description:"It is a great idea to have a playpen or a sheet spread on the floor! Give your baby the opportunity to exercise their new skill. But be more vigilant to avoid fall."
  },
  {
    name: "1st Temporary Teeth",
    month_num: 6,
    description:"Because your baby is starting to teethe, he may enjoy a teething ring to chew on at this time. This is also the most important time for your baby to receive flouride! "
  },
  {
    name: "Sit with Support",
    month_num: 6,
    description:"Children with delayed cognitive or motor development may not accomplish this step at this time."
  },
  {
    name: "Holds Cup Using Two Hands",
    month_num: 6,
    description:"Your baby is now ready for a variety of objects to 
handle, such as plastic rings, blocks, squeeze toys, clothespins,
rattles, and plastic keys. All these should be small
enough so that your baby can lift them with one hand, yet big
enough the baby cannot possibly swallow."
  },
  {
    name: "Moro reflex disappears",
    month_num: 6,
    description:""
  },
  {
    name: "Transfers Objects From One Hand To Another",
    month_num: 7,
    description:""
  },
  {
    name: "Sit Alone/or with Support",
    month_num: 8,
    description:""
  },
  {
    name: "Peak of Stranger Anxiety",
    month_num: 8,
    description:"You can help your baby conquer anxiety by talking with a stranger while holding her."
  },
  {
    name: "Crawling",
    month_num: 9,
    description:""
  },
  {
    name: "Creeping",
    month_num: 9,
    description:"Your baby needs the experience of creeping!
This means time out of a crib or playpen so there is room to
maneuver."
  },
  {
    name: "First Word - Dada",
    month_num: 9,
    description:"Don't worry mom if your baby's first word is 'da-da'. 'da-da' is an easier syllable
to pronounce than 'ma-ma'."
  },
  {
    name: "Stands with Support",
    month_num: 10,
    description:"Assisting your baby often will help him develop motor skills for walking faster."
  },
  {
    name: "Bye Bye",
    month_num: 10,
    description:""
  },
  {
    name: "Peek-a-Boo",
    month_num: 10,
    description:""
  },
  {
    name: "Clapping Game",
    month_num: 10,
    description:""
  },

  {
    name: "Pincer Grasping",
    month_num: 10,
    description:"Be vigilant! Your baby can now pick up small objects. Keep the surrounding free of these objects to avoid accidental aspiration."
  },
  {
    name: "Walking with Support",
    month_num: 11,
    description:""
  },
  {
    name: "Cruising",
    month_num: 11,
    description:""
  },
  {
    name: "Stands Alone",
    month_num: 12,
    description:""
  },
  {
    name: "1st Step",
    month_num: 12,
    description:""
  },
  {
    name: "Walks Well Alone",
    month_num: 15,
    description:""
  },
  {
    name: "Throws Toys with Two Hands",
    month_num: 15,
    description:""
  },
  {
    name: "Creeps Upstairs",
    month_num: 15,
    description:"Be vigilant for falls"
  },
  {
    name: "Uses Spoon and Fork Well",
    month_num: 18,
    description:""
  },
  {
    name: "Jumps in Place",
    month_num: 18,
    description:""
  },
  {
    name: "Climbs Stair with Support",
    month_num: 18,
    description:""
  }
]

milestone_types.each do |milestone_type|
  MilestoneType.create milestone_type
end
