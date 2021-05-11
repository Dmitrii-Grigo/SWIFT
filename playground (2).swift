import Foundation
var Array = [1, 2, 3, 4, 5, 6, 7, 8];
for truInt: Int in Array{
  if truInt % 2 == 0 {
    print("\(truInt) это четное число")
  } else {
    print("\(truInt) это нечетное число")
  }
}

var numberArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
for oddInt: Int in  numberArray{
  if oddInt % 3 == 0 {
    print("\(oddInt) это число делится на три без остатка")
  }
} 

var numbers = [Int] (1...100)

for truNumbers: Int in numbers{
  if truNumbers % 2 == 0 {
  } else if truNumbers % 3 == 0{
  } else {
    print("\(truNumbers) ")
  }
}