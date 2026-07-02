import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  return poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
  if phrase.isEmpty { return "_" }
  
  let poem = splitOnNewlines(phrase)
  var result = ""
  
  for line in poem {
    if let first = line.first {
      result += String(first)
    }
  }

  return result
}

func backDoorPassword(_ phrase: String) -> String {
  if phrase.isEmpty { return "_" }
  
  let poem = splitOnNewlines(phrase)
  var result = ""
  
  for line in poem {
    let cleanedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)
    if let last = cleanedLine.last {
      result += String(last)
    }
  }

  result += ", please"

  return result
}

func secretRoomPassword(_ phrase: String) -> String {
    if phrase.isEmpty { return "_" }
    
    let poem = phrase.components(separatedBy: .newlines)
    var result = ""
    var count = 0
    
    for line in poem {
        guard let index = line.index(line.startIndex, offsetBy: count, limitedBy: line.endIndex) else { 
            continue 
        }
        
        if index != line.endIndex {
            let letter = line[index]
            result += String(letter)
            count += 1
        }
    }
    result += "!"
    return result.uppercased
}
