//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    
    var favoriteFlavorsOfIceCream: [String : String] = [ "Joe": "Peanut Butter and Chocolate",
                                  "Tim" : "Natural Vanilla",
                                  "Sophie": "Mexican Chocolate",
                                  "Deniz" : "Natural Vanilla",
                                  "Tom"  :  "Mexican Chocolate",
                                  "Jim" : "Natural Vanilla",
                                 "Susan" : "Cookies 'N' Cream"]
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
    
        var output: [ String] = []
        
            for (key, value) in favoriteFlavorsOfIceCream  {
            if value == flavor {
               output.append(key)
            }
            }
         return output
        }
    
    
    // 3.
    
func count(forFlavor flavor: String) -> Int {
    
    var temp = 0
    for (_,value) in favoriteFlavorsOfIceCream {
        
        if value == flavor {
            temp += 1
        }
    }
    
    return temp
    }
   
    
    // 4.
   
    
func flavor(forPerson person: String) -> String? {
    
    for (key, value) in favoriteFlavorsOfIceCream {
        if key == person {
            return value
        }
            }
    return nil

    }
    
    // 5.

    
    func replace(flavor f: String, forPerson p: String) -> Bool {
    
       for (var keys,var value) in favoriteFlavorsOfIceCream {
            
            if keys == p {
                
                if value != f {
                     value = f
                    favoriteFlavorsOfIceCream[keys] = value
                    print("jjjjeeeehia")
                     return  true
                    
                } else {
                    
                }
               
            
        print("Nooopppe")
            return false

    
    }
    }
        return false
    }
    
    
    // 6.

    func remove(person p: String) -> Bool {
        
        
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if p == key {
                favoriteFlavorsOfIceCream[key] = nil
                return true
            }
        }
            
            return false
    }

    
    // 7.
    
    
    func numberOfAttendees() -> Int {
    
    return favoriteFlavorsOfIceCream.keys.count
    
    }
    
    
    // 8.
    
    func add(person per: String, withFlavor fla: String) -> Bool {
    
        for (key, _) in favoriteFlavorsOfIceCream {
            
            if key == per {
               return false
            }
        }
    
        favoriteFlavorsOfIceCream [per] = fla
    
    return true
       
    }
    
    
    // 9.
    
    
    func attendeeList() -> String {
    
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()

        var outString = ""
        for (key) in allNames {
            outString = outString + "\(key) likes \(favoriteFlavorsOfIceCream[key]!)\n"
        }
        outString = outString.substring(to: outString.index(before: outString.endIndex))
        //outString = outString.removeAtIndex.predecessor()
        return outString
}
}
