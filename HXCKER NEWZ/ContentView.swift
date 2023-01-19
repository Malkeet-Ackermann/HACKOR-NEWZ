import SwiftUI

//let posts=[
//    Posts(id:"1",title:"News1"),
//    Posts(id:"2",title:"News2"),
//    Posts(id:"3",title:"News3"),
//
//
//]

struct ContentView: View {
    @ObservedObject var network=networkaManager()
    var body: some View {
        VStack{
            Text("HXCKER NEWZ  🪙")
                
            NavigationView{
                List(network.finalPosts){ someStuff in
                    Text(someStuff.title)
                }}
        }
        .onAppear{
            self.network.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

