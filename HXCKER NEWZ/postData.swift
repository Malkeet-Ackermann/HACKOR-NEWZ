import Foundation
struct postdata:Identifiable,Decodable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

struct Results:Decodable{
    var hits:[postdata]
}
