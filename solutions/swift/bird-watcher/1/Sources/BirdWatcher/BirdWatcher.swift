func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for bird in birdsPerDay {
    total += bird
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  var total = 0
  let startIndex = weekNumber * 7 - 7
  let endIndex = startIndex + 6
  for i in stride(from: startIndex, through: endIndex, by: 1) {
    total += birdsPerDay[i]
  }
  return total
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  var result = birdsPerDay
  for i in stride(from: 0, to: result.count, by: 2) {
    result[i] += 1
  }
  return result
}
