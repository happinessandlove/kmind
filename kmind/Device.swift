#if os(iOS)
import UIKit
#endif
enum Device {
    case mac, iPad, iPhone
    
    static var current: Device {
        #if os(macOS)
        return .mac
        #elseif os(iOS)
        if UIDevice.current.userInterfaceIdiom == .pad {
            return .iPad
        } else {
            return .iPhone
        }
        #endif
    }
}
