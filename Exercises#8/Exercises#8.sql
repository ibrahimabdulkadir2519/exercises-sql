-- 1

db.student.find(
  {age : {$gt : 22} })

-- 2

db.student.find(
  {courses : "React"})

-- 3
db.student.find({ name: { $regex: /^S/ } });

-- 4
db.student.find(
  {age : {$in : [18, 21]}})

-- 5 

db.student.find({
   email:{
      $not:/gmail\.com$/
   }
})

-- 6

db.student.find({
  courses: "React",
  age: { $gt: 20 }
})

-- 7
db.student.find({
  $or: [
    { courses: "React" },
    { courses: "Node.js" }
  ]
})

-- 8
db.student.find({
  $or: [
    { name: /x/ },
    { email: /\.edu$/ }
  ]
})