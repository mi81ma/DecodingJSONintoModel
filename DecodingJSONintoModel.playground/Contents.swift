
import UIKit

//struct Customer : Codable {
//    var firstName :String
//    var lastName :String
//    var age :Int
//
//    /*
//    private enum CodingKeys : String, CodingKey {
//        case firstName
//        case lastName
//        case age
//    }
//
//
//    init(from decoder :Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.firstName = try container.decode(String.self, forKey: .firstName)
//        self.lastName = try container.decode(String.self, forKey: .lastName)
//        self.age = try container.decode(Int.self, forKey: .age)
//    }
// */
//}



//let json = """
//
//{
//    "firstName" : "Jonhn",
//    "lastName" : "Doe",
//    "age" : 34
//}
//
//""".data(using: .utf8)!
//
//
//let customer = try! JSONDecoder().decode(Customer.self, from: json)
//print(customer)
//



// ************Encoding********************

//struct Customer : Codable {
//    var firstName :String
//    var lastName :String
//    var age :Int
//
//
////        private enum CodingKeys : String, CodingKey {
////            case firstName
////            case lastName
////            case age
////        }
////
////
////    func encode(to encoder :Encoder) throws {
////
////        var container = encoder.container(keyedBy: CodingKeys.self)
////        try container.encode(self.firstName, forKey: .firstName)
////        try container.encode(self.lastName, forKey: .lastName)
////        try container.encode(self.age, forKey: .age)
////}
////}
////
//let customer = Customer(firstName: "John", lastName: "Doe", age: 45)
//let encodedCustomerJSON = try! JSONEncoder().encode(customer)
//
//print(encodedCustomerJSON)
//
//print(String(data: encodedCustomerJSON, encoding: .utf8))
//
//let customerJson = try! JSONDecoder().decode(Customer.self, from: encodedCustomerJSON)
//print(customerJson)
//
//
//

// ************ Decode Array Type Json *****************

struct Place : Decodable {
    var name : String
    var latitude : Double
    var longitude : Double
    var visited : Bool
}

let json = """

[
{
"name" : "Costa Rica",
"latitude" : 23.45,
"longitude" : 45.23,
"visited" : true
},
{
"name" : "Puerto Rico",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Mexico City",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Iceland",
"latitude" : 23,
"longitude" : 45,
"visited" : false
}

]
""".data(using: .utf8)!


let places = try! JSONDecoder().decode([Place].self, from: json)


places[0].name
places[1].name
places[2].name

print("this is JSON : \(places)")

