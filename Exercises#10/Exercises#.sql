db.students.insertMany([
  {
    name: "Ayaan",
    courses: [
      { title: "React", score: 91 },
      { title: "MongoDB", score: 88 }
    ]
  },
  {
    name: "Ali",
    courses: [
      { title: "Node.js", score: 79 },
      { title: "Express", score: 83 }
    ]
  },
  {
    name: "Hodan",
    courses: [
      { title: "React", score: 97 },
      { title: "Next.js", score: 90 }
    ]
  },
  {
    name: "Khalid",
    courses: [
      { title: "MongoDB", score: 92 },
      { title: "Node.js", score: 86 }
    ]
  },
  {
    name: "Sagal",
    courses: [
      { title: "HTML", score: 80 },
      { title: "CSS", score: 84 }
    ]
  },
  {
    name: "Nasteexo",
    courses: [
      { title: "React", score: 94 },
      { title: "Express", score: 89 }
    ]
  },
  {
    name: "Ahmed",
    courses: [
      { title: "JavaScript", score: 87 },
      { title: "MongoDB", score: 90 }
    ]
  },
  {
    name: "Ibrahim",
    courses: [
      { title: "Node.js", score: 95 },
      { title: "React", score: 93 }
    ]
  },
  {
    name: "Maryan",
    courses: [
      { title: "Next.js", score: 82 },
      { title: "MongoDB", score: 91 }
    ]
  },
  {
    name: "Farah",
    courses: [
      { title: "Express", score: 88 },
      { title: "JavaScript", score: 92 }
    ]
  },
  {
    name: "Abdi",
    courses: [
      { title: "React", score: 76 },
      { title: "HTML", score: 73 }
    ]
  },
  {
    name: "Fadumo",
    courses: [
      { title: "MongoDB", score: 99 },
      { title: "Node.js", score: 94 }
    ]
  },
  {
    name: "Mohamed",
    courses: [
      { title: "Express", score: 85 },
      { title: "React", score: 90 }
    ]
  },
  {
    name: "Ikraan",
    courses: [
      { title: "Next.js", score: 96 },
      { title: "MongoDB", score: 89 }
    ]
  },
  {
    name: "Shukri",
    courses: [
      { title: "JavaScript", score: 81 },
      { title: "Node.js", score: 87 }
    ]
  }
]);




db.students.aggregate([
  { $unwind: "$courses" },
  { $match: { "courses.score": { $gt: 85 } } },
  { $group: {_id: "$courses.title",
      totalHighScorers: { $sum: 1 },
      avgScore: { $avg: "$courses.score" }
    }
  },
  { $project: {
      course: "$_id",
      totalHighScorers: 1,
      avgScore: { $round: ["$avgScore", 1] },
      _id: 0
    }
  },
  { $sort: { totalHighScorers: -1 } }
]);
