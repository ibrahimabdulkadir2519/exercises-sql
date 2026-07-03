-- 1
use dugsiiye

-- 2
db.students.insertMany([
  {
    name: "Ayaan",
    age: 22,
    email: "ayaan@gmail.com",
    courses: ["React", "Node.js"]
  },
  {
    name: "Sagal",
    age: 20,
    email: "sagal@gmail.com",
    courses: ["HTML", "CSS"]
  },
  {
    name: "Iborow",
    age: 24,
    email: "iborow@gmail.com",
    courses: ["MongoDB", "Node.js"]
  }
])

-- 3
db.students.find()

-- 4
db.students.updateOne(
  { name: "Sagal" },
  { $set: { email: "sagal123@gmail.com" } }
)

-- 5
db.students.deleteOne({ name: "Iborow" })

-- 6
db.students.insertOne({
  name: "Ahmed",
  age: 23,
  email: "ahmed@gmail.com",
  courses: ["React"],
  address: {
    city: "Mogadishu",
    district: "Hodan"
  }
})