//  AppSafetyChecker.swift
//
//  Created by Narendra Dhami on 25/05/21.
//

import Foundation
public class AppSafetyChecker{
    public init(){
        
    }
    
    //MARK: Device safety check
    public func isDeviceSafe() -> Bool {
        if JailbreakChecker.amIJailbroken() || ReverseEngineeringToolsChecker.amIReverseEngineered(){
            return true
            
        }else{
                if EmulatorChecker.amIRunInEmulator() || DebuggerChecker.amIDebugged(){
                    return true
                    
                }
    
            return false
            
        }
    }
}
