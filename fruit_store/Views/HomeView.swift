import SwiftUI
import QGrid


struct HomeView : View {
    
    @State private var productSearch = ""
    @State var selectedIndex: Int = 0
    
    
    @ObservedObject var homeVM : HomeViewModel
    @EnvironmentObject var cartVM : CartViewModel
    init() {
        self.homeVM = HomeViewModel()
    }
    
    var body: some View {
        
        VStack {
            if self.selectedIndex == 0 {
                HStack {
                    
                    TextField("Search product and department", text: $productSearch)
                    Button(action: {
                        
                    }){
                        Image(systemName: "magnifyingglass").foregroundColor(.gray)
                    }
                }
                .padding(.vertical,10).padding(.horizontal, 10)
                .background(RoundedRectangle(cornerRadius: 5).stroke(Color.init(red: 232/255, green: 232/255, blue: 234/255), lineWidth: 1))
                .padding(.horizontal,20)
            }
            
            
            
            if self.selectedIndex == 0 {
                HStack{
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            Spacer()
                            Label(title: "All department",colorBg: Color.init(red: 235/255, green: 254/255, blue: 254/255),colorText: Color.init(red: 12/255, green: 133/255, blue: 128/255))
                            Label(title: "Fruits",colorBg: Color.init(red: 12/255, green: 133/255, blue: 128/255), colorText: Color.white)
                            Label(title: "Citrus", colorBg: Color.init(red: 235/255, green: 254/255, blue: 254/255), colorText: Color.init(red: 12/255, green: 133/255, blue: 128/255))
                            Label(title: "Tropical and exotic", colorBg: Color.init(red: 235/255, green: 254/255, blue: 254/255), colorText: Color.init(red: 12/255, green: 133/255, blue: 128/255))
                            Label(title: "Berries", colorBg: Color.init(red: 235/255, green: 254/255, blue: 254/255), colorText: Color.init(red: 12/255, green: 133/255, blue: 128/255))
                            
                            
                        }
                    }
                }
            }
            
            if self.selectedIndex == 0 {
                QGrid(self.homeVM.fruits, columns: 3){ fruit in
                    VStack(alignment:.leading){
                        HStack{
                            Image("\(fruit.image)")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .padding(.all, 5)
                                .overlay(Circle().stroke(Color.init(red: 232/255, green: 232/255, blue: 234/255), lineWidth: 1))
                            Button(action:{
                                self.cartVM.numberItemInCart += 1
                                self.cartVM.add(fruit: fruit)
                            }){
                                Text("+")
                            }
                            .foregroundColor(Color.init(red: 12/255, green: 133/255, blue: 128/255))
                            .frame(width :20, height: 20)
                            .background(Color.init(red: 235/255, green: 254/255, blue: 254/255))
                            .clipShape(Circle())
                            .offset(x:-22,y: 22)
                        }
                        Text("$" + String(format: "%.2f", fruit.prices))
                            .bold()
                        Text("\(fruit.name) | \(fruit.weight)")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                    }
                    .frame(width: 100, height: 180)
                }
                
            }
            
            if self.selectedIndex == 1 { CartView() }
            
            if self.selectedIndex == 2 { Text("Account Tab | Just demo")}
            
            Spacer()
            BottomTabBar(selectedIndex: self.$selectedIndex)
            
        }
    }
}


struct Label : View {
    private var title : String
    private var colorBg : Color
    private var colorText : Color
    
    init(title: String, colorBg: Color, colorText: Color) {
        self.title = title
        self.colorBg = colorBg
        self.colorText = colorText
    }
    var body : some View {
        Section{
            Text(self.title)
                .bold()
                .padding()
                .frame(minWidth :120, maxHeight: 40)
                .background(colorBg)
                .foregroundColor(colorText)
                .cornerRadius(10)
        }.padding(.vertical, 10)
            .padding(.leading, 5)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
