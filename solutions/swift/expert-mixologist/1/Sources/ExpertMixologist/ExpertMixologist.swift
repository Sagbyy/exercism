func timeToPrepare(drinks: [String]) -> Double {
  var result = 0.0
  for drink in drinks {
    switch drink {
      case "beer", "soda", "water":
        result += 0.5
      case "shot":
        result += 1.0
      case "mixed drink":
        result += 1.5
      case "fancy drink":
        result += 2.5
      case "frozen drink":
        result += 3.0
      default:
        break
    }
  }
  return result
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  if needed == 0 { return 0 }
  
  var limesUsed = needed
  var result = 0
  
  for lime in limes {
    switch lime {
      case "small":
        limesUsed -= 6
      case "medium":
        limesUsed -= 8
      case "large":
        limesUsed -= 10
      default:
        break
    }

    result += 1
    
    if limesUsed <= 0 {
      break
    }
  }
  
  return result
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var minutesLeftVar: Double = Double(minutesLeft)
  var remainingOrdersVar: [[String]] = remainingOrders

  if remainingOrdersVar.isEmpty {
    return []
  }
    
  repeat {
    let order: [String] = remainingOrdersVar.removeFirst()
    minutesLeftVar -= timeToPrepare(drinks: order)

  } while minutesLeftVar > 0.0 && !remainingOrdersVar.isEmpty

  return remainingOrdersVar
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var soda: (first: String, last: String, total: Int)? = nil
  var beer: (first: String, last: String, total: Int)? = nil
  
  for order in orders {
    if order.drink == "soda" {
      if var current = soda {
        current.last = order.time
        current.total += 1
        soda = current
      } else {
        soda = (first: order.time, last: order.time, total: 1)
      }
    }

    if order.drink == "beer" {
      if var current = beer {
        current.last = order.time
        current.total += 1
        beer = current
      } else {
        beer = (first: order.time, last: order.time, total: 1)
      }
    }
  }
  
  return (beer: beer, soda: soda)
}
