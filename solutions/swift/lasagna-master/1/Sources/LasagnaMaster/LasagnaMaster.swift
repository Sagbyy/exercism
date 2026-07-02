// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
  var counter = 0
  for _ in layers {
    counter += 2
  }
  return counter
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
  var result = (noodles: 0, sauce: 0.0)
  for layer in layers {
    if layer == "noodles" {
      result.noodles += 3
    }
    if layer == "sauce" {
      result.sauce += 0.2
    }
  }
  return result
}


// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) -> () {
  amount.sauce *= 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
 
  func mozCount() -> Int {
    var count = 0
    for layer in layers {
      if layer == "mozzarella" {
        count += 1
      }
    }
    return count
  }

    
  func ricottaCount() -> Int {
    var count = 0
    for layer in layers {
      if layer == "ricotta" {
        count += 1
      }
    }
    return count
  }

    
  func bechamelCount() -> Int {
    var count = 0
    for layer in layers {
      if layer == "béchamel" {
        count += 1
      }
    }
    return count
  }

    
  func sauceCount() -> Int {
    var count = 0
    for layer in layers {
      if layer == "sauce" {
        count += 1
      }
    }
    return count
  }

    
  func meatCount() -> Int {
    var count = 0
    for layer in layers {
      if layer == "meat" {
        count += 1
      }
    }
    return count
  }

  let mozzarella = mozCount()
  let ricotta = ricottaCount()
  let bechamel = bechamelCount()
  let sauce = sauceCount()
  let meat = meatCount()

  let whiteWineIngredient = mozzarella + ricotta + bechamel
  let redWhineIngredient = sauce + meat

  return whiteWineIngredient > redWhineIngredient ? false : true
}
