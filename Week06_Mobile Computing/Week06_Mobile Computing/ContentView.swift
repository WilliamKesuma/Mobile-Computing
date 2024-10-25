//
//  ContentView.swift
//  Week06_Mobile Computing
//
//  Created by student on 25/10/24.
//
import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ZStack {
            // Background split into black and white sections
            VStack(spacing: 0) {
                Color.black // Black upper background
                    .frame(height: 120)
                Color.white // White lower background
            }
            .edgesIgnoringSafeArea(.all) // Ensures background covers the entire screen
            
            VStack {
                // Profile Image and Info
                VStack {
                    Image(systemName: "person.crop.circle.fill") // Placeholder avatar
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .background(Color.black) // Match with background color
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4) // White border around image
                        )
                        .offset(y: 50) // Move the image slightly down to overlap black and white sections
                    
                    VStack {
                        Text("@William.kesuma")
                            .font(.subheadline)
                            .foregroundColor(.black.opacity(0.7))
                        
                        Text("William Sanjaya Kesuma")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding(.top, 60) // Ensure proper padding between image and text
                }
                .padding(.top, -50) // Adjust the top padding to align with the offset
                
                // Location and Date Joined Section in white
                VStack {
                    HStack {
                        Text("Bandung")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        Text(" | Joined March 2023")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    .padding(.top, 10) // Add padding to space it below the profile
                    
                    // Follow, Message, and More Buttons
                    HStack(spacing: 20) {
                        Button(action: {
                            // Follow action
                        }) {
                            Text("Follow")
                                .frame(width: 100, height: 40)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            // Message action
                        }) {
                            Text("Message")
                                .frame(width: 100, height: 40)
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.black)
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            // More action
                        }) {
                            Image(systemName: "ellipsis")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.black)
                                .cornerRadius(8)
                        }
                    }
                    .padding(.top, 10)
                }
                .background(Color.white)
                
                // Additional Information Section
                VStack(alignment: .center, spacing: 20) {
                    // Description section
                    VStack(alignment: .center) {
                        Text("CEO System D, Because your satisfaction is everything & standing out from the rest, and that's what we want you to be as well.")
                            .font(.body)
                            .padding(.horizontal)
                            .padding(.top, 5)
                            .multilineTextAlignment(.center)
                    }
                    VStack(alignment: .leading, spacing: 20) {
                        Text("INFORMATION")
                            .padding(.horizontal)
                            .font(.headline)
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("🌐 Website")
                                Text("🗒️ Email")
                                Text("📞 Phone")
                                Text("🗓️   Joined")
                            }
                            .font(.caption)
                            .foregroundColor(.gray)

                            Spacer() // This Spacer pushes the second VStack to the right

                            VStack(alignment: .leading, spacing: 5) {
                                Text("www.Arnoldy.com")
                                Text("Hello@adalahreza.com")
                                Text("+62 517 218 92 00")
                                Text("26 March, 2023")
                            }
                            .font(.caption)
                        }
                        .padding(.horizontal)
                    }
                        
                        // Tags section
                        HStack {
                            TagView(tag: "UI Designer")
                            TagView(tag: "UX Designer")
                            TagView(tag: "Design System")
                            TagView(tag: "Product")
                            TagView(tag: "Successful")
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                    }
                    .padding(.top, 20)
                    Spacer()
                }
            }
        }
    }

struct TagView: View {
    var tag: String
    
    var body: some View {
        Text(tag)
            .font(.caption)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

struct ContentView: View {
    var body: some View {
        UserProfileView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
