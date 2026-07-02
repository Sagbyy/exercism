// TODO: Define the Size struct
struct Size {
  var width: Int = 80
  var height: Int = 60

  init() {}

  init(_ width: Int, _ height: Int) {
    self.width = width
    self.height = height
  }

  init(width: Int, height: Int) {
    self.width = width
    self.height = height
  }

  mutating func resize(newWidth: Int, newHeight: Int) {
    self.width = newWidth
    self.height = newHeight
  }
}

// TODO: Define the Position struct
struct Position {
  var x: Int = 0
  var y: Int = 0

  mutating func moveTo(newX: Int, newY: Int) {
    self.x = newX
    self.y = newY
  }
}

// TODO: Define the Window class
class Window {
  var title: String = "New Window"
  let screenSize = Size(800, 600)
  var size = Size()
  var position = Position()
  var contents: String?

  init() { }

  init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
    self.title = title
    self.contents = contents
    self.size = size
    self.position = position
  }

  func resize(to newSize: Size) {
    var tempSize = newSize
    let maxWidth = self.screenSize.width - self.position.x
    let maxHeight = self.screenSize.height - self.position.y
    
    if tempSize.width < 1 {
      tempSize.width = 1
    }

    if tempSize.height < 1 {
      tempSize.height = 1
    }

    if tempSize.width > maxWidth {
      tempSize.width = maxWidth
    }

   if tempSize.height > maxHeight {
      tempSize.height = maxHeight
    }

    self.size.resize(newWidth: tempSize.width, newHeight: tempSize.height)
  }

  func move(to newPosition: Position) {
    var tempPosition = newPosition
    let maxX = self.screenSize.width - self.size.width
    let maxY = self.screenSize.height - self.size.height
    
    if tempPosition.x < 0 {
      tempPosition.x = 0
    }

    if tempPosition.y < 0 {
      tempPosition.y = 0
    }

    if tempPosition.x > maxX {
      tempPosition.x = maxX
    }

   if tempPosition.y > maxY {
      tempPosition.y = maxY
    }

    self.position.moveTo(newX: tempPosition.x, newY: tempPosition.y)
  }

  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
    self.contents = text
  }

  func display() -> String {
    var result = "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n"
    
    if let contents = self.contents {
      result += "\(contents)\n"
    } else {
      result += "[This window intentionally left blank]\n"
    }

    return result
  }
}

