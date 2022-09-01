//
//  Copyright © 2018 Iterable. All rights reserved.
//

import Foundation

struct LocalStorage: LocalStorageProtocol {
    init(userDefaults: UserDefaults = UserDefaults.standard,
         keychain: IterableKeychain = IterableKeychain()) {
        iterableUserDefaults = IterableUserDefaults(userDefaults: userDefaults)
        self.keychain = keychain
    }
    
    var userId: String? {
        get {
            keychain.userId
        } set {
            keychain.userId = newValue
        }
    }
    
    var email: String? {
        get {
            keychain.email
        } set {
            keychain.email = newValue
        }
    }
    
    var authToken: String? {
        get {
            keychain.authToken
        } set {
            keychain.authToken = newValue
        }
    }
    
    var ddlChecked: Bool {
        get {
            iterableUserDefaults.ddlChecked
        } set {
            iterableUserDefaults.ddlChecked = newValue
        }
    }
    
    var deviceId: String? {
        get {
            iterableUserDefaults.deviceId
        } set {
            iterableUserDefaults.deviceId = newValue
        }
    }
    
    var sdkVersion: String? {
        get {
            iterableUserDefaults.sdkVersion
        } set {
            iterableUserDefaults.sdkVersion = newValue
        }
    }
    
    var offlineMode: Bool {
        get {
            iterableUserDefaults.offlineMode
        } set {
            iterableUserDefaults.offlineMode = newValue
        }
    }
    
    func getAttributionInfo(currentDate: Date) -> IterableAttributionInfo? {
        iterableUserDefaults.getAttributionInfo(currentDate: currentDate)
    }
    
    func save(attributionInfo: IterableAttributionInfo?, withExpiration expiration: Date?) {
        iterableUserDefaults.save(attributionInfo: attributionInfo, withExpiration: expiration)
    }
    
    func getLastPushPayload(_ currentDate: Date) -> [AnyHashable: Any]? {
        return keychain.getLastPushPayload(currentDate: currentDate)
    }
    
    func saveLastPushPayload(_ payload: [AnyHashable: Any]?, withExpiration expiration: Date?) {
        keychain.setLastPushPayload(payload, withExpiration: expiration)
    }
    
    func upgrade() {
        ITBInfo()
        
        /// moves `email`, `userId`, and `authToken` from `UserDefaults` to `IterableKeychain`
        moveAuthDataFromUserDefaultsToKeychain()
        
        /// moves `lastPushPayload` from `UserDefaults` to `IterableKeychain`
        moveLastPushPayloadFromUserDefaultsToKeychain()
    }
    
    // MARK: Private
    
    private let iterableUserDefaults: IterableUserDefaults
    private let keychain: IterableKeychain
    
    private func moveAuthDataFromUserDefaultsToKeychain() {
        // in the future, use the migration function from IterableUserDefaults like with the last push payload
        
        if let userDefaultAuthToken = iterableUserDefaults.authToken, keychain.authToken == nil {
            keychain.authToken = userDefaultAuthToken
            iterableUserDefaults.authToken = nil
            
            ITBInfo("UPDATED: moved authToken from UserDefaults to IterableKeychain")
        }
        
        if let userDefaultEmail = iterableUserDefaults.email, keychain.email == nil {
            keychain.email = userDefaultEmail
            iterableUserDefaults.email = nil
            
            ITBInfo("UPDATED: moved email from UserDefaults to IterableKeychain")
        }
        
        if let userDefaultUserId = iterableUserDefaults.userId, keychain.userId == nil {
            keychain.userId = userDefaultUserId
            iterableUserDefaults.userId = nil
            
            ITBInfo("UPDATED: moved userId from UserDefaults to IterableKeychain")
        }
    }
    
    private func moveLastPushPayloadFromUserDefaultsToKeychain() {
        if let (userDefaultLastPushPayload, expiration) = iterableUserDefaults.getLastPushPayloadAndExpirationPair() {
            keychain.setLastPushPayload(userDefaultLastPushPayload, withExpiration: expiration)
            
            ITBInfo("UPDATED: moved lastPushPayload from UserDefaults to IterableKeychain")
        }
    }
}
