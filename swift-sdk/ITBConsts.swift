//
//  ITBConsts.swift
//  new-ios-sdk
//
//  Created by Tapash Majumder on 6/10/18.
//  Copyright © 2018 Iterable. All rights reserved.
//

import Foundation

// Keys
public extension AnyHashable {
    public static let ITBL_KEY_API_KEY = "api_key"
    public static let ITBL_KEY_APPLICATION_NAME = "applicationName"
    public static let ITBL_KEY_CAMPAIGN_ID = "campaignId"
    public static let ITBL_KEY_COUNT = "count"
    public static let ITBL_KEY_CURRENT_EMAIL = "currentEmail"
    public static let ITBL_KEY_DATA_FIELDS = "dataFields"
    public static let ITBL_KEY_DEVICE = "device"
    public static let ITBL_KEY_EMAIL = "email"
    public static let ITBL_KEY_EMAIL_LIST_IDS = "emailListIds"
    public static let ITBL_KEY_EVENT_NAME = "eventName"
    public static let ITBL_KEY_ITEMS = "items"
    public static let ITBL_KEY_MERGE_NESTED = "mergeNestedObjects"
    public static let ITBL_KEY_MESSAGE_ID = "messageId"
    public static let ITBL_KEY_NEW_EMAIL = "newEmail"
    public static let ITBL_KEY_PLATFORM = "platform"
    public static let ITBL_KEY_SDK_VERSION = "SDKVersion"
    public static let ITBL_KEY_TOKEN = "token"
    public static let ITBL_KEY_TEMPLATE_ID = "templateId"
    public static let ITBL_KEY_TOTAL = "total"
    public static let ITBL_KEY_UNSUB_CHANNEL = "unsubscribedChannelIds"
    public static let ITBL_KEY_UNSUB_MESSAGE = "unsubscribedMessageTypeIds"
    public static let ITBL_KEY_USER = "user"
    public static let ITBL_KEY_USER_ID = "userId"
    public static let ITBL_KEY_ACTION_IDENTIFIER = "actionIdentifier"
    public static let ITBL_KEY_USER_TEXT = "userText"
}

// More Keys
public extension String {
    public static let ITBL_KEY_GET = "GET"
    public static let ITBL_KEY_POST = "POST"
    
    public static let ITBL_KEY_APNS = "APNS"
    public static let ITBL_KEY_APNS_SANDBOX = "APNS_SANDBOX"
    public static let ITBL_KEY_PAD = "Pad"
    public static let ITBL_KEY_PHONE = "Phone"
    public static let ITBL_KEY_UNSPECIFIED = "Unspecified"
}

// Misc Values
public extension String {
    public static let ITBL_VALUE_DEFAULT_PUSH_OPEN_ACTION_ID = "default"
    public static let ITBL_PLATFORM_IOS = "iOS"
    public static let ITBL_DEEPLINK_IDENTIFIER = "/a/[a-zA-Z0-9]+"
}

// Decvice Dictionary
public extension String {
    public static let ITBL_DEVICE_LOCALIZED_MODEL = "localizedModel"
    public static let ITBL_DEVICE_ID_VENDOR = "identifierForVendor"
    public static let ITBL_DEVICE_MODEL = "model"
    public static let ITBL_DEVICE_SYSTEM_NAME = "systemName"
    public static let ITBL_DEVICE_SYSTEM_VERSION = "systemVersion"
    public static let ITBL_DEVICE_USER_INTERFACE = "userInterfaceIdiom"

    public static let ITBL_DEVICE_DEVICE_ID = "deviceId"
    public static let ITBL_DEVICE_APP_PACKAGE_NAME = "appPackageName"
    public static let ITBL_DEVICE_APP_VERSION = "appVersion"
    public static let ITBL_DEVICE_APP_BUILD = "appBuild"
    public static let ITBL_DEVICE_ITERABLE_SDK_VERSION = "iterableSdkVersion"
}

// API Endpoint Key Constants
public extension String {
    public static let ITBL_ENDPOINT_COMMERCE_TRACK_PURCHASE = "commerce/trackPurchase"
    public static let ITBL_ENDPOINT_DISABLE_DEVICE = "users/disableDevice"
    public static let ITBL_ENDPOINT_GET_INAPP_MESSAGES = "inApp/getMessages"
    public static let ITBL_ENDPOINT_INAPP_CONSUME = "events/inAppConsume"
    public static let ITBL_ENDPOINT_REGISTER_DEVICE_TOKEN = "users/registerDeviceToken"
    public static let ITBL_ENDPOINT_TRACK = "events/track"
    public static let ITBL_ENDPOINT_TRACK_INAPP_CLICK = "events/trackInAppClick"
    public static let ITBL_ENDPOINT_TRACK_INAPP_OPEN = "events/trackInAppOpen"
    public static let ITBL_ENDPOINT_TRACK_PUSH_OPEN = "events/trackPushOpen"
    public static let ITBL_ENDPOINT_UPDATE_USER = "users/update"
    public static let ITBL_ENDPOINT_UPDATE_EMAIL = "users/updateEmail"
    public static let ITBL_ENDPOINT_UPDATE_SUBSCRIPTIONS = "users/updateSubscriptions"
    public static let ITBL_ENDPOINT_DDL_MATCH = "a/matchFp" //DDL = Deferred Deep Linking
}

// Push Payload
public extension AnyHashable {
    public static let ITBL_PAYLOAD_METADATA = "itbl"
    public static let ITBL_PAYLOAD_MESSAGE_ID = "messageId"
    public static let ITBL_PAYLOAD_DEEP_LINK_URL = "url"
    public static let ITBL_PAYLOAD_ATTACHMENT_URL = "attachment-url"
    public static let ITBL_PAYLOAD_ACTION_BUTTONS = "actionButtons"
    public static let ITBL_PAYLOAD_DEFAULT_ACTION = "defaultAction"
}

@objcMembers public class ITBConsts : NSObject {
    // the API endpoint
    public static let apiEndpoint = apiHostname + "/api/"
    public static let linksEndpoint = linksHostname + "/"

    public class Button {
        public static let identifier = ITBL_BUTTON_IDENTIFIER
        public static let type = ITBL_BUTTON_TYPE
        public static let title = ITBL_BUTTON_TITLE
        public static let openApp = ITBL_BUTTON_OPEN_APP
        public static let requiresUnlock = ITBL_BUTTON_REQUIRES_UNLOCK
        public static let inputTitle = ITBL_BUTTON_INPUT_TITLE
        public static let inputPlaceholder = ITBL_BUTTON_INPUT_PLACEHOLDER
        public static let action = ITBL_BUTTON_ACTION
    }
    
    private static let apiHostname = "https://api.iterable.com"
    private static let linksHostname = "https://links.iterable.com"
}
