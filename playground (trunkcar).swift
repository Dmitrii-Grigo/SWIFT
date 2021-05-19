

struct TrunkCar {
    var model: String
    var year: Int
    var tonnage:Double 
    var statusmotors: Bool
    var statuswindows: Bool
    var statustrunk: Double 
    var headlights: Bool
    
    init(model: String, year: Int, tonnage:Double,  statusmotors: Bool, statuswindows: Bool, statustrunk: Double, headlights: Bool) {
        self.model = model
        self.year = year
        self.tonnage = tonnage
        self.statusmotors = statusmotors
        self.statuswindows = statuswindows
        self.statustrunk = statustrunk
        self.headlights = headlights
    }
    
    enum FeaturesCar {
    case startmotor
    case stopmotor
    case openwindows
    case closewindows 
    case load (volume: Double)
    case uploaded(volume: Double)
    case on
    case off
}



    mutating func infocar(info:FeaturesCar) {
        switch info {
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
              print("В кузов загруженно \(volume) ")
            case .uploaded(let volume):
             print("Из кузова выгружено \(volume) ")
            case .on:
                headlights = true
                print("Фары включены")
            case .off:
                headlights = false
                print("Фары выключены")
    
        }
    }      
                

            func printCar() {
                print("Модель авто: \(self.model) ")
                print("Год выпуска авто: \(self.year) ")
                print("Тоннаж грузовика: \(self.tonnage) тонн")
                print("Состояние двигателя: \(self.statusmotors ? "Запущен" : "Заглушен") ")
                print("Положение окон: \(self.statuswindows ? "Подняты" : "Опущены") ")
                print("Объем груза в кузове: \(self.statustrunk)  ")
                print("Состояние фар : \(self.headlights ? "Включены" : "Выключены")")
        }
    }

var kamaz = TrunkCar(model: "Камаз", year: 2020, tonnage:15,  statusmotors: true, statuswindows: false, statustrunk: 2000, headlights: true)

kamaz.printCar() 
kamaz.infocar(info:.off)
kamaz.infocar(info:.stopmotor)

var volvo = TrunkCar(model: "Вольво", year: 2018, tonnage:20,  statusmotors: false, statuswindows: true, statustrunk: 5000, headlights: false)

print(volvo)
