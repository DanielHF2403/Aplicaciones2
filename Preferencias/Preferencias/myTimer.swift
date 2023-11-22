//
//  myTimer.swift
//  Preferencias
//
//  Created by DanielHf on 06/11/23.
//

import Foundation

class myTimer: ObservableObject{
    @Published var num: Int
    var timer = Timer()
    
    init(){
        self.num = 0
    }
    
    func start(){
        //cada 2 segundos aumentará en 1
        self.timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true){
            (timer) in
            self.num = self.num + 1
        }
    }
    
    func stop(){
        timer.invalidate()
    }
    
}
