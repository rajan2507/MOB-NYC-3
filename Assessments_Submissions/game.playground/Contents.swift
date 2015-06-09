//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Player {
    var name: String
    var dmg: Int
    var health: Int = 100
    
    init (name: String){
        self.name = name
        self.dmg = 5
        
    }
    func attack () -> Int {
        return self.dmg
    }
    
    func takeDamage (dmg: Int) {
        self.health -= dmg         // self.health = self.health - dmg
    }
    
    func isAlive () -> Bool {
        return self.health > 0
    }

}




//class GoodPlayer: Player {
//    override func attack () -> Int {
//        return 10  overiding the class instead of just the init
//    }


// we are overiding only init value


class GoodPlayer: Player {
    override init (name playername: String) {
        super.init(name: playername)
        self.dmg = 10
    }
}



class BadPlayer: Player {
    override init(name playername: String) {
        super.init(name: playername)
        self.dmg = 2
    }
}

//var ken = GoodPlayer()  //ken is an instance of good player


class Match {
    var player1: Player
    var player2: Player
    
    init (player1: Player, Player2: Player){
        self.player1 = player1
        self.player2 = Player2
        
    }
    

    func playGame() -> String {
        var dmg: Int
        while player1.isAlive() && player2.isAlive() {
            dmg = player1.attack()
            player2.takeDamage(dmg)
            
            dmg = player2.attack()
            player1.takeDamage(dmg)
        }
        
        
        if player1.isAlive() {
            return player1.name
    
        } else {
            return player2.name
        }
        
    }
    
}



var a = GoodPlayer (name: "Allison")
var b = BadPlayer (name: "Rajan")

var round1 = Match (player1: a, Player2: b)


println(round1.playGame())












