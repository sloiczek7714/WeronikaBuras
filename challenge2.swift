class Ship
{
  let name: String
  init (name: String)
  {
    self.name = name
  }
}
class Engine 
{ 
  enum TypeOfEngine: String
  {
    case engineFirst
    case engineSecond
    case engineBoth
    case engineZero
  }
  var captainCommand = false
  let engine: TypeOfEngine 
  var power: String
  {
    switch engine
    {
      case .engineFirst:
      return "2khp"
      case .engineSecond:
      return "4khp"
      case .engineBoth:
      return "6khp"
      case .engineZero:
      if (captainCommand == false)
      { }
     return "0khp"
    }
  } 
    init(engine: TypeOfEngine)
    {
      self.engine = engine
    }
  
}

class Tourist
{
 
  enum Atraction: String
  {
    case restaurant 
    case barFirst
    case barSecond 
    case cabin
  }
  var type = "Tourist"
  var age: Int
  var amountOfTurist = 3500
  var firstBarCapacity = 0
  var secondBarCapacity = 0
  var restaurantCapacity = 0
  var activity: String
  var fullBarCapacity = 50
  var fullResturantcapacity = 300
  var capacityActuall = 0
  func checkPlace (capacity: Int) -> Int
  {
      
    if (capacity < 300 && capacity == restaurantCapacity)
        {
          capacityActuall += 1
          print ("There was a place for you !")
          return capacityActuall
        }
       else if (capacity < 50 && (capacity == firstBarCapacity || capacity == secondBarCapacity)) 
       {
       
         if (age > 17)
        { 
          capacityActuall += 1
          print ("There was a place for you !")
          return capacityActuall
        }
        else
          {
           print ("You are to young to be here!") 
          }
       } 
      
       else  
        {
         print("There is not enough place for you!")
         return capacityActuall
        }
        return capacityActuall
  } 
  let atraction: Atraction
  var checkingPlace: Int
  {
    switch atraction
    {
      case .restaurant:
      return checkPlace(capacity: restaurantCapacity)
      case .barFirst:
      return checkPlace(capacity: firstBarCapacity)
      case .barSecond:
      return checkPlace(capacity: secondBarCapacity)
      case .cabin:
      return 1
    } 
  }
  init(atraction: Atraction, age: Int, activity: String)
  {
    self.atraction = atraction
    self.age = age
    self.activity = activity
  }
}
  
class ShipCrew
{
  let type: String
  let amountOfShipCrew: Int
  init (amountOfShipCrew: Int, type: String)
  {
    self.amountOfShipCrew = 50
    self.type = "ShipCrew"
  }
}
class Restaurant
{
  let capacityRestaurant: Int
  init (capacityRestaurant: Int)
  {
  self.capacityRestaurant = 300
  }
}
class Cabin
{
  var withFriends: Bool
  enum TypeOfCabin: String
  {
    case twoPersonCabin
    case fourPersonCabin
  }
   var typeOfCabin: TypeOfCabin
   var amount: Int
  { 
    switch typeOfCabin
    {
     case .twoPersonCabin:
      return 2
     case .fourPersonCabin:
      return 4
    }
  }
  init (withFriends: Bool, typeOfCabin: TypeOfCabin)
  {
  self.withFriends = withFriends
  self.typeOfCabin = typeOfCabin
  } 
}
class Bar
{
  let firstBarCapacity: Int
  let secondBarCapacity: Int
  init (secondBarCapacity: Int, firstBarCapacity: Int)
  {
    self.secondBarCapacity = 50
    self.firstBarCapacity = 50
  }
}