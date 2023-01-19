
import WebKit
import Foundation
class networkaManager:ObservableObject{
    var url:String?
    
    @Published var finalPosts=[postdata]()
    func fetchData(){
        //ust
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session=URLSession(configuration: .default)
            let task=session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder=JSONDecoder()
                    if let safeData=data{
                        do{
                            let finalData = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.sync{
                                self.finalPosts=finalData.hits
                            }
                        }
                        catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
            
            
            
        }
        
    }
}
