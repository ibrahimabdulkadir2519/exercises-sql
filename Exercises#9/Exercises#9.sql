-- 1

db.students.updateOne(
  { name: "Khalid" },
  { $set: { email: "khalid@dugsiiye.com" } }
)

-- 2

db.students.updateOne(
  { name: "Ayaan" },
  { $inc: { points: 20 } }
)

-- 3
db.students.updateOne(
  { name: "Nasteexo" },
  { $push: { courses: "GraphQL" } }
)

-- 4

db.students.updateOne(
  { name: "Ayaan" },
  { $pull: { courses: "MongoDB" } }
)

-- 5

db.students.updateOne(
  { name: "Ayaan" },
  {
    $set: { email: "ayaan@new.com" },
    $inc: { points: 10 },
    $push: { courses: "Next.js" }
  }
)