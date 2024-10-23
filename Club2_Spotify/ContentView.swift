//
//  ContentView.swift
//  Club2_Spotify
//
//  Created by Nicholas Nguyen on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var heartcolor = Color.white
    @State private var heart = true
    @State var sliderValue : Float = 0.0
    let topColor = Color(red: 45/255, green: 155/255, blue: 195/255)
    let bottomColor = Color(red: 27/255, green: 87/255, blue: 109/255)
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "chevron.down")
                        .bold()
                        .padding(.bottom, 10.0)
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("\"Awaken, My Love\"")
                        .font(.system(size: 14))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                }
                .padding(.horizontal, 25.0)
                Spacer()
                HStack {
                    Image("gambino")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                        .padding(25)
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Me and Your Mama")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .bold()
                        
                        Text("Childish Gambino")
                            .font(.subheadline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.688))
                            .multilineTextAlignment(.leading)
                    }
                    .padding(25.0)
                    Spacer()
                    Button {
                        if (heartcolor == Color.white) {
                            heartcolor = Color.green
                            heart = true
                        } else {
                            heartcolor = Color.white
                            heart = false
                        }
                    } label: {
                        Image(systemName:  heart ? "heart.fill" : "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(heartcolor)
                            .padding(.horizontal, 25.0)
                    }
                }
                VStack {
                    Slider(value: $sliderValue, in: 0...10)
                        .accentColor(.white)
                        .padding(.horizontal, 25.0)
                    HStack {
                        Text("0:00")
                            .font(.caption)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.688))
                        Spacer()
                        Text("3:00")
                            .font(.caption)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.008, brightness: 0.688))
                    }
                    .padding(.top, -15.0)
                    .padding(.horizontal, 25.0)
                }
                .padding(.vertical, -20.0)
                Spacer()
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 25.0)
                Spacer()
                HStack{
                    Image(systemName: "hifispeaker.2")
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.white)
                        .padding(.horizontal, 16)
                    Image(systemName: "rectangle.stack")
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 25.0)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
