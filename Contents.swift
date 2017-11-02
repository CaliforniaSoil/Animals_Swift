//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    var name: String
    var health: Int = 100
    
    init(name: String){
        self.name = name
    }
    func displayHealth() -> Int{
        return health
    }
    
}

class Cat: Animal {
    override init(name: String){
        super.init(name: name)
        health = 150
    }
    func growl(){
        print("Rawr!")
    }
    func run() -> Int{
        print("Running")
        health -= 10
        return health
    }
}

class Lion: Cat{
    override init(name: String){
        super.init(name: name)
        health = 200
    }
    override func growl(){
        print("ROAR! I am the King of the Jungle")
    }
}

class Cheetah: Cat {
    override init(name: String){
        super.init(name: name)
        health = 200
    }
    override func run() -> Int{
        if health <= 0{
            print ("cheetah cannot run without any health")
        }
        else{
            print("Running")
            health -= 50
        }
        return health
    }
    
    func sleep() -> Int{
        if self.health < 200{
          self.health += 50
    }
        return health
}
}

var someanimal = Animal(name: "someanimal")
someanimal.displayHealth()
var kitty = Cat(name: "Kitty")
kitty.displayHealth()
kitty.run()
kitty.run()
kitty.run()
kitty.growl()

var cheeta = Cheetah(name: "Cheeta")
cheeta.displayHealth()
cheeta.run()
cheeta.run()
cheeta.run()
cheeta.run()
cheeta.run()
cheeta.run()
cheeta.sleep()
cheeta.sleep()
cheeta.sleep()
cheeta.sleep()
var leo = Lion(name: "KingLeo")
leo.displayHealth()
leo.run()
leo.run()
leo.run()
leo.growl()
