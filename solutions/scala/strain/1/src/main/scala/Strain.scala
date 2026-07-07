
object Strain {
  def keep[A](list: Seq[A], predicate: A => Boolean): Seq[A] = {
    list match {
      case Nil => Nil
      case head :: tail =>
        if(predicate(head)) head +: keep(tail, predicate)
        else keep(tail, predicate)
    }
  }

  def discard[A](list: Seq[A], predicate: A => Boolean): Seq[A] = {
    list match {
      case Nil => Nil
      case head :: tail =>
        if(predicate(head)) discard(tail, predicate)
        else head +: discard(tail, predicate)
    }
  }
}