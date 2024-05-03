import SwiftUI

struct ChangePasswordView: View {
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    @StateObject var myVM = MyDetailsViewModel.shared
    
   
    
    var body: some View {
        ZStack {
            
            ScrollView{
                VStack(spacing: 15){
                    
                    
                    LineSecureField( title: "Şu Anki Şifreniz", placholder: "Şu anki şifrenizi girin", txt: $myVM.txtCurrentPassword, isShowPassword: $myVM.isCurrentPassword)
                        .padding(.bottom, .screenWidth * 0.02)
                    
                    LineSecureField( title: "Yeni Şifreniz", placholder: "Yeni şifrenizi girin", txt: $myVM.txtNewPassword, isShowPassword: $myVM.isNewPassword)
                        .padding(.bottom, .screenWidth * 0.02)
                    
                    LineSecureField( title: "Yeni Şifrenizi Onaylayın", placholder: "Yeni şifrenizi onaylayın", txt: $myVM.txtConfirmPassword, isShowPassword: $myVM.isConfirmPassword)
                        .padding(.bottom, .screenWidth * 0.02)
                    
                    RoundButton(title: "Güncelle") {
                        myVM.serviceCallChangePassword()
                    }
                    .padding(.bottom, 45)
                    
                    
                }
                .padding(20)
                .padding(.top, .topInsets + 60)

            }
            
            VStack {
                    
                HStack{
                    
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                    
                    Text( "Şifreyi Değiştir")
                        .font(.customfont(.bold, fontSize: 20))
                        .frame(height: 46)
                    Spacer()
                    
                    

                }
                .padding(.top, .topInsets)
                .padding(.horizontal, 20)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.2),  radius: 2 )
                
                Spacer()
                
            }
        }
        
        .sheet(isPresented: $myVM.isShowPicker, content: {
            CountryPickerUI(country: $myVM.countryObj)
        })
        .alert(isPresented: $myVM.showError) {
            Alert(title: Text(Globs.AppName), message: Text(myVM.errorMessage), dismissButton: .default(Text("Tamam")))
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
