//
//  ContentView.swift
//  Maen Suwit
//
//  Created by Fauzi Achmad Bangsa Diria on 20/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

extension Color {
    
    static let blackCoral = Color("blackCoral")
    static let lightCyan = Color("lightCyan")
    static let middleGreen = Color("middleGreen")
    static let mintTea = Color("mintTea")
    static let softGrey = Color("softGrey")
    
}

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var currentPlayer: String? = nil
    @State private var score1 = 0
    @State private var score2 = 0
    @State private var items = ["Gunting","Batu","Kertas"]
    @State private var itemSavedBot = ""
    @State private var itemSavedPlayer = ""
    @State private var winner = ""
    
    
    func itemPicked(_ item: String) {
        
        itemSavedPlayer = item
        print("Player Choose: \(itemSavedPlayer)")
        
    }
    
    func checkPoint(_ playerSc: Int, _ botSc: Int) {
        
        if playerSc > 5 || botSc > 5 {
            
            showingAlert = true
            
            if playerSc > 5 {
                winner = "Player"
            }else{
                winner = "Bot"
            }
            
        }
        
    }
    
    func comparation(_ item1: String, _ item2: String) {
        
        enum Items: String {
            
            case gunting = "Gunting"
            case kertas = "Kertas"
            case batu = "Batu"
            
        }
        
        if item1 == Items.gunting.rawValue && item2 == Items.kertas.rawValue {
            
            score1 += 1
            
        }
            
        else if item1 == Items.gunting.rawValue && item2 == Items.batu.rawValue {
            
            score2 += 1
            
        }
            
        else if item1 == Items.kertas.rawValue && item2 == Items.gunting.rawValue {
            
            score2 += 1
            
        }
            
        else if item1 == Items.kertas.rawValue && item2 == Items.batu.rawValue {
            
            score1 += 1
            
        }
            
        else if item1 == Items.batu.rawValue && item2 == Items.kertas.rawValue {
            
            score2 += 1
            
        }
            
        else if item1 == Items.batu.rawValue && item2 == Items.gunting.rawValue {
            
            score1 += 1
            
        }
        
    }
    
    
    var body: some View {
        ZStack {
            
            Color("middleGreen")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:60) {
                
                Text("\(currentPlayer ?? "") Main Suwit!")
                    .foregroundColor(Color("blackCoral"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                HStack(spacing: 100) {
                    VStack(spacing: 10) {
                        Text("Player")
                            .fontWeight(.bold)
                        Text("\(score1)")
                            .foregroundColor(Color("softGrey"))
                            .fontWeight(.bold)
                            .font(.title)
                    }
                    
                    VStack(spacing: 10) {
                        Text("Bot")
                            .fontWeight(.bold)
                        Text("\(score2)")
                            .foregroundColor(Color("softGrey"))
                            .fontWeight(.bold)
                            .font(.title)
                    }
                    
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            
            VStack(spacing:20) {
                
                HStack(spacing: 45){
                    
                    ForEach(0..<3) { item in
                        
                        Button(action: {
                            
                            self.itemPicked(self.items[item])
                            self.itemSavedBot = self.items[Int.random(in: 0...2)]
                            print("Bot Choose: \(self.itemSavedBot)")
                            self.comparation(self.itemSavedPlayer, self.itemSavedBot)
                            self.checkPoint(self.score1, self.score2)
                            
                        }){
                            
                            Image(self.items[item])
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 75, height: 75)
                            
                        }
                        
                    }
                    
                }
            }
        } .alert(isPresented: $showingAlert) {
            Alert(title: Text("scoreTitle"), message: Text("The winner is \(winner)!"), dismissButton: .default(Text("Click to Play Again")) {
                self.showingAlert = false
                self.score1 = 0
                self.score2 = 0
                })
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
