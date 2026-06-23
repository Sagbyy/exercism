func dailyRateFrom(hourlyRate: Int) -> Double {
  return 8.0 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRateDiscounted = dailyRateFrom(hourlyRate: hourlyRate) * (1 - discount / 100)
  return (dailyRateDiscounted * 22).rounded(.down)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
  let dailyRateDiscounted = dailyRate * (1 - discount / 100)
  return (budget / dailyRateDiscounted).rounded(.down)
}
