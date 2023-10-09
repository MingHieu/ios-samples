//
//  NftDetail.swift
//  NFT
//
//  Created by Lê Minh Hiếu on 08/01/2023.
//

import SwiftUI

struct BuyModal: View {
    @State var yOffset = 0.0
    @Binding var backgroundImageHeight: CGFloat
    @Binding var isShow: Bool {
        didSet {
            yOffset = 0
        }
    }

    func closeModal() {
        isShow = false
        backgroundImageHeight = UIScreen.screenHeight
    }

    var mainView: some View {
        VStack(spacing: 0) {
            ZStack {
                Rectangle()
                    .fill(Color(.white))
                    .frame(width: 40, height: 6)
                    .cornerRadius(100)
            }
                .frame(height: 40)
                .frame(maxWidth: .infinity)
                .background(Color.white.opacity(0.00001)) // Hack for drag gesture
            .gesture(dragGesture)

            VStack {
                VStack {
                    HStack {
                        Image("sampleAvatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 46, height: 46)
                        Spacer().frame(width: 20)
                        VStack {
                            Text("Adam Nash")
                                .font(Font.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Offered to you")
                                .font(Font.system(size: 14))
                                .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Image("NFTExampleItem4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }

                    Spacer().frame(height: 20)

                    HStack(alignment: .bottom) {
                        Text("Total Amount")
                            .font(Font.system(size: 15))
                            .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                        Spacer()
                        Group {
                            Text("18.6 ")
                                .font(Font.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                                .padding(.vertical, -40 * 0.23)
                            Text("ETH")
                                .font(Font.system(size: 18))
                                .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                        }
                    }
                }
                    .padding(.all, 30)
                    .background(Color(.white))
                    .cornerRadius(30)

                Spacer().frame(height: 20)

                VStack(spacing: 10) {
                    Text("Fiat Amount")
                        .font(Font.system(size: 16))
                        .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                    Text("3,829,499 USD")
                        .font(Font.system(size: 31))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                    Rectangle()
                        .fill(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                        .frame(width: .infinity, height: 0.5)
                    HStack {
                        Text("Network")
                            .font(Font.system(size: 15))
                            .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                        Spacer()
                        Text("Binance Smart Chain")
                            .font(Font.system(size: 15))
                            .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                    }
                    HStack {
                        Text("Order Number")
                            .font(Font.system(size: 15))
                            .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                        Spacer()
                        Text("287e8wI82e32eQjBdW")
                            .font(Font.system(size: 15))
                            .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                    }
                }
                    .padding(.vertical, 30)
                    .padding(.horizontal, 40)
                    .background(BlurView())
                    .cornerRadius(30)

                Spacer().frame(height: 20)

                Button(action: { withAnimation {
                    closeModal()
                } }) {
                    HStack(alignment: .center) {
                        Image("bag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .frame(width: 100, height: 70)
                            .background(Color(red: 1, green: 1, blue: 1))
                            .cornerRadius(100)
                        Spacer().frame(width: 20)
                        Text("Buy NFT")
                            .font(Font.system(size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Image("rightArrow")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .frame(width: 100, height: 70)
                            .foregroundColor(.white)
                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                            .cornerRadius(100)
                    }
                        .padding(.all, 8)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.1843137254901961, green: 0.2196078431372549, blue: 0.2549019607843137)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(100)
                }

                Spacer().frame(height: getSafeAreaInsets()["bottom"])
            }
                .padding(.horizontal, 20)
                .frame(maxHeight: .infinity, alignment: .bottomLeading)
        }
            .frame(height: 550)
            .frame(maxWidth: .infinity)
            .background(
            Rectangle()
                .fill(.white.opacity(0))
                .background(BlurView().cornerRadius(30))
        )
            .offset(y: yOffset)
    }

    @Binding var isDraging: Bool
    @State private var prevDragTranslation = CGSize.zero

    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
            isDraging = true
            let dragAmount = val.translation.height - prevDragTranslation.height
            yOffset += dragAmount

            if yOffset < 0 {
                yOffset = 0

            }

            backgroundImageHeight += dragAmount
            if backgroundImageHeight < UIScreen.screenHeight - 500 {
                backgroundImageHeight = UIScreen.screenHeight - 500
            }

            prevDragTranslation = val.translation
        }
            .onEnded { val in
            isDraging = false
            prevDragTranslation = .zero
            if yOffset > 150 {
                closeModal()
            } else {
                yOffset = 0
                backgroundImageHeight = UIScreen.screenHeight - 500
            }
        }
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            if isShow {
                Color.black
                    .opacity(0.0001)
                    .ignoresSafeArea()
                    .onTapGesture { closeModal() }
                mainView
                    .transition(.move(edge: .bottom))
            }
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            .animation(isDraging ? nil : .easeInOut)
    }
}

struct NftDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var isShowBuyModal = false;
    @State var imageHeight = UIScreen.screenHeight
    @State var isBuyModalDraging = false;

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomLeading) {
                Image("NFTExampleFullscreen")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.screenWidth, height: imageHeight)
                    .ignoresSafeArea()
                    .animation(isBuyModalDraging ? nil : .easeInOut)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

                VStack(alignment: .leading, spacing: 0) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("leftArrow")
                            .frame(width: 78, height: 108)
                            .background(Color(red: 1, green: 1, blue: 1))
                            .cornerRadius(50)
                    }

                    Group {
                        Text("Hypebeast")
                            .font(Font.system(size: 44))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("#2123")
                            .font(Font.system(size: 44))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, alignment: .trailing)

                    Spacer().frame(height: 20)

                    VStack(spacing: 10) {
                        VStack {
                            Text("03")
                                .font(Font.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("days")
                                .font(Font.system(size: 14))
                                .foregroundColor(.white)
                        }
                            .frame(width: 65, height: 90)
                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                            .cornerRadius(20)
                        VStack {
                            Text("04")
                                .font(Font.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("hours")
                                .font(Font.system(size: 14))
                                .foregroundColor(.white)
                        }
                            .frame(width: 65, height: 90)
                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                            .cornerRadius(20)
                        VStack {
                            Text("30")
                                .font(Font.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("mins")
                                .font(Font.system(size: 14))
                                .foregroundColor(.white)
                        }
                            .frame(width: 65, height: 90)
                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                            .cornerRadius(20)
                    }.frame(maxWidth: .infinity, alignment: .trailing)

                    Spacer().frame(height: 10)

                    HStack(alignment: .bottom) {
                        VStack {
                            Image("Gem")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding(.all, 8)
                                .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.3))
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("18.6")
                                .font(Font.system(size: 40))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Highest Bid")
                                .font(Font.system(size: 18))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                            .padding(.all, 20.0)
                            .background(Color(red: 0.957, green: 0.7176470588235294, blue: 0.6588235294117647))
                            .cornerRadius(25)

                        Spacer().frame(width: 40)

                        VStack {
                            Text("Owner")
                                .font(Font.system(size: 16))
                                .foregroundColor(Color(red: 0.302, green: 0.30980392156862746, blue: 0.3176470588235294, opacity: 0.5))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Image("sampleAvatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            HStack {
                                Text("Adam Nash")
                                    .font(Font.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image("Check")
                            }
                        }
                            .padding(.all, 20.0)
                            .background(BlurView())
                            .cornerRadius(40)
                    }

                    Spacer().frame(height: 30)

                    Button(action: { withAnimation {
                        isShowBuyModal = true
                        imageHeight = UIScreen.screenHeight - 500
                    } }) {
                        HStack(alignment: .center) {
                            Image("Hammer")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding(.all, 20)
                                .background(Color(red: 1, green: 1, blue: 1))
                                .cornerRadius(100)
                            Spacer().frame(width: 20)
                            Text("Place Bid")
                                .font(Font.system(size: 22))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer()
                            Image("rightArrow1")
                                .renderingMode(.template)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Spacer().frame(width: 20)
                        }
                            .padding(.all, 8)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.1843137254901961, green: 0.2196078431372549, blue: 0.2549019607843137)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(100)
                    }

                    Spacer().frame(height: getSafeAreaInsets()["bottom"])
                }.padding(.all, 20)

                BuyModal(backgroundImageHeight: $imageHeight, isShow: $isShowBuyModal, isDraging: $isBuyModalDraging)
            }
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.796078431372549, green: 0.6666666666666666, blue: 0.7019607843137254)/*@END_MENU_TOKEN@*/)
        }.navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    }
}

struct NftDetail_Previews: PreviewProvider {
    static var previews: some View {
        NftDetail()
    }
}
