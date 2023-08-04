import SwiftUI
import Foundation

struct ContentView: View {
    @State private var counter = 0
    @ObservedObject private var loginModel = LoginViewModel()
    
    @State private var text1: String = ""
    @State private var text2: String = ""

    
    var body: some View {
        VStack(spacing: 5) {
            TextField("Enter email: ", text: self.$loginModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .padding()
            
            SecureField("Enter password: ", text: self.$loginModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
                .padding()
            
            Button(action: buttonTapped) {
                Text("Enviar")
            }.padding()
        }
        .padding()
        }
        func buttonTapped() {
        // Acción a realizar cuando se presiona el botón
        self.loginModel.Login()
        print("Botón presionado")
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
