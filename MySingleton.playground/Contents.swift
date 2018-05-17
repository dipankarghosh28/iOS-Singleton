//: Playground - noun: a place where people can play
//IMPLEMENTING SINGLETON PATTERN FROM BOOK MASTERING SWIFT 4
import UIKit
class MySingleton{
    static let sharedInstance = MySingleton()
    //MySingleton class created a static constant named sharedInstance, which contains an instance of the MySingleton class.
    /// a
    var number = 0
    private init(){} // private initiator
}
var singleA = MySingleton.sharedInstance
var singleB = MySingleton.sharedInstance
var singleC = MySingleton.sharedInstance

singleB.number = 2
print(singleA.number)
print(singleB.number)
print(singleC.number)
singleC.number = 3
print(singleA.number)
print(singleB.number)
print(singleC.number)
//each variable points to the same instance.
// only one instance of the type existed throughout the application.
/* every time we call the sharedInstance property we would recieve a new copy, which would effectively break the singleton pattern
 used when we need to maintain the state of the object throughout the application ; requirement is there and then we should use singleton pattern.
 one and only one instance of the class through out the applcation, throughout the lifecycle of the application.
 prefer value types to reference types.
 sometimes a reference type is needed.
 Don't forget to use reference types with this pattern.
 
 */
