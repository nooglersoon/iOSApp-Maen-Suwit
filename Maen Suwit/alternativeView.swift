////
////  ContentView.swift
////  Maen Suwit
////
////  Created by Fauzi Achmad Bangsa Diria on 20/06/20.
////  Copyright © 2020 nooglersoon. All rights reserved.
////
//
//import SwiftUI
//
//extension Color {
//    
//    static let blackCoral = Color("blackCoral")
//    static let lightCyan = Color("lightCyan")
//    static let middleGreen = Color("middleGreen")
//    static let mintTea = Color("mintTea")
//    static let softGrey = Color("softGrey")
//    
//}
//
//struct ContentView: View {
//    
//    @State private var showingAlert = true
//    @State private var currentPlayer: String? = nil
//    @State private var score1 = 0
//    @State private var score2 = 0
//    @State private var items = ["Gunting","Batu","Kertas"]
//    @State private var status = []
//    @State private var itemSavedBot = ""
//    @State private var itemSavedPlayer = ""
//    
//    func randomCurrentPlayer () -> String {
//        
//        //let currentPlayer = ""
//        let randomNum = Int.random(in: 0...1)
//        
//        if randomNum == 0 {
//            
//            print("Bot Play First")
//            return "Bot"
//            
//        }else{
//            
//            print("You Play First")
//            return "Player"
//            
//        }
//        
//    }
//    
//    func checkPlayer() {
//        
//        if currentPlayer == "Bot" {
//            
//            itemSavedBot = items[Int.random(in: 0...2)]
//            print("Bot Choose: \(itemSavedBot)")
//            
//        }else{
//            
//            print("Player choose items!")
//            
//        }
//        
//    }
//    
//    func itemClicked(_ item: String) {
//
//        itemSavedPlayer = item
//        print("Player Choose: \(itemSavedPlayer)")
//
//    }
//    
//    
//    var body: some View {
//        ZStack {
//            
//            Color("middleGreen")
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack(spacing:60) {
//                
//                Text("\(currentPlayer ?? "") Main Suwit!")
//                    .foregroundColor(Color("blackCoral"))
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding(.top)
//                
//                HStack(spacing: 100) {
//                    VStack(spacing: 10) {
//                        Text("Player One")
//                            .fontWeight(.bold)
//                        Text("\(score1)")
//                            .foregroundColor(Color("softGrey"))
//                            .fontWeight(.bold)
//                            .font(.title)
//                    }
//                    
//                    VStack(spacing: 10) {
//                        Text("Player Two")
//                            .fontWeight(.bold)
//                        Text("\(score2)")
//                            .foregroundColor(Color("softGrey"))
//                            .fontWeight(.bold)
//                            .font(.title)
//                    }
//                    
//                    
//                }
//                    .foregroundColor(.white)
//                
//                Spacer()
//            }
////            .alert(isPresented: $currentPlayerAlert) {
////                        Alert(title: Text("Game is on!"), message: Text("\(currentPlayer ?? "No one play") is play first!"), dismissButton: .default(Text("Go!")) {
////                            print("Play!")
////                        })
////                    }
//            
//            VStack(spacing:20) {
//                
//                HStack(spacing: 45){
//                    
//                    ForEach(0..<3) { item in
//                        
//                        Button(action: {
//                            
//                            self.itemClicked(self.items[item])
//                            
//                        }){
//                            
//                            Image(self.items[item])
//                                .renderingMode(.original)
//                                .resizable()
//                                .frame(width: 75, height: 75)
//                            
//                        }
//                        
//                    }
//                    
//                    
//                }
//                
//                Text("Restart")
//                    .padding(.top)
//                
//            }
//        } .alert(isPresented: $showingAlert) {
//                        Alert(title: Text("scoreTitle"), message: Text("Welcome to the game!"), dismissButton: .default(Text("Click to Play")) {
//                            self.showingAlert = false
//                            self.currentPlayer = self.randomCurrentPlayer()
//                            self.checkPlayer()
//                        })
//                    }
//
//    }
//    
//    
//}
//
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
