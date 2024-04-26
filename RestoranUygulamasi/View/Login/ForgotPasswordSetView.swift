import SwiftUI

struct ForgotPasswordSetView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var forgotVM = ForgotPasswordViewModel.shared;
    
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
            .resizable()
            .scaledToFill()
            .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                
                
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
                
                Text("Yeni Şifre Belirle")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Yeni Şifreni Gir")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                
                LineSecureField( title: "Yeni Şifre", placholder: "Yeni Şifreni Gir", txt: $forgotVM.txtNewPassword, isShowPassword: $forgotVM.isNewPassword)
                    .padding(.bottom, .screenWidth * 0.02)
                
                LineSecureField( title: "Yeni Şifreni Onayla", placholder: "Yeni Şifreni Onayla", txt: $forgotVM.txtConfirmPassword, isShowPassword: $forgotVM.isConfirmPassword)
                    .padding(.bottom, .screenWidth * 0.04)
                
                
                RoundButton(title: "Onayla") {
                    forgotVM.serviceCallSetPassword()
                }
                .padding(.bottom, .screenWidth * 0.05)
                
                
                
                
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack {
                    
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()

                }
                
                Spacer()
                
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
            
            
            
        }
        .alert(isPresented: $forgotVM.showError) {
                
            Alert(title: Text(Globs.AppName), message: Text( forgotVM.errorMessage ), dismissButton: .default(Text("Ok")))
        }
        
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
}

struct ForgotPasswordSetView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordSetView()
    }
}
