package mimir.models

import mimir.algebra._

trait FiniteDiscreteDomain 
{
  def getDomain(idx:Int, args:Seq[PrimitiveValue], hints:Seq[PrimitiveValue]): Seq[(PrimitiveValue,Double)]
}
