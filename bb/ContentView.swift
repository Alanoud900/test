import SwiftUI
import Firebase

struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack{
        TextField("Email", text: $email)
            .padding ()
        SecureField( "Password", text: $password)
            .padding ()
            
            
            Button {
        foo(email: email, password: password)
            }label: {
                Text ("signIn")
            }
            
        }
       
    }
func foo(email : String , password: String){
        Auth.auth().createUser(withEmail: email, password: password){
            result , error in if error != nil{
                print("")
            }else{
                print("Errroorr")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
