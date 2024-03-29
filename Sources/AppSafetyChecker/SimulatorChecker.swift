//
//  File.swift
//  
//
//  Created by Narendra Dhami on 06/06/2023.
//

import Foundation

internal class SimulatorChecker {

    static func amIRunInSimulator() -> Bool {

        return checkCompile() || checkRuntime() || isDynamicInstrumentationDetected()
    }

    private static func checkRuntime() -> Bool {

        return ProcessInfo().environment["SIMULATOR_DEVICE_NAME"] != nil
    }
    
    private static func isDynamicInstrumentationDetected() -> Bool {
        // Check for the presence of environment variables used for dynamic instrumentation
        let envVariables = ProcessInfo.processInfo.environment
        let dyldInsertLibraries = envVariables["DYLD_INSERT_LIBRARIES"]
        if dyldInsertLibraries != nil {
            return true
        }
        
        return false
    }

    private static func checkCompile() -> Bool {

        #if targetEnvironment(simulator)
        return true
        #else
        return false
        #endif
    }

}
