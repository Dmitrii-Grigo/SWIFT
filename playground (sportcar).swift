import Foundation





struct Sportcar {
    var model: String
    var year: Int 
    var vtruck: Int 
    var statusmotors: Bool
    var statuswindows: Bool
    var statustrunk: Double 
    
    init(model: String, year: Int, vtruck: Int,  statusmotors: Bool, statuswindows: Bool, statustrunk: Double) {
        self.model = model
        self.year = year
        self.vtruck = vtruck
        self.statusmotors = statusmotors
        self.statuswindows = statuswindows
        self.statustrunk = statustrunk
    }
    
    enum FeaturesCar {
    case startmotor
    case stopmotor
    case openwindows
    case closewindows 
    case load (volume: Double)
    case uploaded(volume: Double)
}



    mutating func mutablefeatures(features:FeaturesCar) {
        switch features {
            case .startmotor:
                statusmotors = true
                print("Двигатель запущен")
            case .stopmotor:
                statusmotors = false 
                print("Двигатель заглушен") 
            case .openwindows:
                statuswindows = true
                print("Окна открыты") 
            case .closewindows:
                statuswindows = false
                print("Окна закрыты")
            case .load(let volume):
              print("В багажник загруженно \(volume) ")
            case .uploaded(let volume):
             print("Из багажника выгружено \(volume) ")
    
        }
    }      
                

            func printCar() {
                print("Модель авто: \(self.model) ")
                print("Год выпуска авто: \(self.year) ")
                print("Объем багажника: \(self.vtruck) ")
                print("Состояние двигателя: \(self.statusmotors ? "Запущен" : "Заглушен") ")
                print("Положение окон: \(self.statuswindows ? "Подняты" : "Опущены") ")
                print("Объем груза в багажника: \(self.statustrunk) ")
        }
    }


//var toyota = Sportcar(model: "toyota", year: 2015, vtruck: 150,  statusmotors: true, statuswindows: true, statustrunk: 100)

//toyota.printCar() 
//toyota.mutablefeatures(features:.startmotor)
//toyota.mutablefeatures(features:.stopmotor)
//print(toyota)

//Переменные закоментировал так как почему при двух этих переменных одна из них показывается меньше информации

var lexus = Sportcar(model: "lexus", year: 2021, vtruck: 400,  statusmotors: false, statuswindows: false, statustrunk: 300)

lexus.printCar() 
lexus.mutablefeatures(features:.load(volume:100))
lexus.mutablefeatures(features:.uploaded(volume:400))
print(lexus)








