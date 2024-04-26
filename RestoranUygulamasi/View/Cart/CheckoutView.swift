import SwiftUI

struct CheckoutView: View {
    
    @Binding var isShow: Bool
    @StateObject var cartVM = CartViewModel.shared
    
    
    
    var body: some View {
        VStack {
            
            Spacer()
            VStack{
                HStack{
                    
                    Text("Kontrol Et")
                        .font(.customfont(.bold, fontSize: 20))
                        .frame(height: 46)
                    Spacer()
                    
                    Button {
                        $isShow.wrappedValue = false
                    } label: {
                        Image("close")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    
                    
                }
                .padding(.top, 30)
                
                Divider()
                
                
                VStack{
                    HStack {
                        Text("Sipariş Tipi")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.secondaryText)
                            .frame(height: 46)
                        
                        Spacer()
                        
                        Picker("",  selection: $cartVM.deliveryType) {
                            Text("Sipariş").tag(1)
                            Text("Koleksiyon").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 180)
                    }
                    
                    Divider()
                    
                    if(cartVM.deliveryType == 1) {
                        
                        NavigationLink {
                            DelieryAddressView(isPicker: true, didSelect: {
                                aObj in
                                cartVM.deliverObj = aObj
                            } )
                        } label: {
                            HStack {
                                Text("Sipariş")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.secondaryText)
                                    .frame(height: 46)
                                
                                Spacer()
                                
                                Text( cartVM.deliverObj?.name ?? "Select Method")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.primaryText)
                                    .frame(height: 46)
                                
                                Image("next")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.primaryText)
                                
                            }
                        }

                        
                        
                        Divider()
                    }
                    
                    
                    HStack {
                        Text("Ödeme Tipi")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.secondaryText)
                            .frame(height: 46)
                        
                        Spacer()
                        
                        Picker("",  selection: $cartVM.paymentType) {
                            Text("COD").tag(1)
                            Text("Online").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150)
                    }
                    
                    Divider()
                    if(cartVM.paymentType == 2) {
                        
                        NavigationLink {
                            PaymentMethodsView(isPicker: true, didSelect: {
                                pObj in
                                cartVM.paymentObj = pObj
                            } )
                        } label: {
                            HStack {
                                Text("Ödeme")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.secondaryText)
                                    .frame(height: 46)
                                
                                Spacer()
                                
                                Image("master")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 20)
                                
                                Text( cartVM.paymentObj?.cardNumber ?? "Select")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.primaryText)
                                    .frame(height: 46)
                                
                                Image("next")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.primaryText)
                                
                            }
                        }
                        
                        Divider()
                    }
                    
                    NavigationLink {
                        PromoCodeView(isPicker: true, didSelect: {
                            pObj in
                            cartVM.promoObj = pObj
                        })
                    } label: {
                        HStack {
                            Text("Promosyon Kodu")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.secondaryText)
                                .frame(height: 46)
                            
                            Spacer()
                            
                            
                            
                            Text( cartVM.promoObj?.code  ?? "Pick Discount")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.primaryText)
                                .frame(height: 46)
                            
                            Image("next")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.primaryText)
                            
                        }
                    }
                    
                    Divider()
                }
                
                VStack{
                    HStack {
                        Text("Sonuç")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.secondaryText)
                        
                        Spacer()
                        
                        Text("$ \(cartVM.total)")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.secondaryText)
                    }
                    
                    HStack {
                        Text("Sipariş Toplamı")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.secondaryText)
                        
                        Spacer()
                        
                        Text("+ $ \(cartVM.deliverPriceAmount)")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.secondaryText)
                    }
                    
                    HStack {
                        Text("Hesap")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.secondaryText)
                        
                        Spacer()
                        
                        Text("- $ \(cartVM.discountAmount)")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.red)
                    }
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 15)
                
                HStack {
                    Text("Toplam Tutar")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.secondaryText)
                        .frame(height: 46)
                    
                    Spacer()
                    
                    
                    
                    Text("$\(cartVM.userPayAmount)")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.primaryText)
                        .frame(height: 46)
                    
                    Image("next")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primaryText)
                    
                }
                Divider()
                
                VStack {
                    Text("Devam Etmeden Önce Kabul Etmiş Sayılırsınız: ")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.secondaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        
                        Text("Üyelik Sözleşmesi")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                        
                        
                        Text(" ve ")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.secondaryText)
                        
                        
                        Text("Gizlilik Sözleşmesi.")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                    }
                    
                }
                .padding(.vertical, .screenWidth * 0.03)
                
                RoundButton(title: "Sipariş Yeri") {
                    cartVM.serviceCallOrderPlace()
                }
                .padding(.bottom, .bottomInsets + 70)
            }
            .padding(.horizontal, 20)
            .background(Color.white)
            .cornerRadius(20, corner: [.topLeft, .topRight])
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    @State static var isShow: Bool = false;
    static var previews: some View {
        NavigationView {
            CheckoutView(isShow: $isShow)
        }
        
    }
}
