// TODO: define the 'ranks' constant
let ranks = 1...8

// TODO: define the 'files' constant
let files = "A"..."H"

func isValidSquare(rank: Int, file: String) -> Bool {
  return ranks.contains(rank) && files.contains(file)
}

func getRow(_ board : [String], rank: Int) -> [String] {
  let start = 8 * rank - 8
  let result = Array(board[start..<start + 8])
  return result
}
