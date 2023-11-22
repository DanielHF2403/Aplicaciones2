//
//  TimerView.swift
//  Preferencias
//
//  Created by DanielHf on 06/11/23.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var timer = myTimer()
    
    var body: some View {
        VStack{
            
            Text("\(timer.num)")
            
            HStack{
                Button(action: {
                    timer.start()
                }){
                    Image(systemName: "play.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.green)
                    
                }
                
                Button(action: {
                    timer.stop()
                }){
                    Image(systemName: "stop.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.red)
                    
                }
                
                
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
