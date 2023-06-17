public struct AppSafetyChecker {
    
    //Jailbroken Check
    public func isDeviceJailBreak() -> Bool{
        JailbreakChecker().amIJailbroken()
    }
    
    //Simulator Check
    public func isRunningOnSimulator() -> Bool{
        SimulatorChecker().amIRunInSimulator()
    }
}
