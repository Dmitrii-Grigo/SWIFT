import Foundation
let example = "2(x^2)+3x+4=0"
var a = 2
var b = 3
var c = 4
let discriminant = (Double(b*b) - Double(4*a*c))
if discriminant < 0{print("Нет корней")}



var cathetA = 5
var cathetB = 6
var S  = (Double)(cathetA * cathetB) / 2
var hypo = sqrt((Double)(cathetA * cathetA) + (Double)(cathetB * cathetB)) 
var P = (Double)(cathetB + cathetA) + hypo
var result = """
Длина гипотенузы треугольника равна \(hypo)
Площадь треугольника равна \(S)
Периметр треугольника равен \(P)
"""

print(result)


// прием с тремя кавычками увидел в книге усова
let deposit = 10000
let percent = 7

var first = (percent * (deposit / 100) + deposit)
var second = (first / 100 * percent + first)
var third = ((second / 100 * percent) + second)
var fourth = ((third / 100 * percent) + third)
var fifth = ((fourth / 100 * percent) + fourth)

var text = """
Размер вклада на первый год \(first)
Размер вклада на второй год \(second)
Размер вклада на третий год \(third)
Размер вклада на четвертый год \(fourth)
Размер вклада на пятый год \(fifth)
"""

print(text)