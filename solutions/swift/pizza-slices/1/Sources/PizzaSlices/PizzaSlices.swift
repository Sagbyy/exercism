func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diameter = diameter else { return nil } 
  guard let slices = slices else { return nil }

  if diameter < 0 || slices <= 0 {
    return nil
  }

  return (Double.pi * (diameter / 2) * (diameter / 2)) / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let sizeA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let sizeB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  if sizeA == sizeB {
    return "Neither slice is bigger"
  }

  guard let sizeA = sizeA else { return "Slice B is bigger" }
  guard let sizeB = sizeB else { return "Slice A is bigger" }

  return sizeA > sizeB ? "Slice A is bigger" : "Slice B is bigger"
}
