import Foundation

// ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    
    func chargeBattery() -> Void
    func checkBatteryLevel() -> Void
}

// EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    
    func turnOnTV() -> Void
    func turnOffTV() -> Void
}

//Implement a class named Camper that conforms to any 2 of the 5 protocols.
class Camper : ElectricitySystem, EntertainmentSystem {
    var batteryLevel: Double
    var hasTV: Bool
    var maxBatteryLevel: Double
    
    init() {
        self.batteryLevel = 0.0
        self.hasTV = true
        self.maxBatteryLevel = 100.0
    }
    
    //ElectricitySystem protocol methods
    func chargeBattery() -> Void {
        if batteryLevel < maxBatteryLevel {
            batteryLevel += 1.0 // Charging the battery by 1%
            if batteryLevel > maxBatteryLevel {
                batteryLevel = maxBatteryLevel
            }
                print("Battery is now charged to \(batteryLevel)%")
            } else {
                print("Battery is already fully charged.")
            }
    }
    
    func checkBatteryLevel() {
        print("Battery level: \(batteryLevel)%")
    }
    
    //EntertainmentSystem protocol methods
    func turnOnTV() {
        if hasTV {
            print("TV is turned on.")
        } else {
            print("No TV available in the camper.")
        }
    }
    
    func turnOffTV() {
        if hasTV {
            print("TV is turned off.")
        } else {
            print("No TV available in the camper.")
        }
    }
}

//write test code to demonstrate the functionality of the Camper class
var camper = Camper()
camper.chargeBattery() // Charging the battery
camper.chargeBattery()
camper.chargeBattery()
camper.checkBatteryLevel() // Checking battery level
camper.turnOnTV() // Turning on TV
camper.turnOffTV() // Turning off TV
