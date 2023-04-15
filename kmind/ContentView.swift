import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Kmind")
                    .font(Device.current == .mac ? .system(size: 48) : .largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, Device.current == .mac ? 80 : 50)
                
                VStack(alignment: .leading) {
                    Text("用户")
                        .font(.headline)
                    TextField("Enter your username", text: $username)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(8.0)
                        .padding(.bottom, 20)
                    
                    Text("密码")
                        .font(.headline)
                    SecureField("Enter your password", text: $password)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(8.0)
                        .padding(.bottom, 20)
                }
                .padding(.horizontal, Device.current == .mac ? 80 : 40)
                
                Button(action: {
                    print("Login button tapped")
                }) {
                    Text("Login")
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8.0)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, Device.current == .mac ? 80 : 40)
                
                Spacer()
            }
            .padding(.top, Device.current == .mac ? 150 : 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
