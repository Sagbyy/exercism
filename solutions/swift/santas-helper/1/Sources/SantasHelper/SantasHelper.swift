func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var result = items
  let newAmount = amount
  for (index, (name, amount)) in result.enumerated() {
    if name == toy {
      result[index].amount = newAmount
    }
  }

  return result
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var result: [(name: String, amount: Int, category: String)] = []

  for (name, amount) in items {
    result.append((name: name, amount: amount, category: category))
  }
  return result
}
