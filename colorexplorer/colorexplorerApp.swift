//
//  colorexplorerApp.swift
//  colorexplorer
//
//  Created by bill donner on 10/9/24.
//

import SwiftUI

@main
struct ColorExplorerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                // System colors section
                VStack {
                    Text("System Colors on Circles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(systemColors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                    
                    Text("System Colors as Borders on Rectangles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(systemColors, id: \.self) { color in
                                Rectangle()
                                    .stroke(color, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                }

                // RGB colors section
                VStack {
                    Text("Custom RGB Colors on Circles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(rgbColors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                    
                    Text("Custom RGB Colors as Borders on Rectangles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(rgbColors, id: \.self) { color in
                                Rectangle()
                                    .stroke(color, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                }

                // Gray scale colors section
                VStack {
                    Text("Gray Scale Colors on Circles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(grayColors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }

                    Text("Gray Scale Colors as Borders on Rectangles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(grayColors, id: \.self) { color in
                                Rectangle()
                                    .stroke(color, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                }

                // HSB colors section
                VStack {
                    Text("HSB Colors on Circles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(hsbColors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                    
                    Text("HSB Colors as Borders on Rectangles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(hsbColors, id: \.self) { color in
                                Rectangle()
                                    .stroke(color, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                }

                // Custom Alpha colors section
                VStack {
                    Text("Colors with Custom Opacity on Circles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(alphaColors, id: \.self) { color in
                                Circle()
                                    .fill(color)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }

                    Text("Colors with Custom Opacity as Borders on Rectangles")
                        .font(.headline)
                        .padding(.top)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(alphaColors, id: \.self) { color in
                                Rectangle()
                                    .stroke(color, lineWidth: 5)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 5)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
    
    // Arrays of colors, doubled in size
    let systemColors: [Color] = [.red, .blue, .green, .yellow, .orange, .pink, .purple, .black, .gray, .white, .mint, .indigo, .brown, .cyan, .teal]
    
    let rgbColors: [Color] = [
        Color(red: 1.0, green: 0.5, blue: 0.5), // Light red
        Color(red: 0.5, green: 1.0, blue: 0.5), // Light green
        Color(red: 0.5, green: 0.5, blue: 1.0), // Light blue
        Color(red: 0.8, green: 0.2, blue: 0.6), // Purple-ish
        Color(red: 0.2, green: 0.8, blue: 0.2), // Bright green
        Color(red: 0.9, green: 0.6, blue: 0.2), // Warm orange
        Color(red: 0.7, green: 0.2, blue: 0.1), // Deep red
        Color(red: 0.1, green: 0.7, blue: 0.1), // Forest green
        Color(red: 0.4, green: 0.6, blue: 1.0), // Sky blue
        Color(red: 0.3, green: 0.3, blue: 0.9)  // Deep blue
    ]
    
    // Array of gray scale colors, doubled
    let grayColors: [Color] = [
        Color(white: 0.2), Color(white: 0.3), Color(white: 0.4), Color(white: 0.5),
        Color(white: 0.6), Color(white: 0.7), Color(white: 0.8), Color(white: 0.9),
        Color(white: 1.0), Color(white: 0.1)
    ]
    
    // Array of HSB colors, doubled
    let hsbColors: [Color] = [
        Color(hue: 0.1, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.2, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.3, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.4, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.5, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.6, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.7, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.8, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.9, saturation: 0.9, brightness: 0.9),
        Color(hue: 0.0, saturation: 0.9, brightness: 0.9)
    ]
    
    // Array of custom alpha colors, doubled
    let alphaColors: [Color] = [
        Color.red.opacity(0.2), Color.blue.opacity(0.5), Color.green.opacity(0.7),
        Color.orange.opacity(0.9), Color.purple.opacity(1.0),
        Color.red.opacity(0.3), Color.blue.opacity(0.4), Color.green.opacity(0.6),
        Color.orange.opacity(0.8), Color.purple.opacity(0.9)
    ]
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
