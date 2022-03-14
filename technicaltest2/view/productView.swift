
import SwiftUI
import URLImage

struct productView: View {
    
    
    var Repo = GenericRepository<fakeModel>()
    @State var list = [fakeModel]()
   
       
    
    
    let layout = [
                
            GridItem(.flexible()),
            GridItem(.flexible())
            
        ]
    
    var body: some View {
        VStack{
            Text("deneme")
        }
     
        
        
        
        VStack{
                      
                    List(list, id:\.id){item in
                        VStack{
                            Text(item.title)
                                .font(.subheadline)
                                
                            
                            URLImage( getImage(myimage: item) ){ image in
                                image.resizable()
                                     
                                            }
                           
                            Text(String (item.price ?? 0.0))
                            
                            
                             
                         }
                        .frame(width: 100, height: 100, alignment: .center)
                         
                     }
                     
                     .onAppear(){
                         Repo.getAll(url: ""){ data in
                             
                             list = data;
                             
                         }
                     }
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
