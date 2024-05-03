import SwiftUI

struct AddPaymentMethodView: View {
    @Environment(\.presentationMode) var mode : Binding<PresentationMode>
    @StateObject var payVM = PaymentViewModel.shared
    
    
    var body: some View {
        ZStack {
            
            ScrollView{
                VStack(spacing: 15){
                    
                                        
                    
                    LineTextField(title: "İsim", placholder: "İsminizi girin" , txt: $payVM.txtName)
                    
                    LineTextField(title: "Kredi/Banka Kart Numarası", placholder: "Kredi/Banka kart numaranızı girin", txt: $payVM.txtCardNumber, keyboardType: .numberPad)
                    
                   
                    
                    HStack{
                        LineTextField(title: "MM", placholder: "Ayınızı girin" , txt: $payVM.txtCardMonth, keyboardType: .numberPad)
                        LineTextField(title: "YYYY", placholder: "Yılınızı girin" , txt: $payVM.txtCardYear, keyboardType: .numberPad)
                    }
                   
                    
                    RoundButton(title:  "Ödeme Yönteminizi Ekleyin") {
                        
                            payVM.serviceCallAdd {
                                self.mode.wrappedValue.dismiss()
                            }
                        
                    }
                    
                }
                .padding(20)
                .padding(.top, .topInsets + 46)

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
                    
                    Text("Ödeme Yönteminizi Ekleyin")
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
        
        .alert(isPresented: $payVM.showError) {
            Alert(title: Text(Globs.AppName), message: Text(payVM.errorMessage), dismissButton: .default(Text("Ok")))
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}

struct AddPaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        AddPaymentMethodView()
    }
}
