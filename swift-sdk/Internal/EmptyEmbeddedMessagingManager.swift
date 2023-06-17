//
//  Copyright © 2023 Iterable. All rights reserved.
//

import Foundation

class EmptyEmbeddedMessagingManager: IterableEmbeddedMessagingManagerProtocol {
    
    func addUpdateListener(_ listener: IterableEmbeddedMessagingUpdateDelegate) {
        
    }
    
    func removeUpdateListener(_ listener: IterableEmbeddedMessagingUpdateDelegate) {
        
    }
    
    func getMessages() -> [IterableEmbeddedMessage] {
        return []
    }
    
    func start() {
        
    }
    
    func stop() {
        
    }
    
    func temp_manualOverrideRefresh() {
        
    }
    
    func track(click message: IterableEmbeddedMessage, clickType: String) {
            
    }
    
    func track(impression message: IterableEmbeddedMessage) {
        
    }
    
    func track(embeddedSession: IterableEmbeddedSession) {
        
    }
}
