//
//  WelcomeView.swift
//  NFT
//
//  Created by Lê Minh Hiếu on 07/01/2023.
//

import SwiftUI

struct NFTImage: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

struct NFTImageRow: View {
    var nftImage: NFTImage

    var body: some View {
        Image(nftImage.name)
    }
}

struct Welcome: View {
    var body: some View {
        let nftImagesRows = [
            [
                NFTImage(name: "NFTExample15"),
                NFTImage(name: "NFTExample16"),
                NFTImage(name: "NFTExample17"),
                NFTImage(name: "NFTExample18"),
            ],
            [
                NFTImage(name: "NFTExample11"),
                NFTImage(name: "NFTExample12"),
                NFTImage(name: "NFTExample13"),
                NFTImage(name: "NFTExample14"),
            ],
            [
                NFTImage(name: "NFTExample6"),
                NFTImage(name: "NFTExample7"),
                NFTImage(name: "NFTExample8"),
                NFTImage(name: "NFTExample9"),
            ],
            [
                NFTImage(name: "NFTExample1"),
                NFTImage(name: "NFTExample2"),
                NFTImage(name: "NFTExample3"),
                NFTImage(name: "NFTExample4"),
            ],
        ]

        return NavigationView {
            ZStack(alignment: .bottom) {
                VStack (spacing: 0) {
                    ForEach(nftImagesRows, id: \.self) { nftImagesRow in
                        HStack (spacing: 10) {
                            ForEach(nftImagesRow) { nftImage in
                                NFTImageRow(nftImage: nftImage)
                            }
                        }
                            .rotationEffect(Angle(degrees: -8.31))
                            .padding(.bottom, 15.0)
                    }
                    Spacer()
                }
//                    .padding(.top, -60)

                VStack (spacing: 0) {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(
                        colors: [
                            Color(red: 1, green: 1, blue: 1, opacity: 0),
                            Color(red: 1, green: 1, blue: 1, opacity: 1)]),
                        startPoint: .top, endPoint: .bottom))
                        .frame(width: .infinity, height: 70)
                    VStack (spacing: 0) {
                        Group {
                            Text("Discover NFT Collections")
                                .font(Font.system(size: 38))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.14901960784313725, green: 0.16470588235294117, blue: 0.1843137254901961))
                                .multilineTextAlignment(.center)
                                .padding(.top, 10)

                            Spacer().frame(height: 24)

                            Text("Explore the top collection of NFTs and buy and sell your NFTs as well.")
                                .font(Font.system(size: 18))
                                .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.35))
                                .multilineTextAlignment(.center)

                            Spacer().frame(height: 35)
                        }
                            .padding(.horizontal, 54)

                        NavigationLink (destination: Home()) {
                            HStack {
                                Text("Start Experience")
                                    .font(Font.system(size: 22))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(minWidth: 0, maxWidth: .infinity)

                                Image("rightArrow1")
                                    .frame(width: 81, height: 74)
                                    .background(.white)
                                    .cornerRadius(54)
                            }
                                .padding(.all, 5)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color(red: 0.9568627450980393, green: 0.7176470588235294, blue: 0.6588235294117647))
                                .cornerRadius(60)
                        }
                            .padding(.horizontal, 20.0)
                    }
                        .frame(width: UIScreen.screenWidth)
                        .background(Color(red: 1, green: 1, blue: 1))
                }
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
