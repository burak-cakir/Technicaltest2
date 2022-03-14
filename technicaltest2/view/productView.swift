
import SwiftUI
import URLImage

struct productView: View {
    
   
    var Repo = GenericRepository<fakeModel>()
    @State var list = [fakeModel]()
   
    @State private var searchText: String = ""
    
    
    let layout = [
                
            GridItem(.flexible()),
            GridItem(.flexible())
            
        ]
    
    var body: some View {
        
        VStack{
            
            
            ZStack {
                        Rectangle()
                            .foregroundColor(Color("LightGray"))
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search ..", text: $searchText)
                        }
                        
                        .foregroundColor(.gray)
                        .padding(.leading, 13)
                    }
                        .frame(height: 40)
                        .cornerRadius(13)
                        .padding()
            
            
            HStack{
                Button(action:{ }) {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .font(.title3)
                    Text("Sırala  ")
                }
                .frame(maxWidth:.infinity)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .opacity(0.7)
                .cornerRadius(15.0)
               
               
                 
                Button(action:{ }) {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title3)
                    Text("Filtrele  ")
                }
                .frame(maxWidth:.infinity)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .opacity(0.7)
                .cornerRadius(15.0)
      
              
            }
            .padding(3)
                
        }
     
        
        
        
        VStack{
                      
                    List(list, id:\.id){item in
                        HStack{
                            VStack{
                                URLImage( getImage(myimage: item) ){ image in
                                    image.resizable()
                                }
                                .frame(width: 80, height: 80)
                            VStack{
                                VStack{
                                    Text(item.title)
                                        .fixedSize()
                                        .font(.caption)
                                }
                                
                               
                                    
                                
                                
                                         
                                                }
                                if(item.price ?? 0.0 > 100.0 )
                                {
                                    Text(String (item.price ?? 0.0))
                                        .foregroundColor(.red)
                                        .bold()
                                }
                                else if (item.price ?? 0.0 > 20.0)
                                {
                                    Text(String (item.price ?? 0.0))
                                        .foregroundColor(.blue)
                                        .italic()
                                        
                                }
                                else{
                                    Text(String (item.price ?? 0.0))
                                }
                                
                                
                                 
                             }
                            
                            
                        }
                        
                        
                         
                     }
                    
                     
                     .onAppear(){
                         Repo.getAll(url: ""){ data in
                             
                             list = data;
                             
                         }
                     }
                     .frame(height:550)
        }
        
        
        
        
        
        
        
    }
}

struct productView_Previews: PreviewProvider {
    static var previews: some View {
        productView()
    }
}
    


struct cartBoxView : View {
    
    var cartModel : fakeModel
    
    var body: some View{
        
        HStack{
            Image(cartModel.image)
                .resizable()
                .frame(width: 50, height: 65)
            
            Text(cartModel.title)
                .foregroundColor(.white)
            Spacer()
        
           
        }
        .frame(width: 150)
        .padding(.trailing,18)
        .background(Color(.gray))
        .cornerRadius(10)

    }
    
}


func getImage(myimage : fakeModel) -> URL{
    if(myimage.image.count > 0){
        return URL(string: myimage.image)!
  
    }
    else{
        return URL(string: "https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg")!
      
    }
}
