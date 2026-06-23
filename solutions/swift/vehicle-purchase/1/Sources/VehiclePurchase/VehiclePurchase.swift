func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment = price / (12 * 5)
  let monthlyBudgetUpTen = monthlyBudget * (1 + 10 / 100)
  if monthlyPayment <= monthlyBudget {
    return "Yes! I'm getting a " + vehicle
  } else if monthlyPayment >= monthlyBudgetUpTen {
    return "Darn! No " + vehicle + " for me"
  } else {
    return "I'll have to be frugal if I want a " + vehicle
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
    return "You will need a motorcycle license for your vehicle"
  } else if wheels == 4 || wheels == 6 {
    return "You will need an automobile license for your vehicle"
  } else if wheels == 18 {
    return "You will need a commercial trucking license for your vehicle"
  } else {
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return Int(Double(originalPrice) * 0.8)
  } else if yearsOld >= 3 && yearsOld < 10 {
    return Int(Double(originalPrice) * 0.7)
  } else {
    return Int(Double(originalPrice) * 0.5)
  }
}
